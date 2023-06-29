import '/backend/backend.dart';
import '/components/navi/navi_widget.dart';
import '/components/sea_filter_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeaModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController1;
  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;
  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController3;
  int get pageViewCurrentIndex3 => pageViewController3 != null &&
          pageViewController3!.hasClients &&
          pageViewController3!.page != null
      ? pageViewController3!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController4;
  int get pageViewCurrentIndex4 => pageViewController4 != null &&
          pageViewController4!.hasClients &&
          pageViewController4!.page != null
      ? pageViewController4!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController5;
  int get pageViewCurrentIndex5 => pageViewController5 != null &&
          pageViewController5!.hasClients &&
          pageViewController5!.page != null
      ? pageViewController5!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController6;
  int get pageViewCurrentIndex6 => pageViewController6 != null &&
          pageViewController6!.hasClients &&
          pageViewController6!.page != null
      ? pageViewController6!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController7;
  int get pageViewCurrentIndex7 => pageViewController7 != null &&
          pageViewController7!.hasClients &&
          pageViewController7!.page != null
      ? pageViewController7!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController8;
  int get pageViewCurrentIndex8 => pageViewController8 != null &&
          pageViewController8!.hasClients &&
          pageViewController8!.page != null
      ? pageViewController8!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController9;
  int get pageViewCurrentIndex9 => pageViewController9 != null &&
          pageViewController9!.hasClients &&
          pageViewController9!.page != null
      ? pageViewController9!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController10;
  int get pageViewCurrentIndex10 => pageViewController10 != null &&
          pageViewController10!.hasClients &&
          pageViewController10!.page != null
      ? pageViewController10!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController11;
  int get pageViewCurrentIndex11 => pageViewController11 != null &&
          pageViewController11!.hasClients &&
          pageViewController11!.page != null
      ? pageViewController11!.page!.round()
      : 0;
  // Model for navi component.
  late NaviModel naviModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    naviModel = createModel(context, () => NaviModel());
  }

  void dispose() {
    unfocusNode.dispose();
    naviModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
