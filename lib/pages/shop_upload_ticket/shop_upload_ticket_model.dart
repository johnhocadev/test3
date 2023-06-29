import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/alart/alart_widget.dart';
import '/components/success/success_widget.dart';
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

class ShopUploadTicketModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];
  List<String> uploadedFileUrls1 = [];

  // State field(s) for TextField1 widget.
  TextEditingController? textField1Controller;
  String? Function(BuildContext, String?)? textField1ControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  DateTime? datePicked2;
  // State field(s) for TextField2 widget.
  TextEditingController? textField2Controller;
  String? Function(BuildContext, String?)? textField2ControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for TextField3 widget.
  TextEditingController? textField3Controller;
  String? Function(BuildContext, String?)? textField3ControllerValidator;
  // State field(s) for TextField4 widget.
  TextEditingController? textField4Controller;
  String? Function(BuildContext, String?)? textField4ControllerValidator;
  // State field(s) for TextField5 widget.
  TextEditingController? textField5Controller;
  String? Function(BuildContext, String?)? textField5ControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;
  DateTime? datePicked3;
  // State field(s) for TextField6 widget.
  TextEditingController? textField6Controller;
  String? Function(BuildContext, String?)? textField6ControllerValidator;
  // State field(s) for TextField7 widget.
  TextEditingController? textField7Controller;
  String? Function(BuildContext, String?)? textField7ControllerValidator;
  // State field(s) for TextField8 widget.
  TextEditingController? textField8Controller;
  String? Function(BuildContext, String?)? textField8ControllerValidator;
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

  // State field(s) for TextField9 widget.
  TextEditingController? textField9Controller;
  String? Function(BuildContext, String?)? textField9ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textField1Controller?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textField2Controller?.dispose();
    textField3Controller?.dispose();
    textField4Controller?.dispose();
    textField5Controller?.dispose();
    textController8?.dispose();
    textField6Controller?.dispose();
    textField7Controller?.dispose();
    textField8Controller?.dispose();
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
    textField9Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
