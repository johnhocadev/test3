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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_reports_model.dart';
export 'game_reports_model.dart';

class GameReportsWidget extends StatefulWidget {
  const GameReportsWidget({
    Key? key,
    this.contestref,
  }) : super(key: key);

  final DocumentReference? contestref;

  @override
  _GameReportsWidgetState createState() => _GameReportsWidgetState();
}

class _GameReportsWidgetState extends State<GameReportsWidget> {
  late GameReportsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameReportsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ContestRecord>(
      stream: ContestRecord.getDocument(widget.contestref!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingFour(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final gameReportsContestRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pop();
                                    },
                                    child: Icon(
                                      Icons.arrow_back_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).subtxt,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: SelectionArea(
                                            child: Text(
                                          '게임신고',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 21.0,
                                                fontWeight: FontWeight.bold,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: Color(0xFFDFDFDF),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.89,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 15.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    gameReportsContestRecord.title,
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 16.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: wrapWithModel(
                                  model: _model.contestEditModel,
                                  updateCallback: () => setState(() {}),
                                  child: ContestEditWidget(
                                    contestref: widget.contestref,
                                    title1: '신고할 게임 날짜 선택',
                                    title2: '신고할  게임 시간 선택',
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              height: 10.0,
                              thickness: 10.0,
                              color: FlutterFlowTheme.of(context).border,
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 20.0, 0.0, 0.0),
                                child: Text(
                                  '신고 내용 입력',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .impactTxt,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .displaySmallFamily),
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 15.0, 15.0, 0.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: [
                                    '부정 행위의 발견',
                                    '미이행된 게임',
                                    '상금 미지급',
                                    '기타',
                                    '점수 이의신청'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  width: 180.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                  hintText: '신고 유형을 선택해 주세요',
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 0.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.gameNContestFormModel,
                                updateCallback: () => setState(() {}),
                                child: GameNContestFormWidget(
                                  title: '제목입력',
                                  titleHint: '제목을 입력하세요',
                                  contents: '문의 내용',
                                  contentsHint: '최소 10자 이상 문의글을 입력해주세요.',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await widget.contestref!.update(createContestRecordData(
                          report: true,
                        ));

                        await ContestReportRecord.collection
                            .doc()
                            .set(createContestReportRecordData(
                              date: _model
                                  .contestEditModel.calendarSelectedDay?.start,
                              type: _model.dropDownValue,
                              title: _model
                                  .gameNContestFormModel.textController1.text,
                              contents: _model
                                  .gameNContestFormModel.textController2.text,
                              contestref: widget.contestref,
                              uploadUser: currentUserReference,
                              time: () {
                                if (_model.contestEditModel.checkboxValue1 ==
                                    true) {
                                  return _model.contestEditModel.checkboxValue1
                                      ?.toString();
                                } else if (_model
                                        .contestEditModel.checkboxValue2 ==
                                    true) {
                                  return _model.contestEditModel.checkboxValue2
                                      ?.toString();
                                } else if (_model
                                        .contestEditModel.checkboxValue3 ==
                                    true) {
                                  return _model.contestEditModel.checkboxValue3
                                      ?.toString();
                                } else if (_model
                                        .contestEditModel.checkboxValue4 ==
                                    true) {
                                  return _model.contestEditModel.checkboxValue4
                                      ?.toString();
                                } else {
                                  return _model.contestEditModel.checkboxValue5
                                      ?.toString();
                                }
                              }(),
                            ));
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Color(0x29000000),
                          barrierColor: Color(0x00000000),
                          enableDrag: false,
                          context: context,
                          builder: (context) {
                            return GestureDetector(
                              onTap: () => FocusScope.of(context)
                                  .requestFocus(_model.unfocusNode),
                              child: Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 1.0,
                                  child: SuccessWidget(
                                    title: '신고가 접수됐습니다',
                                    contents:
                                        '빠른 시일내로 확인하여 조치를 취하도록 하겠습니다. 감사합니다.',
                                    button: '확인',
                                  ),
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        context.pushNamed('MyGame_User');
                      },
                      text: '게임 신고하기',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).maincolor,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
