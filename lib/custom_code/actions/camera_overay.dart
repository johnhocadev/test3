// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:camera/camera.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:sensors_plus/sensors_plus.dart';

Future cameraOveray(BuildContext context) async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CameraScreen(camera: firstCamera),
    ),
  );
}

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;

  const CameraScreen({required this.camera});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  final deviceOrientationPlugin = DeviceOrientationPlugin();
  bool _isLevel = false;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.max,
      enableAudio: false,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );
    _initializeControllerFuture = _controller.initialize();
    deviceOrientationPlugin.onOrientationChange.listen((event) {
      final isLevel = event.y.abs() < 1 && event.x.abs() < 1;
      setState(() {
        _isLevel = isLevel;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                CameraPreview(_controller),
                CustomPaint(
                  painter: OutlinePainter(),
                  child: Container(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      _isLevel ? Icons.check : Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: _isLevel
            ? () async {
                try {
                  await _initializeControllerFuture;
                  final image = await _controller.takePicture();
                  final imagePath = image.path;

                  final savedImage = File(imagePath).readAsBytesSync();
                  await ImageGallerySaver.saveImage(savedImage,
                      quality: 90, name: "captured_image");

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('촬영이 완료되었습니다'),
                      duration: Duration(seconds: 2)));

                  Future.delayed(Duration(seconds: 2), () {
                    Navigator.pop(context);
                  });
                } catch (e) {
                  print(e);
                }
              }
            : null,
      ),
    );
  }
}

class OutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..shader = const LinearGradient(
              colors: [Colors.white, Colors.transparent],
              stops: [0.0, 0.5],
              tileMode: TileMode.repeated)
          .createShader(Rect.fromLTWH(0, 0, 5, size.height));
    final paragraphStyle = ui.ParagraphStyle(
      textAlign: TextAlign.center,
      fontSize: 24.0,
    );
    final paragraphBuilder = ui.ParagraphBuilder(paragraphStyle)
      ..pushStyle(ui.TextStyle(color: Colors.white))
      ..addText('평평한 곳에서 촬영해주세요');
    final paragraph = paragraphBuilder.build()
      ..layout(ui.ParagraphConstraints(width: size.width));

    canvas.drawParagraph(
        paragraph,
        Offset(
            0,
            MediaQueryData.fromWindow(WidgetsBinding.instance!.window)
                .padding
                .top));

    final hLinePath = Path()
      ..moveTo(0, size.height * 0.5)
      ..lineTo(size.width, size.height * 0.5);
    final vLinePath = Path()
      ..moveTo(size.width * 0.5, 0)
      ..lineTo(size.width * 0.5, size.height);
    canvas.drawPath(
        dashPath(hLinePath, dashArray: CircularIntervalList<double>([2, 5])),
        paint);
    canvas.drawPath(
        dashPath(vLinePath, dashArray: CircularIntervalList<double>([2, 5])),
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Path dashPath(
  Path source, {
  required CircularIntervalList<double> dashArray,
}) {
  const epsilon = 0.0001;
  final dashPath = Path();
  for (final pathMetric in source.computeMetrics()) {
    double distance = 0.0;
    bool draw = true;
    while (distance < pathMetric.length) {
      final length = dashArray.next;
      if (draw) {
        dashPath.addPath(
            pathMetric.extractPath(distance, distance + length), Offset.zero);
      }
      distance += length;
      draw = !draw;
    }
  }
  return dashPath;
}

class DeviceOrientationPlugin {
  late Stream<OrientationEvent> onOrientationChange;

  DeviceOrientationPlugin() {
    onOrientationChange = accelerometerEvents.map((event) {
      return OrientationEvent(event.x, event.y, event.z);
    });
  }
}

class OrientationEvent {
  final double x;
  final double y;
  final double z;

  OrientationEvent(this.x, this.y, this.z);
}
