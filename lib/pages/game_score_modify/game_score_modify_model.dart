import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/contest_edit_widget.dart';
import '/components/game_n_contest_form_widget.dart';
import '/components/success/success_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameScoreModifyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for contest_edit component.
  late ContestEditModel contestEditModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for GameNContestForm component.
  late GameNContestFormModel gameNContestFormModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contestEditModel = createModel(context, () => ContestEditModel());
    gameNContestFormModel = createModel(context, () => GameNContestFormModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contestEditModel.dispose();
    textController?.dispose();
    gameNContestFormModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
