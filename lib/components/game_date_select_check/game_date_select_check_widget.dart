import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_date_select_check_model.dart';
export 'game_date_select_check_model.dart';

class GameDateSelectCheckWidget extends StatefulWidget {
  const GameDateSelectCheckWidget({
    Key? key,
    this.contestref,
  }) : super(key: key);

  final DocumentReference? contestref;

  @override
  _GameDateSelectCheckWidgetState createState() =>
      _GameDateSelectCheckWidgetState();
}

class _GameDateSelectCheckWidgetState extends State<GameDateSelectCheckWidget> {
  late GameDateSelectCheckModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameDateSelectCheckModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 1.0,
      decoration: BoxDecoration(
        color: Color(0x5A000000),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<ContestRecord>(
            stream: ContestRecord.getDocument(widget.contestref!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFadingFour(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final containerContestRecord = snapshot.data!;
              return Container(
                width: MediaQuery.of(context).size.width * 0.93,
                constraints: BoxConstraints(
                  maxWidth: 400.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        '대회 일정 선택',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                      child: Text(
                        '기록된 대회 일정 중 보고싶은 일정을 선택해 주세요',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).maintxt,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 1.0,
                                decoration: BoxDecoration(),
                                child: FlutterFlowCalendar(
                                  color: FlutterFlowTheme.of(context).maintxt,
                                  weekFormat: true,
                                  weekStartsMonday: false,
                                  initialDate: getCurrentTimestamp,
                                  onChange: (DateTimeRange? newSelectedDate) {
                                    setState(() => _model.calendarSelectedDay =
                                        newSelectedDate);
                                  },
                                  titleStyle: TextStyle(),
                                  dayOfWeekStyle: TextStyle(),
                                  dateStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context).alltxt,
                                  ),
                                  selectedDateStyle: TextStyle(),
                                  inactiveDateStyle: TextStyle(),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              ),
                              Divider(
                                thickness: 1.0,
                                color: Color(0x801363DF),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 1.0,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(),
                                    child: Container(
                                      width: double.infinity,
                                      color: Colors.white,
                                      child: ExpandableNotifier(
                                        initialExpanded: false,
                                        child: ExpandablePanel(
                                          header: Text(
                                            '시간 선택',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .displaySmallFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .impactTxt,
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallFamily),
                                                ),
                                          ),
                                          collapsed: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1.0,
                                            height: 0.0,
                                            decoration: BoxDecoration(),
                                          ),
                                          expanded: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    containerContestRecord
                                                        .time1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 13.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                  Theme(
                                                    data: ThemeData(
                                                      checkboxTheme:
                                                          CheckboxThemeData(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                      ),
                                                      unselectedWidgetColor:
                                                          Color(0xFFC7C7C7),
                                                    ),
                                                    child: Checkbox(
                                                      value: _model
                                                              .checkboxValue1 ??=
                                                          false,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .checkboxValue1 =
                                                            newValue!);
                                                        if (newValue!) {
                                                          context.pushNamed(
                                                            'Game_broadcast_Transmission',
                                                            queryParameters: {
                                                              'contestref':
                                                                  serializeParam(
                                                                widget
                                                                    .contestref,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .impactTxt,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              if (containerContestRecord
                                                          .time2 !=
                                                      null &&
                                                  containerContestRecord
                                                          .time2 !=
                                                      '')
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      containerContestRecord
                                                          .time2,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 13.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0xFFC7C7C7),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValue2 ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .checkboxValue2 =
                                                              newValue!);
                                                          if (newValue!) {
                                                            context.pushNamed(
                                                              'Game_broadcast_Transmission',
                                                              queryParameters: {
                                                                'contestref':
                                                                    serializeParam(
                                                                  widget
                                                                      .contestref,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .impactTxt,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (containerContestRecord
                                                          .time3 !=
                                                      null &&
                                                  containerContestRecord
                                                          .time3 !=
                                                      '')
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      containerContestRecord
                                                          .time3,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 13.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0xFFC7C7C7),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValue3 ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .checkboxValue3 =
                                                              newValue!);
                                                          if (newValue!) {
                                                            context.pushNamed(
                                                              'Game_broadcast_Transmission',
                                                              queryParameters: {
                                                                'contestref':
                                                                    serializeParam(
                                                                  widget
                                                                      .contestref,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .impactTxt,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (containerContestRecord
                                                          .time4 !=
                                                      null &&
                                                  containerContestRecord
                                                          .time4 !=
                                                      '')
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      containerContestRecord
                                                          .time4,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 13.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0xFFC7C7C7),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValue4 ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .checkboxValue4 =
                                                              newValue!);
                                                          if (newValue!) {
                                                            context.pushNamed(
                                                              'Game_broadcast_Transmission',
                                                              queryParameters: {
                                                                'contestref':
                                                                    serializeParam(
                                                                  widget
                                                                      .contestref,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .impactTxt,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (containerContestRecord
                                                          .time5 !=
                                                      null &&
                                                  containerContestRecord
                                                          .time5 !=
                                                      '')
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      containerContestRecord
                                                          .time5,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 13.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Theme(
                                                      data: ThemeData(
                                                        checkboxTheme:
                                                            CheckboxThemeData(
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                        ),
                                                        unselectedWidgetColor:
                                                            Color(0xFFC7C7C7),
                                                      ),
                                                      child: Checkbox(
                                                        value: _model
                                                                .checkboxValue5 ??=
                                                            false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .checkboxValue5 =
                                                              newValue!);
                                                          if (newValue!) {
                                                            context.pushNamed(
                                                              'Game_broadcast_Transmission',
                                                              queryParameters: {
                                                                'contestref':
                                                                    serializeParam(
                                                                  widget
                                                                      .contestref,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          }
                                                        },
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .impactTxt,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                            ],
                                          ),
                                          theme: ExpandableThemeData(
                                            tapHeaderToExpand: true,
                                            tapBodyToExpand: false,
                                            tapBodyToCollapse: false,
                                            headerAlignment:
                                                ExpandablePanelHeaderAlignment
                                                    .center,
                                            hasIcon: true,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
