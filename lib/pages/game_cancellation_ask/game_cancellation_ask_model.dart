import '/backend/backend.dart';
import '/components/contest_edit_widget.dart';
import '/components/game_n_contest_form_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameCancellationAskModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for contest_edit component.
  late ContestEditModel contestEditModel;
  // Model for GameNContestForm component.
  late GameNContestFormModel gameNContestFormModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contestEditModel = createModel(context, () => ContestEditModel());
    gameNContestFormModel = createModel(context, () => GameNContestFormModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contestEditModel.dispose();
    gameNContestFormModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
