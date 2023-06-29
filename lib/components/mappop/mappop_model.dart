import '/components/water_time_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MappopModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for WaterTime component.
  late WaterTimeModel waterTimeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    waterTimeModel = createModel(context, () => WaterTimeModel());
  }

  void dispose() {
    waterTimeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
