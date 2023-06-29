import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/alart/alart_widget.dart';
import '/components/success/success_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopUploadModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];
  List<String> uploadedFileUrls1 = [];

  // State field(s) for TextFiel1 widget.
  TextEditingController? textFiel1Controller;
  String? Function(BuildContext, String?)? textFiel1ControllerValidator;
  // State field(s) for TextFiel2 widget.
  TextEditingController? textFiel2Controller;
  String? Function(BuildContext, String?)? textFiel2ControllerValidator;
  // State field(s) for TextField3 widget.
  TextEditingController? textField3Controller;
  String? Function(BuildContext, String?)? textField3ControllerValidator;
  // State field(s) for TextField4 widget.
  TextEditingController? textField4Controller;
  String? Function(BuildContext, String?)? textField4ControllerValidator;
  // State field(s) for TextField5 widget.
  TextEditingController? textField5Controller;
  String? Function(BuildContext, String?)? textField5ControllerValidator;
  // State field(s) for TextField6 widget.
  TextEditingController? textField6Controller;
  String? Function(BuildContext, String?)? textField6ControllerValidator;
  // State field(s) for TextField7 widget.
  TextEditingController? textField7Controller;
  String? Function(BuildContext, String?)? textField7ControllerValidator;
  // State field(s) for TextField8 widget.
  TextEditingController? textField8Controller;
  String? Function(BuildContext, String?)? textField8ControllerValidator;
  // State field(s) for TextField9 widget.
  TextEditingController? textField9Controller;
  String? Function(BuildContext, String?)? textField9ControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for TextField10 widget.
  TextEditingController? textField10Controller;
  String? Function(BuildContext, String?)? textField10ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFiel1Controller?.dispose();
    textFiel2Controller?.dispose();
    textField3Controller?.dispose();
    textField4Controller?.dispose();
    textField5Controller?.dispose();
    textField6Controller?.dispose();
    textField7Controller?.dispose();
    textField8Controller?.dispose();
    textField9Controller?.dispose();
    textField10Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
