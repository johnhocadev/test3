import '/backend/backend.dart';
import '/components/mappop/mappop_widget.dart';
import '/components/mappopup_widget.dart';
import '/components/navi/navi_widget.dart';
import '/components/water_time_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage2CopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;
  // Model for WaterTime component.
  late WaterTimeModel waterTimeModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for navi component.
  late NaviModel naviModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    waterTimeModel = createModel(context, () => WaterTimeModel());
    naviModel = createModel(context, () => NaviModel());
  }

  void dispose() {
    unfocusNode.dispose();
    waterTimeModel.dispose();
    naviModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
