import '/components/water_time_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'check_scale_model.dart';
export 'check_scale_model.dart';

class CheckScaleWidget extends StatefulWidget {
  const CheckScaleWidget({
    Key? key,
    this.latlng,
  }) : super(key: key);

  final LatLng? latlng;

  @override
  _CheckScaleWidgetState createState() => _CheckScaleWidgetState();
}

class _CheckScaleWidgetState extends State<CheckScaleWidget> {
  late CheckScaleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckScaleModel());

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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).border,
              ),
              child: SingleChildScrollView(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: SelectionArea(
                                              child: AutoSizeText(
                                            '물때보기',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 21.0,
                                                  fontWeight: FontWeight.w600,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        constraints: BoxConstraints(
                          maxWidth: 1000.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).maincolor,
                          iconColor: Color(0xFF4B4B4B),
                          weekFormat: false,
                          weekStartsMonday: false,
                          initialDate: getCurrentTimestamp,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(() =>
                                _model.calendarSelectedDay = newSelectedDate);
                          },
                          titleStyle: TextStyle(
                            fontFamily: 'mice',
                            color: FlutterFlowTheme.of(context).alltxt,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                          dayOfWeekStyle: TextStyle(
                            fontFamily: 'mice',
                            color: FlutterFlowTheme.of(context).alltxt,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.0,
                          ),
                          dateStyle: TextStyle(
                            fontFamily: 'mice',
                            color: Color(0xFF525252),
                            fontWeight: FontWeight.normal,
                            fontSize: 13.0,
                          ),
                          selectedDateStyle: TextStyle(
                            fontFamily: 'mice',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0,
                          ),
                          inactiveDateStyle: TextStyle(
                            fontFamily: 'mice',
                            color: Color(0xFFB3B3B3),
                            fontWeight: FontWeight.w500,
                          ),
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.waterTimeModel,
                      updateCallback: () => setState(() {}),
                      child: WaterTimeWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
