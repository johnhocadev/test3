import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyTicketDetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];
  List<String> uploadedFileUrls1 = [];

  // State field(s) for titleF widget.
  TextEditingController? titleFController;
  String? Function(BuildContext, String?)? titleFControllerValidator;
  // State field(s) for openF widget.
  TextEditingController? openFController;
  String? Function(BuildContext, String?)? openFControllerValidator;
  DateTime? datePicked1;
  // State field(s) for endF widget.
  TextEditingController? endFController;
  String? Function(BuildContext, String?)? endFControllerValidator;
  DateTime? datePicked2;
  // State field(s) for businessDF widget.
  TextEditingController? businessDFController;
  String? Function(BuildContext, String?)? businessDFControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for callF widget.
  TextEditingController? callFController;
  String? Function(BuildContext, String?)? callFControllerValidator;
  // State field(s) for manufacF widget.
  TextEditingController? manufacFController;
  String? Function(BuildContext, String?)? manufacFControllerValidator;
  // State field(s) for areaF widget.
  TextEditingController? areaFController;
  String? Function(BuildContext, String?)? areaFControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  DateTime? datePicked3;
  // State field(s) for eventTF widget.
  TextEditingController? eventTFController;
  String? Function(BuildContext, String?)? eventTFControllerValidator;
  // State field(s) for eventPF widget.
  TextEditingController? eventPFController;
  String? Function(BuildContext, String?)? eventPFControllerValidator;
  // State field(s) for ori1PF widget.
  TextEditingController? ori1PFController;
  String? Function(BuildContext, String?)? ori1PFControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for infoF widget.
  TextEditingController? infoFController;
  String? Function(BuildContext, String?)? infoFControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    titleFController?.dispose();
    openFController?.dispose();
    endFController?.dispose();
    businessDFController?.dispose();
    callFController?.dispose();
    manufacFController?.dispose();
    areaFController?.dispose();
    textController8?.dispose();
    eventTFController?.dispose();
    eventPFController?.dispose();
    ori1PFController?.dispose();
    textController12?.dispose();
    textController13?.dispose();
    textController14?.dispose();
    textController15?.dispose();
    textController16?.dispose();
    textController17?.dispose();
    textController18?.dispose();
    textController19?.dispose();
    textController20?.dispose();
    textController21?.dispose();
    textController22?.dispose();
    textController23?.dispose();
    infoFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
