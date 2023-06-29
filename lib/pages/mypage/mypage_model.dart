import '/auth/firebase_auth/auth_util.dart';
import '/components/alart/alart_widget.dart';
import '/components/inquiry/inquiry_widget.dart';
import '/components/my_game/my_game_widget.dart';
import '/components/navi/navi_widget.dart';
import '/components/regist_place/regist_place_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MypageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var qrcode = '';
  // State field(s) for Switch widget.
  bool? switchValue;
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
