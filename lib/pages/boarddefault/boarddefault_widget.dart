import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navi/navi_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'boarddefault_model.dart';
export 'boarddefault_model.dart';

class BoarddefaultWidget extends StatefulWidget {
  const BoarddefaultWidget({Key? key}) : super(key: key);

  @override
  _BoarddefaultWidgetState createState() => _BoarddefaultWidgetState();
}

class _BoarddefaultWidgetState extends State<BoarddefaultWidget> {
  late BoarddefaultModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoarddefaultModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().postType = '1';
        FFAppState().postType2 = '바다 앨범';
        FFAppState().rank = '바다 조행기';
        FFAppState().rank2 = '바다 앨범';
      });
    });

    _model.textController ??= TextEditingController();
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
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 1.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            '피싱톡',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 21.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: MediaQuery.of(context).size.height * 0.92,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 1.0,
                                  height:
                                      MediaQuery.of(context).size.height * 0.95,
                                  decoration: BoxDecoration(),
                                  child: DefaultTabController(
                                    length: 4,
                                    initialIndex: 0,
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment(0.0, 0),
                                          child: TabBar(
                                            isScrollable: true,
                                            labelColor:
                                                FlutterFlowTheme.of(context)
                                                    .maincolor,
                                            unselectedLabelColor:
                                                FlutterFlowTheme.of(context)
                                                    .subcolor,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                            indicatorColor: Color(0xB86DADD8),
                                            tabs: [
                                              Tab(
                                                text: '조행기',
                                              ),
                                              Tab(
                                                text: '피싱앨범',
                                              ),
                                              Tab(
                                                text: '피싱포인트',
                                              ),
                                              Tab(
                                                text: '랭킹',
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            children: [
                                              Stack(
                                                children: [
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .postType =
                                                                        '1';
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 30.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '바다 조행기',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color: FFAppState().postType == '1'
                                                                                ? FlutterFlowTheme.of(context).alltxt
                                                                                : Color(0x8C1A1A1A),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .postType =
                                                                        '2';
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 30.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '민물 조행기',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color: FFAppState().postType == '2'
                                                                                ? FlutterFlowTheme.of(context).alltxt
                                                                                : Color(0x8C1A1A1A),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      10.0,
                                                                      15.0,
                                                                      5.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textController,
                                                            onFieldSubmitted:
                                                                (_) async {
                                                              await queryPostRecordOnce()
                                                                  .then(
                                                                    (records) => _model
                                                                            .simpleSearchResults =
                                                                        TextSearch(
                                                                      records
                                                                          .map(
                                                                            (record) =>
                                                                                TextSearchItem(record, [
                                                                              record.fishtype!,
                                                                              record.fishingplace!,
                                                                              record.location!,
                                                                              record.title!,
                                                                              record.contents!
                                                                            ]),
                                                                          )
                                                                          .toList(),
                                                                    )
                                                                            .search(_model
                                                                                .textController.text)
                                                                            .map((r) =>
                                                                                r.object)
                                                                            .toList(),
                                                                  )
                                                                  .onError((_,
                                                                          __) =>
                                                                      _model.simpleSearchResults =
                                                                          [])
                                                                  .whenComplete(() =>
                                                                      setState(
                                                                          () {}));
                                                            },
                                                            autofocus: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              hintText:
                                                                  '검색어를 입력해 주세요',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        fontSize:
                                                                            14.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFFDFDFDF),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            200.0),
                                                              ),
                                                              filled: true,
                                                              fillColor:
                                                                  Colors.white,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          15.0,
                                                                          20.0,
                                                                          15.0),
                                                              suffixIcon: Icon(
                                                                Icons.search,
                                                                color: Color(
                                                                    0xFF757575),
                                                                size: 18.0,
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                            validator: _model
                                                                .textControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                        if ((FFAppState()
                                                                    .postType ==
                                                                '1') &&
                                                            (_model.textController
                                                                        .text ==
                                                                    null ||
                                                                _model.textController
                                                                        .text ==
                                                                    ''))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        55.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    PostRecord>>(
                                                              stream:
                                                                  queryPostRecord(
                                                                queryBuilder: (postRecord) =>
                                                                    postRecord.where(
                                                                        'postType',
                                                                        isEqualTo:
                                                                            valueOrDefault<String>(
                                                                          '바다 조행기',
                                                                          '바다 조행기',
                                                                        )),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingFour(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<PostRecord>
                                                                    socialFeedPostRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                if (socialFeedPostRecordList
                                                                    .isEmpty) {
                                                                  return Center(
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/emptyPosts@2x.png',
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          400.0,
                                                                    ),
                                                                  );
                                                                }
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        socialFeedPostRecordList
                                                                            .length,
                                                                        (socialFeedIndex) {
                                                                      final socialFeedPostRecord =
                                                                          socialFeedPostRecordList[
                                                                              socialFeedIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(socialFeedPostRecord.userref!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final userPostUsersRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x32000000),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Stack(
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 2.0, 4.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: 200.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'otheruser',
                                                                                                          queryParameters: {
                                                                                                            'userref': serializeParam(
                                                                                                              userPostUsersRecord.reference,
                                                                                                              ParamType.DocumentReference,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Colors.white,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                                child: Container(
                                                                                                                  width: 25.0,
                                                                                                                  height: 25.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: CachedNetworkImage(
                                                                                                                    imageUrl: valueOrDefault<String>(
                                                                                                                      userPostUsersRecord.photoUrl,
                                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fishingzone-l1nhop/assets/3e9qw1fus74u/KakaoTalk_20221221_133510369_052(defalt).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              userPostUsersRecord.displayName,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'mice',
                                                                                                                    color: Color(0xFF090F13),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      socialFeedPostRecord.createtime!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'mice',
                                                                                                          color: FlutterFlowTheme.of(context).subtxt,
                                                                                                          fontSize: 10.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  )),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: true,
                                                                                                      ));
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.more_vert,
                                                                                                      color: Colors.black,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.96,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 6.0,
                                                                                                color: Color(0x3A000000),
                                                                                                offset: Offset(0.0, 2.0),
                                                                                              )
                                                                                            ],
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(
                                                                                                'boarddetail',
                                                                                                queryParameters: {
                                                                                                  'postdetail': serializeParam(
                                                                                                    socialFeedPostRecord.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );

                                                                                              await socialFeedPostRecord.reference.update({
                                                                                                'see': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              });
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                socialFeedPostRecord.photo.first,
                                                                                                width: double.infinity,
                                                                                                height: 270.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'boarddetail',
                                                                                                        queryParameters: {
                                                                                                          'postdetail': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );

                                                                                                      await socialFeedPostRecord.reference.update({
                                                                                                        'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      });
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      socialFeedPostRecord.contents,
                                                                                                      maxLines: 3,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                                            fontSize: 12.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == false)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up_outlined,
                                                                                                        color: Colors.black,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == true)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up,
                                                                                                        color: FlutterFlowTheme.of(context).subcolor,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        socialFeedPostRecord.like.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'boarddetail',
                                                                                                    queryParameters: {
                                                                                                      'postdetail': serializeParam(
                                                                                                        socialFeedPostRecord.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  await socialFeedPostRecord.reference.update({
                                                                                                    'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  });
                                                                                                },
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.receipt_rounded,
                                                                                                      color: Colors.black,
                                                                                                      size: 18.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        formatNumber(
                                                                                                          socialFeedPostRecord.comments.length,
                                                                                                          formatType: FormatType.decimal,
                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    color: Colors.black,
                                                                                                    size: 18.0,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        socialFeedPostRecord.see.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  if (socialFeedPostRecord.more == true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 1.0,
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 80.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                  height: 37.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                              more: false,
                                                                                                            ));
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.close,
                                                                                                            color: Colors.black,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 10.0,
                                                                                                  thickness: 1.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: false,
                                                                                                      ));

                                                                                                      context.pushNamed(
                                                                                                        'boardreport',
                                                                                                        queryParameters: {
                                                                                                          'postref': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 1.0,
                                                                                                      height: 37.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '게시물 신고',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 13.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if ((FFAppState()
                                                                    .postType ==
                                                                '바다 조행기') &&
                                                            (_model.simpleSearchResults
                                                                    .length >
                                                                0) &&
                                                            (_model.textController
                                                                        .text !=
                                                                    null &&
                                                                _model.textController
                                                                        .text !=
                                                                    ''))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        50.0,
                                                                        0.0,
                                                                        50.0),
                                                            child: Text(
                                                              '검색된 내용이 없습니다',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        if ((FFAppState()
                                                                    .postType ==
                                                                '1') &&
                                                            (_model.simpleSearchResults
                                                                    .length >
                                                                0))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        55.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final searchDefault = _model
                                                                    .simpleSearchResults
                                                                    .where((e) =>
                                                                        e.postType ==
                                                                        '바다 조행기')
                                                                    .toList();
                                                                if (searchDefault
                                                                    .isEmpty) {
                                                                  return Center(
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/emptyPosts@2x.png',
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          400.0,
                                                                    ),
                                                                  );
                                                                }
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        searchDefault
                                                                            .length,
                                                                        (searchDefaultIndex) {
                                                                      final searchDefaultItem =
                                                                          searchDefault[
                                                                              searchDefaultIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(currentUserReference!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final userPostUsersRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x32000000),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Stack(
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 2.0, 4.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: 200.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'otheruser',
                                                                                                          queryParameters: {
                                                                                                            'userref': serializeParam(
                                                                                                              userPostUsersRecord.reference,
                                                                                                              ParamType.DocumentReference,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Colors.white,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                                child: Container(
                                                                                                                  width: 25.0,
                                                                                                                  height: 25.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: CachedNetworkImage(
                                                                                                                    imageUrl: valueOrDefault<String>(
                                                                                                                      userPostUsersRecord.photoUrl,
                                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fishingzone-l1nhop/assets/3e9qw1fus74u/KakaoTalk_20221221_133510369_052(defalt).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              userPostUsersRecord.displayName,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'mice',
                                                                                                                    color: Color(0xFF090F13),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      userPostUsersRecord.createdTime!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'mice',
                                                                                                          color: FlutterFlowTheme.of(context).subtxt,
                                                                                                          fontSize: 10.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  )),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await searchDefaultItem.reference.update(createPostRecordData(
                                                                                                        more: true,
                                                                                                      ));
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.more_vert,
                                                                                                      color: Colors.black,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.96,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 6.0,
                                                                                                color: Color(0x3A000000),
                                                                                                offset: Offset(0.0, 2.0),
                                                                                              )
                                                                                            ],
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(
                                                                                                'boarddetail',
                                                                                                queryParameters: {
                                                                                                  'postdetail': serializeParam(
                                                                                                    searchDefaultItem.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );

                                                                                              await searchDefaultItem.reference.update({
                                                                                                'see': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              });
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                valueOrDefault<String>(
                                                                                                  searchDefaultItem.photo.first,
                                                                                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFhYYGRgaGRoYGhwaHBwaHBocGBwaGhoaHBkcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHzYrJCs0NDQ0NDQ3OjQ0NDY0NDQ0NDQ0NDQ2NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAECBQAGB//EAEIQAAEDAQUFBQUGAwcFAQAAAAEAAhEhAwQSMUEFUWFxkSKBobHBEzJC0fAGFBVSkuFTYvFygpOissLSIzNDVIMW/8QAGgEAAwEBAQEAAAAAAAAAAAAAAQIDAAQFBv/EACwRAAICAQQBAwMEAwEBAAAAAAABAhEDEiExQVEEE5EUImEycYGxocHw0UL/2gAMAwEAAhEDEQA/APDAIjbPerNYissiV1tnjxTYMWaI2zRhZEKQxTbOiKBfdlDLCsEHuTtnZuybKas7Bwgknup5qUsulcnTDDqa2M8XaBGLug16IYbAiDHHfrzC1bZobGI8Rx7okFDGzsZnGQ3SRPqkjlTVyHniadR5MllkX0ESMtCeUpm73VpPuOLm5tFZ+Sbsbr2h2yQDSRPr4K1/tiww2kjMUnpkmlNyemIIwjBa5f8AoG+3hrcIaxzSIzr45pS0tLW1IBdAkRoO7epfbue04+1uOoUPvTsIbQRSRnCeGDSlsr88k5+oUm2268cCF4syHOBMkE1zlCwo5E81GFdajSOCUrewN9mKQZVIRcKvZ2Bdl3o0bVYsGptrcA47vrSn1mrAhunaFD9bv2QHVqtQdVASFXCjYV2FajagOFQAjYVBatQdQHCoIRS1dhQoNgYR7s5oz8p6KmFRhQoKkVeamMpJAVIRIUEIUGwcKIRA1RhWDYKF0K5C4BAaykLgxFJVTZnclYyB4FytClAaz0TLNN2bIRW2au1ijKViwjpB4VZhjQImFSLNT+18ssm1wQLyRlA5Bc69PNJgcBVEFmiWNkCckFjhzQ/uz4sDZWY1E8SVa1vAALQOdSr2tm6rRl88whm6lOowvcVzlVJCRf0QbyMRyWj91O5Sy4ElWUox3ISU5KjH9nSFT2C9CzZRJgKbfZBaCT5I+/C6sV+km1dHmfZqpatu0ukJd91CsppnNLDJGXgV7MluUd/BNuuyo6wTppk2pIUdJMlUwps2J3Lhd3HIFHY1vwJ4V2FPfdXgThKCbIoWvI1S8CxaoITYu7johObFFrTDTXKAEKIRE1d9nPeMQEN/MQYPLehKSirY0Iym6SEW2RJgBHdciBJIndqmnbPc00MzoMz3LTu1h2YLADrJ9Fz5MtK48Hbi9PbqXJ5x11dExRCZYudkJ5LX2m+TgBJikD9s1o7JsmsZiOHEdDn4oSyuMNTRo4YzyaYvZcs8/wDcyBVpS7oyXpNoWzXDPuGSyGWbHTlTeQlxzclbQ+TFGL0xZnO4It2sGuJxEjuTdkGioAjfurCDebce60d9OGXRVVvaiLSW9gH4Q6hkBUe4nSAohc9xKOkVSKYBvC5RgO5chQbPolnc5RmXAL0thslrak9V1ta2bBDWr5xeqnP9KPb+lxwX3M8865Dco+6t3StUOxKSAM10RlKtyLjDoyGXFxNAmmbLj3inTatG9U9vOQVNWR8bIRLDHndi7rgNIVRdWjMpkMe6mQTFncmjMSitSW7N9rf2r5M1zG5CiJZOYIGGd56LTvIsh7raxVJPj8oCpFalwwSeh8oo+9xGFtBWDNe4JG9Xp7gQSI3QKDcNwTjmIYaJyH1zVoYoreiM8spbNmSbuTvV2bNc6DOc76RvWnaOIphAQzbPggT50Vm51tsRUcaf3WxSz2U0mpPT0Rm7Hzhp4VieoXXe8va6abqraZbOc2ZE5wBmOahlllj2dOCGGa43Mn8MYKFhmM5QX3CvZxU4la96tmNoXiZ0MxwV7C9siC5ue+hXPrzVe7OrRgvTsvg85ednPM5781nv2K81qvV329AGA5iXt9oNb2ILuQj+qriyZ3VIlkx+n31MwbvsRxFSRw4b0Z+wmxiAJprCfbtB1YDdxBryPJY9vtB5ccUluUAwPBWrM5W3/BC8CjSX8mbaXZocSRFchzqmLxfZGBgwNHXpomA6yJJLXchRZ16ZhyGeWqumpPdceTmlFwTaez8clbW9WgIJMRkQB8kF73E4nyfrgoaxzzBKJ7NwzEDzVo0ttrOaernei4tGnsss4caUJPmim9FjcOAYuWSYuwezJmeozI56Ito2kkAHjChNpSpq0deGMnC7pmBbPJMmVSyDZ7XnCdvLGzJPRIOaFaLclsqITSi93bIt3VIaZHDec4VRZnUKwdCq4ko0TbRXAoUhhK51mUGOvINcrwNy5Aa0fYL1f8fuzCWZZEmSnLO7tGQTIqvDjFRVRR6UnKTuTFjhbGFo5oTrOU2bOtFYWapGNAbbFGXUHNFwNbQBMAKuEbk6Quy4BOnSio9rimPZqfZFMkBtsTFmrYBu6pv2KKLNkVVNQFEziwnIKBdHRMapx9owUA8fRBt3vHuYusI+5X4/cyx35f7ADs+DL3tAioDhPKEJ7LBn5niNDQc4Q3tJqSBvkgmd0apC2tGNq8tkAmDMkDOG69y0pJrdt/tsFRae0Uvy9xw2zIhtkJmQau6kkAjgsy+2j3OkxXIARTgFn7a2iQx7WHtsIDwKQ14Imc6SMl5/8Uex+KamG5kzEn4vd3JHLTLZ/wCw/bKNSXxsepfZuHvA9PMoNvaNZOJw0A3EnKq8m/bdqXOGI1dJ4EmKd3kti0vdnDCRi7TgKgE4eyHTkZkmq6IZG1u6OeeJJ7I1GPY6INazu4VUPY4OnESchVKW98DHBuAAlrTU1BdlTqgmXGZOekhUSt7MVuo04mpbvs8zOKPhmPFKMcC0ww/2tVdpY0ASSddY4I4tQGSW4uE+MIyio+X/ACGEnPakl+wG7OaOyGEuPGiG+yBJJpGmfiEC2t8RpI4BDfaOgDLfGvNGMVeoWc2lpW4w68tbk1o8fNJvtGONX+is2yEVCA+wB4KkFFPZE8utxVsu6/EUa4wgOt3E1R2XVurgiRvhF10hYwdW5CL38ENlk4labgwV8IQPvcUDVlfg0tPbANuu/wAFYXUSodaPOdFQ2jlnfQIqKe6bGCwAZhJ2lnXMIoY46oT7MpEqfJaTTXGwPAFKiCuTbkvtPtjLumGWO5MizCq+0Yz3iBzXiJpHr6AIu642Co/bNgPink0/JI2/2lYKNB5wE6fgPtj/AN34KRZDcsZ/2immHwlCdtJzhIOATkcvALamug+yn2bvswr2OEZrzbr+4EnE0jcJhS/ahNRv4j1T230D20j01s+zZ2on15IDr9ZkSWiN59OK88b8Xc++qBery89kNgc5S6W9mMqXBp3jaIc/sRDdezPQZoN+2oM8R3QsVlmZ0/qii6CMwDqJVNEElYlzt7gL1tjACWM7Z92or3mvReKv19jsySAaEntAHtYTEanKN+S3/tBZNLgBLcLRiLgSwiTlA96sGNJ3Lzl5wScRa8iRSDyBpXLPNTlJOVJbCtSrdlL1fC44yCcWpmumeRp5Jd1nJrIJIOYyzMmKGDOVK5ojA8uiABAo4kw0wRxoRrXLvs5jiZ7EgjCABBg/EMpoiqjsKBcwAiXNEGgERMyJIoTXRMtvmEh8UazABDSI3QZw7yda70peLMMLpIxA44wmlTI4fsl7K9OAJgzGcbzWeFE6t7oVoadfHv7TnSZECKiJIA0AJJyrRNXa/vBaxrqn3iatqSSY3x5LIbe3OpAHhyiMk1dyWuYS3EBXLPLXdEGu8o7pitHorC9Bz8AoQATGR0odUzjcDQO+u5YthatJD7R5dUYWQR7uRMQG1kDOgK3blbuLZeYcawKwMhXuXTDJq2ZPTp4LmzdGJ7Tuignili0TUJm1tJzKXxDRXjwRdar/ALBvB0U2N1LjJoFdhB1j5b1z7zFG0Hr6plfQrp8kOsWTQlCt27lUlxyKhlm9xgAk7gK9Efy2C9qSIsrElMG7AZV9Fex2fafECBxRrSwA5pHJN7MeMGlbQq+yAGiWtGTotVlmyKqtq6zA3+JQWxm7MZzSENrcRAWm5oeYDSd0BGbsidD6oynGPIFilLgzPu44rlpHY/E/XeuSe7HyP9O/B9IdtxoPvNjMR6oF52yXfEwDdEzwlYb7i5uY8Z8lDLqTovC+w99Y2O3q9td7uX9kBKNvAkywERTeDvRm3J249ER2z3DMGN8GOqyyQjshvbb7M9r+CkvPctV2z2AT7Su7CfOVLLnZxJc6dwb6ynWeIHhM3E0CgI8fRDLxqtl1nYtBGAuOhkjwStrYiYFn5yVSOZeCbxMy3lT7TcnH3f8AkHX90J9mNG+qvHKmRlhYoXK7XkzWiJ7HgqvGEEkZVpVUWREniZ5e/wBuZdNCTLsx/ZMUh0TXcl7LAG0wh35g0AmAYrIE13V8jbSvDnv90tmk4cxUa6z5BBdiiGtALnDIQRGVPHfRcLlz+TOL4Qs5oxDEcUiaaSaV3UCs2zLTllQAVNYr2cweHHkjMs3N1aSJNakEHlUedeKUv2J/bJIAk5UA3Ytcgni1dMVxZzr0S5weCA4FmEAGQK13ZadV10FmHgvIgZ1kmtKRNBPSOIz2EHQk0zMjPTcaxRSLx2ogOa0GsOkcI6ieKtTEaL29mztYAWtJBgQ4ilCTQgZ0pHdKCxjnO7M9mJMwY3waxOvJGbenEQ4RJLfh1GRnhFc0IkYS0Nl+ISdR8MTGpI1iR1ZX2ZjF4LsVBioMpJnUGlDOq3fs697muDg4A1DtN0V4R0WNcL45gOBxaRQgETQaEic+K2LH7QBxnASSYgGgFKAUl2dSmxtJ2xGtjZddN7hVBfdA1w15I1naSJc3CTpOQ4nerttQNB31XWpMm4rwJW93DiIDp3wqM2W4/C7vBWrY3hs5dDHomrG9tGZjgBi8SVpTkuALHF8mM3ZpjKFBuj25Fw7/AJLfdtJujKccz4pW02g4mjGgcRJ80inN9DuEPyZ7bC0Iq4lMWFwxZ4vD1Kesb0Dm5g4RCM++WbcsTuSV5JXSQHCLXIqzZ4GYBHip/D2cUV20m6MPfVLWu0/5frognN9AcUkMjZwGQB70J7HigY3mf6JF+1uCWftKd6X28j5KRywjwh4sdwXLM++ncVyf2pG96Phnq2WRR2XcrWZs47vApmy2Ydx6L5N5ckv0o+hc8cezIZYIwu5XoLHZM6Qm27KbqVWPp8890iMvWQjweV+7FVNgBzXrLTZQ0SVtss7imlgz4+UZerhLk8y+zrKkPaB7gJ3kk+C2H7NI0PRLvuB3HohHLOPKK6scuzHe8n5adEFy13XE7j0QXXI8eitH1SXIHji+GZTgUJ9liBBEg0INQVs/cHHJDdcHbvBVXqkI8SPN3jY7SWlgDYIpkA3UNGQOS87bsiTil4MwNBQ0wkg1meS+iO2e7clLxsRrxDmAjPd5cys88G7slLA+j5xfLRrpDSJqcIGWnede9Ztvbuo1ziRGW41gV0yX0O+fY9rjLOwaZClO/PivNbW+z5s3GScRJLGjtZVBJimvTkr4s+NurOaeGa3aMq62bHtJczssaCSBEAua3Ea1NSJH5QobceyWmGFpFXEw7sl2EtAziu/IaqlnZHtAkFpYR2hTU4W1zOfAwt7Y9kzC976lsgOPumJbjroJAjU0AJyvKVb2SjDVsYD7Eua4kCGgEu3xIAFJrBO6ASut9nuFmLSjmurEGQAffO4RFeK9KPsk9zA6zdM1LcTCQPhBrBNK8oXP+x94ZhwODxmbMkd9C6o0kVqlXqMfkZ4J+GeWu9nm0gNcDJMVAp71Yw9oVqvXbDhzG4mQ/LEG0dNQZAy475W9s37ONaTaPswx50xB4AiKGhFCRmd2S07psmyszIY0HoPBI/VwTtMePpJcswnXad/RcbtHwleqxOiGYG8gShWli8/H0ZHqivXDv0h5c2B0C77q45leh+5O1eT3R81D9nA5Fw6D0VF62PkR+kZgNuQ1JVjdW7itn8K3kn+9+y78OERJ/UPkn+sj5E+ll4Mdt1bu6q33YGgf3ALROyAfiP6h8lLdktbrJ4u/ZH6qHkX6aXhGZbXFv5ilzcB+Y9QtwXFoM0HefVX9g0JH6zwOvSLujAFxbulQ66t/Kt51m3ghvsmfRW+rYX6WJi/d+C5a3sGb/Fct9WL9KvJ6q7/aGyc4NBBJyru7kez+09l+Zu7NfL7G2LXBwdBGRor+2MzirM6ZnyXiJTi9md+jHLlH1f8A/T2QEkjkDU8gnbttuyc0OxAToc18ksrSs4iUy3aBnPwCePq/UQ/S7/dG+jwyXaPp1vtpgyc3qs23+0DPzj9QXz+2vRk9pK2lsfzHwQlmzZP1MK9Nih+T3rtus/jN6hC/HbP+M3vIXgTbOHxf6VU2xNC6e5p80ntvtmbguj6F+N2f8Vn6mqDt6z/iM/UF88NufzeDVX74fzf5WlMsT8iPLFdH0Q7cs/zs/U35obtu2f8AEs/1N+a8A69wJLx+liF+JNyBn+4wplgf5B78fB9BO22fnZ+pvzQ3bZb+dn6h814B21BWmVTLBlnuVXbVH5f8gqmWD9wP1KXR7522G/mZ+ofNLXjaTHjC57CP7YGXEFeLbtIGKNkxEsGveiWt7cA0hjaua2rDWd1a0lMsMU90D6m9kiv2lGAl1kWYHva8YYJY9taRk0593AImzbe7tY4OkADssNSSRDnuIpjNY0APEqdp3O2ewNFmM57IDTkR+ZHs9nuMA2FkMqlrd2dHcFf3sehX/ZHU9Vpf4E7EXN1CX2ZBJxBxgg6U4Qt3ZjbswlwtS45lxtBloCAQCkvwloIxNu4HBpJ4HNENwHu4GROlmdeJePJJLNja3Hi5p7JG1abZsicIeKcQfJU/F7LW0WC7Z1hqyvAhvQNM+KO+yZh7LHEcCQepKT3MXhlNeTyjYbtiw/iDqiDbNl/Eb1C864gD/tGlILmz3klCLj/65/Wz5o3jfT+UD3ZLx8Hp37Ysv4jf1A+SE7bdj/E8/kvNHCf/AAV/tsnzUOsBrYOHO0aP9yZPEun8oV5snVfB6M7ZsfzjxVfxax/O3qvN/ddRZO3/APep5neqfh0z2CP/AKn/AIlOpYvz8oV5cn4+GerftaxiloyeBQDtaz/iN6rzDtnHL2bzytBH+ZgVfwon/wAb/wDEHmGJ9WH/AJoTXk/Hwb9427ZN+OeABJQW7fsT8ccw4eiwX7H3sf8A4oP+2VH4I38j53e1b/wRUsPn+hdeT8fB6EbYszUOceTXecKPxizyxHoR5rzp2IzWzf8A4jT/ALVQbGGjXj/6t/4plPD5A5ZPx8Hpfxmz3u6FQvP/AIQN1p+ti5HXhBeX/karrhHxgUGk117tyILgP4g49mvmutnWX8wJ0FIDaSZ+qdZYxgEknOO7TyHRedJyXL/wd0WvAT7m2ABacMtRnqiN2ewZvdu0AS7bRoBIEkCgpzBhVNs2p0BGpzjTp4JKm+yqmht9xYKlz91SPRVddbHUGTpJ5aKhthn8IqeORhS69YQcqA514R9bkKl5YJSVlzdbEfB5neDmeKKLCz+FrdPhG790ky/gmTQAd9T+0dUJ+1IJiIDZGn8ue+g6o6Mj8/JL3Imuyyboxs8Gj61TVnYNEOIAGcADXWgWM3aEAEUJDqmgBEUG8ZhJ2m1nOEyNAOZGKDwot7GTsDyx6N227RgsaRMdM5kZBcxrgSMI1qHb+7fRZ/3lwNfdMzlqaU/vFUtdoOa5rS7fUawASOpPRL7cnsLrSNhzCYkwOcfX7KHtI91zTQwDEcKrzL7y92JuLCYETqe0By+Fdcbw5zH4jVrYne4ESJy08Qn+nkldiPKnwjePtBOGHSYExSNeShrrYmHFjRA1qCZprGXHJZz2OmcYAJODdUZHvcf0orbNwIl2LsgH+VwcMQjvdHJBw26ApfuOPs7Qh0vaM4IJy0zH1Cm1uoc3C603wQY1GmvNIbYvWJpDYBNGgUB+jRYN32mXNBdIILh3TX16poYJyjqWxpZIxdVZ603RmEtBqKhxdWRMd+XRUfLIqTqd0ZT49Vg3PaIL3AmRhy3ENANdP3Kbu18o5pMlsRXJsD1RlhmuXYYzj0iPxIyWltRQ00xET5dUM2+ESWODR70ChJB1HHyRrO+NxzmYifriPBc6+QMLRll1lNVcRF/kqzaIc0gOwxJBNYBcAKdeiDa7QtWEyA4RJIEihiMs0le7tLnlhgQJMxAzoIP0FexJDg6pBDzzo3MaDXvVljhV/wCAOUuLGbLawcKhpIbOW768CjN2jijC0GRSBuzHPgpsm2Yh2EYi6QYEguHZ/wBUJyycA0iIFT3ihUZuC4RSEZS5YhaX5+eA0yMUnnFOXFLv2y8EjDSJJiYGp4rXe4ZmCDvyM19EnZ2TAc5EGBuznyWhKHcQSjJPZiA2w5wHZGKonCCDyPMFAG3H4jrUCgyynvWnaWbY7IndlSAMu8Qk3XNmKow5VrGcZd/Qq8Xi7iSlqXYSw2xLe1DXxOoHCaq1lfnPzDQQHGMR03btfDelrS4s94QTQDKNCJ5+qG+A2GtLezSo1qRx1R0QfCBql2PWd4I4yMw6R6eSg7QGIhwiJ78sjKzbm0AdmTEkgjKhjCFe83XJztDIaKGN+cHQwj7MXKmDU0tjcad7vBcsz78RRrwAMpLiuS+zEfWxYPcHYcyY7/2E+CfvLMDGucamRHE/sk9mvaJe6STl9ca9VO1L1jIrkYA7jJRkm5pfJeNRjbCuvPZGmSmzvMt5T1iQfNZL7UwGiJA9f6ojXgilAc/lCb2lQuvcaN/gEbumcH1Qn3+Zr9fU9UqGMqSZ8IUOawQ6RO7KhTrHHwJKboctbbCGxUms8IEf6p71T2ofAkjCCDTPFUQeZHgl3OGEVPZ1Gs0hVjs0HDOQPme5MoL+RNQW8XhxxaNgNb4z1wlAsbUuwj4QWgnlOLwJQbSQTOtBrTf0nqE0S2A0e7HeBiDnGeOHwVNKSFs0L7tCGkGZk+GKPRL3q+DCx5JkOkjgcJPi0JS0tQ4SYzB5zUjlUeCi8NlsSPdYeRJEjnkkjjiq2BKTZsvc1wDnZgjLNxAaIPcPFBdbYGvbSZcTGRILST0hZFpey1uGe0CTyMgmUve7apM7/GnkFo4Xw+AOR6KyvrXFg0a8UHCM+sqbttDFiIMO7XWQ6fErEuGLEJBiIG+HCCaeZ3I7IYXGZILRzh3mZahLDFbG1MdvN4c4up7hc5ncZ8WnySl8IBxNoXDLn73KvkVNm446SRJaN+4f6CO8IVrdy5pwkyDFCNKjMck0Uk0B7oi7PLHCQIoCd+LOupifBNXe1DYrmSJ4AQPEJK82TwGgNo2IgjvneSSVaytBIpGh1GZNE0opqwxdDlpeS2g3+hI8/Ephrz2CDV4cQNwaAJn1SBcJmJcXSBuA7ImO49wTTbYF1B2WgtBGgyA71KUduAxNi4M7JLqkhp/UMp70wBLSI7cQO/CVl3ZxAbipALTy0PgE269YW4hUihPA68siuWUG5WdEZJRohzYIbFQGkaRhIr0k9O477cTStTPeJ6Qs32xDsXCOUkV8UFloSXTqAR3A+oCZ49W4FPSqNJ1oHMwz+x/qCs2zvDhMmSCTT+UV6wpNqZdG7EOO8Jd7pNJrWe8UPMSnhBK0LKV0VtNoVDZNPnCZbecQ7jGp+qLLcBLS74pE6zQyqWFoYmktrO+pz7o8Vd4otbEtTvcu6/uOtdeeXoeiPZ30CPOcjmKRz8UC/wB3xOc5oHaz8CCgNs4bBkTB39/DJPpg0J9yZ6Cyt2hpeAGkCTG/cPPvS1vfA+ROVaf5oWS0OzDqdIp6rmWTsVCJ8ycq7+iHtLkbU+Bi0e6T2ehPzUqJe3smafy/JcsahhpDWiv1B/bqkbW2qTqMj9fWSHb2pJDeMeX7dEF5E0y39f2TRh2ykpdFy4xXI0C51o4TSef1yV7UzoZFGjKmhP1UohYS2ognOOHlVPt2LYmLyQTWd/rARBZ44wiIGek6gTU/snjs9pbJIB4Vk0pSJpx101o26iJLqDgAs5RXANwGEN95xP8ALNDOlPNNMeAJdoJgQAJybvjzp3CdYMEGSZ1cRWOAqQjWVk0ZwT7xpEcgMksmmgJiGBwInKZz11rqa5LrRzsOREkVNJn5DzWg6zyJhrQIA57zqqNcz3ezyzz7jVHX+DUI2BADiYkBsHdUT3wFL7eQTMZfLPKU8yzBAwtJHAwM8yTmuwMJHZgyTJnxJ0C2tXwCjIfBMgk7868aIlhYucQcm1k7hUresrkCyWgAukjQU3iajKg1hAvDgRDSRnWc9ThAGQ38dUyyrwDSDs7RrYDTGIu7ogTOtf8AUUJ1n/1cJzJp3BpE/pV2WAMENrhGf8xz6Sf73Rqxa3EXayQe+ngApylTbCogrqzC5zpmG0PeZ9Sg3R1XTlUmm6SSN/L+YIrC2CJkEEmfhHPXPJRdWYXE5iASfEeMIdOw+A/ssZAq0AAkAgVAEA65nxV32TSKgEZCJ41prQnvUOtGgS3I5nXsxmdUtYW5eSBnQ8wBHqkqTV9IOyLussMlrSSOOe6TnA4I9gSNMwCazU7uA9eCBeLfCYEkyY7svVAvFpBbwAPPEKdAjTktzXRpvvMNwxUgUmna180K7WggtdmWifr6ySftgQw7h5afW5Dxy5oncOpIM9FtFqjatxi7vPaBns05wdPBTZvJP1XJUu9tixtdn8p/bqua8UPEg0j3ZyA5DoUXHdm6CWlvEAZn6HkijtGBmTHUghZtpaEknODXurTzTV1eXOYQQIINdNSOaDhSs0ZW6IvD2+7mYNd1J9J7kFjW4eyTkR6/PqUS/gBxnJ1eWveEB1o0UH9fr0TxVxVCvkMWOpWY0OoGi032IcwtbSpjgZz4fIrGZawQek/PnC0rhegezvpP81frop5FKrXRXE43T7EHWD2AGBXjWh7QPy496m59p+FzYkEg6SBPotHFiBbkcxFK/I5dwS1jYk9ppqMRI3gUMfLgm12nYrhUlQ83awFHB0jOk+MLkpi5LlHRDwW1yMpo7Q50VmMgmawJI5ZDquXLsZBlrOzcTxyGXCeQqE9Z2AZJfWJpoYNcguXJHyB8Abxey9wkQ1uQGsxT90verWoOjaczEwNwpmuXJopWboHYsc5oMZzFYmPL903aS0BpoTU68Y+jquXISf3A6JYZMUkCunDPQDkVzWh5OKBwA467x81y5Kwl23QYjLpjhl+1OKq8hskAH+Z1SeA3DVSuSptvcPRZzn4ZxGog13zMDShhDNqGwBUnPPmPBcuRW5g7jAdSuZ5R8oEKGN7EcJpzPzXLknQRMUxDUSPTxB8AiWrwf+nkBEbpiIMbzP0Vy5WQnRNvaQ2gjCKdwED63Lru8AYoo5uXdJ9Vy5Kl9puyptgXEnMNBO4y0j18FXaEkAa4QejGz6rlyf8A+kHoDd5IbFOzTqf3UNtBIjIADjn9FcuTPli+Bp8NcaTJM98nPvUXmrQZ1P8ATrXvUrlPtDPsE6zqSdYNNJH9fBEu5iQNzT0OfSVy5Z8AXI7f7JuAPdIkUIrnQU7x16Yb7Nw60NMuq5cmxfpRp8jNozC1pNYiQcjJJPkegTTrL2ZMEzipy+oXLksn/sy7/gM58HENWg9+av7Ythw0cCeIdp4ELlylSLJhLa4SSW5Go0zquXLlHWy2lH//2Q==',
                                                                                                ),
                                                                                                width: double.infinity,
                                                                                                height: 270.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'boarddetail',
                                                                                                        queryParameters: {
                                                                                                          'postdetail': serializeParam(
                                                                                                            searchDefaultItem.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );

                                                                                                      await searchDefaultItem.reference.update({
                                                                                                        'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      });
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      searchDefaultItem.contents,
                                                                                                      maxLines: 3,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                                            fontSize: 12.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  if (searchDefaultItem.like.contains(currentUserReference) == false)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await searchDefaultItem.reference.update({
                                                                                                          'like': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up_outlined,
                                                                                                        color: Colors.black,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (searchDefaultItem.like.contains(currentUserReference) == true)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await searchDefaultItem.reference.update({
                                                                                                          'like': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up,
                                                                                                        color: FlutterFlowTheme.of(context).subcolor,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        searchDefaultItem.like.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'boarddetail',
                                                                                                    queryParameters: {
                                                                                                      'postdetail': serializeParam(
                                                                                                        searchDefaultItem.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  await searchDefaultItem.reference.update({
                                                                                                    'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  });
                                                                                                },
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.receipt_rounded,
                                                                                                      color: Colors.black,
                                                                                                      size: 18.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        formatNumber(
                                                                                                          searchDefaultItem.comments.length,
                                                                                                          formatType: FormatType.decimal,
                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    color: Colors.black,
                                                                                                    size: 18.0,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        searchDefaultItem.see.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  if (searchDefaultItem.more == true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 1.0,
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 80.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                  height: 37.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await searchDefaultItem.reference.update(createPostRecordData(
                                                                                                              more: false,
                                                                                                            ));
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.close,
                                                                                                            color: Colors.black,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 10.0,
                                                                                                  thickness: 1.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await searchDefaultItem.reference.update(createPostRecordData(
                                                                                                        more: false,
                                                                                                      ));

                                                                                                      context.pushNamed(
                                                                                                        'boardreport',
                                                                                                        queryParameters: {
                                                                                                          'postref': serializeParam(
                                                                                                            searchDefaultItem.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 1.0,
                                                                                                      height: 37.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '게시물 신고',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 13.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if ((FFAppState()
                                                                    .postType ==
                                                                '2') &&
                                                            (_model.simpleSearchResults
                                                                    .length <=
                                                                0) &&
                                                            (_model.textController
                                                                        .text ==
                                                                    null ||
                                                                _model.textController
                                                                        .text ==
                                                                    ''))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        55.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    PostRecord>>(
                                                              stream:
                                                                  queryPostRecord(
                                                                queryBuilder: (postRecord) => postRecord
                                                                    .where(
                                                                        'postType',
                                                                        isEqualTo:
                                                                            '민물 조행기')
                                                                    .orderBy(
                                                                        'createtime',
                                                                        descending:
                                                                            true),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingFour(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<PostRecord>
                                                                    socialFeedPostRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                if (socialFeedPostRecordList
                                                                    .isEmpty) {
                                                                  return Center(
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/emptyPosts@2x.png',
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          400.0,
                                                                    ),
                                                                  );
                                                                }
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        socialFeedPostRecordList
                                                                            .length,
                                                                        (socialFeedIndex) {
                                                                      final socialFeedPostRecord =
                                                                          socialFeedPostRecordList[
                                                                              socialFeedIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(socialFeedPostRecord.userref!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final userPostUsersRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x32000000),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Stack(
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 2.0, 4.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: 200.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'otheruser',
                                                                                                          queryParameters: {
                                                                                                            'userref': serializeParam(
                                                                                                              socialFeedPostRecord.userref,
                                                                                                              ParamType.DocumentReference,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Colors.white,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                                child: Container(
                                                                                                                  width: 25.0,
                                                                                                                  height: 25.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: CachedNetworkImage(
                                                                                                                    imageUrl: valueOrDefault<String>(
                                                                                                                      userPostUsersRecord.photoUrl,
                                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fishingzone-l1nhop/assets/3e9qw1fus74u/KakaoTalk_20221221_133510369_052(defalt).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              userPostUsersRecord.displayName,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'mice',
                                                                                                                    color: Color(0xFF090F13),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      socialFeedPostRecord.createtime!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'mice',
                                                                                                          color: FlutterFlowTheme.of(context).subtxt,
                                                                                                          fontSize: 10.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  )),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: true,
                                                                                                      ));
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.more_vert,
                                                                                                      color: Colors.black,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.96,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 6.0,
                                                                                                color: Color(0x3A000000),
                                                                                                offset: Offset(0.0, 2.0),
                                                                                              )
                                                                                            ],
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(
                                                                                                'boarddetail',
                                                                                                queryParameters: {
                                                                                                  'postdetail': serializeParam(
                                                                                                    socialFeedPostRecord.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );

                                                                                              await socialFeedPostRecord.reference.update({
                                                                                                'see': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              });
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                socialFeedPostRecord.photo.first,
                                                                                                width: double.infinity,
                                                                                                height: 270.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'boarddetail',
                                                                                                        queryParameters: {
                                                                                                          'postdetail': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );

                                                                                                      await socialFeedPostRecord.reference.update({
                                                                                                        'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      });
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      socialFeedPostRecord.contents,
                                                                                                      maxLines: 3,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                                            fontSize: 12.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == false)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up_outlined,
                                                                                                        color: Colors.black,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == true)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up,
                                                                                                        color: FlutterFlowTheme.of(context).subcolor,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        socialFeedPostRecord.like.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'boarddetail',
                                                                                                    queryParameters: {
                                                                                                      'postdetail': serializeParam(
                                                                                                        socialFeedPostRecord.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  await socialFeedPostRecord.reference.update({
                                                                                                    'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  });
                                                                                                },
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.receipt_rounded,
                                                                                                      color: Colors.black,
                                                                                                      size: 18.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        formatNumber(
                                                                                                          socialFeedPostRecord.comments.length,
                                                                                                          formatType: FormatType.decimal,
                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    color: Colors.black,
                                                                                                    size: 18.0,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        socialFeedPostRecord.see.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  if (socialFeedPostRecord.more == true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 1.0,
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 80.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                  height: 37.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                              more: false,
                                                                                                            ));
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.close,
                                                                                                            color: Colors.black,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 10.0,
                                                                                                  thickness: 1.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: false,
                                                                                                      ));

                                                                                                      context.pushNamed(
                                                                                                        'boardreport',
                                                                                                        queryParameters: {
                                                                                                          'postref': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 1.0,
                                                                                                      height: 37.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '게시물 신고',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 13.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if ((FFAppState()
                                                                    .postType ==
                                                                '2') &&
                                                            (_model.simpleSearchResults
                                                                    .length >
                                                                0) &&
                                                            (_model.textController
                                                                        .text !=
                                                                    null &&
                                                                _model.textController
                                                                        .text !=
                                                                    ''))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        50.0,
                                                                        0.0,
                                                                        50.0),
                                                            child: Text(
                                                              '검색된 내용이 없습니다',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        if ((FFAppState()
                                                                    .postType ==
                                                                '2') &&
                                                            (_model.simpleSearchResults
                                                                    .length >
                                                                0))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        55.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final searchDefault = _model
                                                                    .simpleSearchResults
                                                                    .where((e) =>
                                                                        e.postType ==
                                                                        '민물 조행기')
                                                                    .toList();
                                                                if (searchDefault
                                                                    .isEmpty) {
                                                                  return Center(
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/emptyPosts@2x.png',
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          400.0,
                                                                    ),
                                                                  );
                                                                }
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        searchDefault
                                                                            .length,
                                                                        (searchDefaultIndex) {
                                                                      final searchDefaultItem =
                                                                          searchDefault[
                                                                              searchDefaultIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: FutureBuilder<
                                                                            UsersRecord>(
                                                                          future:
                                                                              UsersRecord.getDocumentOnce(searchDefaultItem.userref!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final userPostUsersRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x32000000),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Stack(
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 2.0, 4.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: 200.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'otheruser',
                                                                                                          queryParameters: {
                                                                                                            'userref': serializeParam(
                                                                                                              userPostUsersRecord.reference,
                                                                                                              ParamType.DocumentReference,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Colors.white,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                                child: Container(
                                                                                                                  width: 25.0,
                                                                                                                  height: 25.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: CachedNetworkImage(
                                                                                                                    imageUrl: valueOrDefault<String>(
                                                                                                                      userPostUsersRecord.photoUrl,
                                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fishingzone-l1nhop/assets/3e9qw1fus74u/KakaoTalk_20221221_133510369_052(defalt).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              valueOrDefault<String>(
                                                                                                                userPostUsersRecord.displayName,
                                                                                                                '-',
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'mice',
                                                                                                                    color: Color(0xFF090F13),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      userPostUsersRecord.createdTime!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'mice',
                                                                                                          color: FlutterFlowTheme.of(context).subtxt,
                                                                                                          fontSize: 10.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  )),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await searchDefaultItem.reference.update(createPostRecordData(
                                                                                                        more: true,
                                                                                                      ));
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.more_vert,
                                                                                                      color: Colors.black,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.96,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 6.0,
                                                                                                color: Color(0x3A000000),
                                                                                                offset: Offset(0.0, 2.0),
                                                                                              )
                                                                                            ],
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(
                                                                                                'boarddetail',
                                                                                                queryParameters: {
                                                                                                  'postdetail': serializeParam(
                                                                                                    searchDefaultItem.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );

                                                                                              await searchDefaultItem.reference.update({
                                                                                                'see': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              });
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                '',
                                                                                                width: double.infinity,
                                                                                                height: 270.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'boarddetail',
                                                                                                        queryParameters: {
                                                                                                          'postdetail': serializeParam(
                                                                                                            searchDefaultItem.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );

                                                                                                      await searchDefaultItem.reference.update({
                                                                                                        'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      });
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      searchDefaultItem.contents,
                                                                                                      maxLines: 3,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                                            fontSize: 12.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  if (searchDefaultItem.like.contains(currentUserReference) == false)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await searchDefaultItem.reference.update({
                                                                                                          'like': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up_outlined,
                                                                                                        color: Colors.black,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (searchDefaultItem.like.contains(currentUserReference) == true)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await searchDefaultItem.reference.update({
                                                                                                          'like': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up,
                                                                                                        color: FlutterFlowTheme.of(context).subcolor,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        searchDefaultItem.like.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'boarddetail',
                                                                                                    queryParameters: {
                                                                                                      'postdetail': serializeParam(
                                                                                                        searchDefaultItem.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  await searchDefaultItem.reference.update({
                                                                                                    'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  });
                                                                                                },
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.receipt_rounded,
                                                                                                      color: Colors.black,
                                                                                                      size: 18.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        formatNumber(
                                                                                                          searchDefaultItem.comments.length,
                                                                                                          formatType: FormatType.decimal,
                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    color: Colors.black,
                                                                                                    size: 18.0,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        searchDefaultItem.see.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  if (searchDefaultItem.more == true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 1.0,
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 80.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                  height: 37.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await searchDefaultItem.reference.update(createPostRecordData(
                                                                                                              more: false,
                                                                                                            ));
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.close,
                                                                                                            color: Colors.black,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 10.0,
                                                                                                  thickness: 1.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await searchDefaultItem.reference.update(createPostRecordData(
                                                                                                        more: false,
                                                                                                      ));

                                                                                                      context.pushNamed(
                                                                                                        'boardreport',
                                                                                                        queryParameters: {
                                                                                                          'postref': serializeParam(
                                                                                                            searchDefaultItem.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 1.0,
                                                                                                      height: 37.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '게시물 신고',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 13.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.95, 0.95),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Color(0x00FFFFFF),
                                                      borderRadius: 30.0,
                                                      buttonSize: 50.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .maintxt,
                                                      icon: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'upload_post');
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .postType2 =
                                                                        '바다 앨범';
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 30.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '바다 앨범',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              FFAppState().postType2 == '바다 앨범' ? FlutterFlowTheme.of(context).alltxt : Color(0x8C1A1A1A),
                                                                              Color(0x8C1A1A1A),
                                                                            ),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    FFAppState()
                                                                            .postType2 =
                                                                        '민물 앨범';
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 100.0,
                                                                  height: 30.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '민물 앨범',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                valueOrDefault<Color>(
                                                                              FFAppState().postType2 == '민물 앨범' ? FlutterFlowTheme.of(context).alltxt : Color(0x8C1A1A1A),
                                                                              Color(0x8C1A1A1A),
                                                                            ),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        if (FFAppState()
                                                                .postType2 ==
                                                            '바다 앨범')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        55.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    PostRecord>>(
                                                              stream:
                                                                  queryPostRecord(
                                                                queryBuilder: (postRecord) => postRecord
                                                                    .where(
                                                                        'postType',
                                                                        isEqualTo:
                                                                            '바다 앨범')
                                                                    .orderBy(
                                                                        'createtime',
                                                                        descending:
                                                                            true),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingFour(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<PostRecord>
                                                                    socialFeedPostRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                if (socialFeedPostRecordList
                                                                    .isEmpty) {
                                                                  return Center(
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/emptyPosts@2x.png',
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          400.0,
                                                                    ),
                                                                  );
                                                                }
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        socialFeedPostRecordList
                                                                            .length,
                                                                        (socialFeedIndex) {
                                                                      final socialFeedPostRecord =
                                                                          socialFeedPostRecordList[
                                                                              socialFeedIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(socialFeedPostRecord.userref!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final userPostUsersRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x32000000),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Stack(
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 2.0, 4.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: 200.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'otheruser',
                                                                                                          queryParameters: {
                                                                                                            'userref': serializeParam(
                                                                                                              socialFeedPostRecord.userref,
                                                                                                              ParamType.DocumentReference,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Colors.white,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                                child: Container(
                                                                                                                  width: 25.0,
                                                                                                                  height: 25.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: CachedNetworkImage(
                                                                                                                    imageUrl: valueOrDefault<String>(
                                                                                                                      userPostUsersRecord.photoUrl,
                                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fishingzone-l1nhop/assets/3e9qw1fus74u/KakaoTalk_20221221_133510369_052(defalt).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              userPostUsersRecord.displayName,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'mice',
                                                                                                                    color: Color(0xFF090F13),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      socialFeedPostRecord.createtime!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'mice',
                                                                                                          color: FlutterFlowTheme.of(context).subtxt,
                                                                                                          fontSize: 10.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  )),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: true,
                                                                                                      ));
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.more_vert,
                                                                                                      color: Colors.black,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.96,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 6.0,
                                                                                                color: Color(0x3A000000),
                                                                                                offset: Offset(0.0, 2.0),
                                                                                              )
                                                                                            ],
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(
                                                                                                'boarddetail',
                                                                                                queryParameters: {
                                                                                                  'postdetail': serializeParam(
                                                                                                    socialFeedPostRecord.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );

                                                                                              await socialFeedPostRecord.reference.update({
                                                                                                'see': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              });
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                socialFeedPostRecord.photo.first,
                                                                                                width: double.infinity,
                                                                                                height: 270.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'boarddetail',
                                                                                                        queryParameters: {
                                                                                                          'postdetail': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );

                                                                                                      await socialFeedPostRecord.reference.update({
                                                                                                        'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      });
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      socialFeedPostRecord.contents,
                                                                                                      maxLines: 3,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                                            fontSize: 12.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == false)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up_outlined,
                                                                                                        color: Colors.black,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == true)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up,
                                                                                                        color: FlutterFlowTheme.of(context).subcolor,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        userPostUsersRecord.like.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'boarddetail',
                                                                                                    queryParameters: {
                                                                                                      'postdetail': serializeParam(
                                                                                                        socialFeedPostRecord.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  await socialFeedPostRecord.reference.update({
                                                                                                    'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  });
                                                                                                },
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.receipt_rounded,
                                                                                                      color: Colors.black,
                                                                                                      size: 18.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        formatNumber(
                                                                                                          socialFeedPostRecord.comments.length,
                                                                                                          formatType: FormatType.decimal,
                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    color: Colors.black,
                                                                                                    size: 18.0,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        socialFeedPostRecord.see.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  if (socialFeedPostRecord.more == true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 1.0,
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 80.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                  height: 37.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                              more: false,
                                                                                                            ));
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.close,
                                                                                                            color: Colors.black,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 10.0,
                                                                                                  thickness: 1.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: false,
                                                                                                      ));

                                                                                                      context.pushNamed(
                                                                                                        'boardreport',
                                                                                                        queryParameters: {
                                                                                                          'postref': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 1.0,
                                                                                                      height: 37.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '게시물 신고',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 13.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        if (FFAppState()
                                                                .postType2 ==
                                                            '민물 앨범')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        55.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    PostRecord>>(
                                                              stream:
                                                                  queryPostRecord(
                                                                queryBuilder: (postRecord) => postRecord
                                                                    .where(
                                                                        'postType',
                                                                        isEqualTo:
                                                                            '민물 앨범')
                                                                    .orderBy(
                                                                        'createtime',
                                                                        descending:
                                                                            true),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitFadingFour(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<PostRecord>
                                                                    socialFeedPostRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                if (socialFeedPostRecordList
                                                                    .isEmpty) {
                                                                  return Center(
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/emptyPosts@2x.png',
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          400.0,
                                                                    ),
                                                                  );
                                                                }
                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        socialFeedPostRecordList
                                                                            .length,
                                                                        (socialFeedIndex) {
                                                                      final socialFeedPostRecord =
                                                                          socialFeedPostRecordList[
                                                                              socialFeedIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child: StreamBuilder<
                                                                            UsersRecord>(
                                                                          stream:
                                                                              UsersRecord.getDocument(socialFeedPostRecord.userref!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final userPostUsersRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              width: MediaQuery.of(context).size.width * 1.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x32000000),
                                                                                    offset: Offset(0.0, 2.0),
                                                                                  )
                                                                                ],
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Stack(
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 2.0, 4.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: 200.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Stack(
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        context.pushNamed(
                                                                                                          'otheruser',
                                                                                                          queryParameters: {
                                                                                                            'userref': serializeParam(
                                                                                                              socialFeedPostRecord.userref,
                                                                                                              ParamType.DocumentReference,
                                                                                                            ),
                                                                                                          }.withoutNulls,
                                                                                                        );
                                                                                                      },
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Colors.white,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(20.0),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                                child: Container(
                                                                                                                  width: 25.0,
                                                                                                                  height: 25.0,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: CachedNetworkImage(
                                                                                                                    imageUrl: valueOrDefault<String>(
                                                                                                                      userPostUsersRecord.photoUrl,
                                                                                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/fishingzone-l1nhop/assets/3e9qw1fus74u/KakaoTalk_20221221_133510369_052(defalt).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                            child: Text(
                                                                                                              userPostUsersRecord.displayName,
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'mice',
                                                                                                                    color: Color(0xFF090F13),
                                                                                                                    fontSize: 14.0,
                                                                                                                    fontWeight: FontWeight.normal,
                                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                                  child: SelectionArea(
                                                                                                      child: Text(
                                                                                                    dateTimeFormat(
                                                                                                      'relative',
                                                                                                      socialFeedPostRecord.createtime!,
                                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'mice',
                                                                                                          color: FlutterFlowTheme.of(context).subtxt,
                                                                                                          fontSize: 10.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  )),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: true,
                                                                                                      ));
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.more_vert,
                                                                                                      color: Colors.black,
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 0.96,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.white,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 6.0,
                                                                                                color: Color(0x3A000000),
                                                                                                offset: Offset(0.0, 2.0),
                                                                                              )
                                                                                            ],
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.pushNamed(
                                                                                                'boarddetail',
                                                                                                queryParameters: {
                                                                                                  'postdetail': serializeParam(
                                                                                                    socialFeedPostRecord.reference,
                                                                                                    ParamType.DocumentReference,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                              );

                                                                                              await socialFeedPostRecord.reference.update({
                                                                                                'see': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              });
                                                                                            },
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                userPostUsersRecord.photoUrl,
                                                                                                width: double.infinity,
                                                                                                height: 270.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                width: MediaQuery.of(context).size.width * 1.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      context.pushNamed(
                                                                                                        'boarddetail',
                                                                                                        queryParameters: {
                                                                                                          'postdetail': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );

                                                                                                      await socialFeedPostRecord.reference.update({
                                                                                                        'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                      });
                                                                                                    },
                                                                                                    child: Text(
                                                                                                      socialFeedPostRecord.contents,
                                                                                                      maxLines: 3,
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                                            fontSize: 12.0,
                                                                                                            fontWeight: FontWeight.normal,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == false)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up_outlined,
                                                                                                        color: Colors.black,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (socialFeedPostRecord.like.contains(currentUserReference) == true)
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await socialFeedPostRecord.reference.update({
                                                                                                          'like': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        });
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.thumb_up,
                                                                                                        color: FlutterFlowTheme.of(context).subcolor,
                                                                                                        size: 18.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        userPostUsersRecord.like.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'boarddetail',
                                                                                                    queryParameters: {
                                                                                                      'postdetail': serializeParam(
                                                                                                        socialFeedPostRecord.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                  );

                                                                                                  await socialFeedPostRecord.reference.update({
                                                                                                    'see': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  });
                                                                                                },
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.receipt_rounded,
                                                                                                      color: Colors.black,
                                                                                                      size: 18.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        formatNumber(
                                                                                                          socialFeedPostRecord.comments.length,
                                                                                                          formatType: FormatType.decimal,
                                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                                        ),
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Container(
                                                                                              width: 100.0,
                                                                                              height: 40.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                children: [
                                                                                                  Icon(
                                                                                                    Icons.remove_red_eye_outlined,
                                                                                                    color: Colors.black,
                                                                                                    size: 18.0,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      formatNumber(
                                                                                                        socialFeedPostRecord.see.length,
                                                                                                        formatType: FormatType.decimal,
                                                                                                        decimalType: DecimalType.periodDecimal,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                            fontSize: 14.0,
                                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  if (socialFeedPostRecord.more == true)
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 1.0,
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 80.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            ),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: MediaQuery.of(context).size.width * 1.0,
                                                                                                  height: 37.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                                        child: InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                              more: false,
                                                                                                            ));
                                                                                                          },
                                                                                                          child: Icon(
                                                                                                            Icons.close,
                                                                                                            color: Colors.black,
                                                                                                            size: 18.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 10.0,
                                                                                                  thickness: 1.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      await socialFeedPostRecord.reference.update(createPostRecordData(
                                                                                                        more: false,
                                                                                                      ));

                                                                                                      context.pushNamed(
                                                                                                        'boardreport',
                                                                                                        queryParameters: {
                                                                                                          'postref': serializeParam(
                                                                                                            socialFeedPostRecord.reference,
                                                                                                            ParamType.DocumentReference,
                                                                                                          ),
                                                                                                        }.withoutNulls,
                                                                                                      );
                                                                                                    },
                                                                                                    child: Container(
                                                                                                      width: MediaQuery.of(context).size.width * 1.0,
                                                                                                      height: 37.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: Text(
                                                                                                          '게시물 신고',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 13.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    }),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.95, 0.95),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Color(0x00FFFFFF),
                                                      borderRadius: 30.0,
                                                      buttonSize: 50.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .maintxt,
                                                      icon: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'upload_post');
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: [
                                                  StreamBuilder<
                                                      List<RecommendRecord>>(
                                                    stream:
                                                        queryRecommendRecord(),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitFadingFour(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<RecommendRecord>
                                                          socialFeedRecommendRecordList =
                                                          snapshot.data!;
                                                      if (socialFeedRecommendRecordList
                                                          .isEmpty) {
                                                        return Center(
                                                          child: Image.asset(
                                                            'assets/images/emptyPosts@2x.png',
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5,
                                                            height: 400.0,
                                                          ),
                                                        );
                                                      }
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              socialFeedRecommendRecordList
                                                                  .length,
                                                              (socialFeedIndex) {
                                                            final socialFeedRecommendRecord =
                                                                socialFeedRecommendRecordList[
                                                                    socialFeedIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Colors
                                                                      .white,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: Color(
                                                                          0x32000000),
                                                                      offset: Offset(
                                                                          0.0,
                                                                          2.0),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                child: Stack(
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              8.0,
                                                                              2.0,
                                                                              4.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: 200.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      StreamBuilder<UsersRecord>(
                                                                                        stream: UsersRecord.getDocument(socialFeedRecommendRecord.uploadUser!),
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
                                                                                          final rowUsersRecord = snapshot.data!;
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                child: Card(
                                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                  color: Colors.white,
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(20.0),
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(1.0, 1.0, 1.0, 1.0),
                                                                                                    child: Container(
                                                                                                      width: 25.0,
                                                                                                      height: 25.0,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: CachedNetworkImage(
                                                                                                        imageUrl: rowUsersRecord.photoUrl,
                                                                                                        fit: BoxFit.cover,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  rowUsersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'mice',
                                                                                                        color: Color(0xFF090F13),
                                                                                                        fontSize: 14.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                                                                                    child: SelectionArea(
                                                                                        child: Text(
                                                                                      dateTimeFormat(
                                                                                        'relative',
                                                                                        socialFeedRecommendRecord.uploadDate!,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'mice',
                                                                                            color: FlutterFlowTheme.of(context).subtxt,
                                                                                            fontSize: 10.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    )),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        await socialFeedRecommendRecord.reference.update(createRecommendRecordData(
                                                                                          more: true,
                                                                                        ));
                                                                                      },
                                                                                      child: Icon(
                                                                                        Icons.more_vert,
                                                                                        color: Colors.black,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            await socialFeedRecommendRecord.reference.update({
                                                                              'seeUser': FieldValue.arrayUnion([
                                                                                currentUserReference
                                                                              ]),
                                                                            });
                                                                          },
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: MediaQuery.of(context).size.width * 0.96,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 6.0,
                                                                                        color: Color(0x3A000000),
                                                                                        offset: Offset(0.0, 2.0),
                                                                                      )
                                                                                    ],
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.network(
                                                                                      socialFeedRecommendRecord.photo.first,
                                                                                      width: double.infinity,
                                                                                      height: 270.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(2.0, 4.0, 0.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.of(context).size.width * 1.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                          child: Text(
                                                                                            socialFeedRecommendRecord.contents,
                                                                                            maxLines: 3,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: FlutterFlowTheme.of(context).subtxt,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      width: 100.0,
                                                                                      height: 40.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          if (socialFeedRecommendRecord.likeUser.contains(currentUserReference) == false)
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                await socialFeedRecommendRecord.reference.update({
                                                                                                  'likeUser': FieldValue.arrayUnion([
                                                                                                    currentUserReference
                                                                                                  ]),
                                                                                                });
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.thumb_up_outlined,
                                                                                                color: Colors.black,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                            ),
                                                                                          if (socialFeedRecommendRecord.likeUser.contains(currentUserReference) == true)
                                                                                            InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onTap: () async {
                                                                                                await socialFeedRecommendRecord.reference.update({
                                                                                                  'likeUser': FieldValue.arrayRemove([
                                                                                                    currentUserReference
                                                                                                  ]),
                                                                                                });
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.thumb_up,
                                                                                                color: FlutterFlowTheme.of(context).subcolor,
                                                                                                size: 18.0,
                                                                                              ),
                                                                                            ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              formatNumber(
                                                                                                socialFeedRecommendRecord.likeUser.length,
                                                                                                formatType: FormatType.decimal,
                                                                                                decimalType: DecimalType.periodDecimal,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Container(
                                                                                      width: 100.0,
                                                                                      height: 40.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.remove_red_eye_outlined,
                                                                                            color: Colors.black,
                                                                                            size: 18.0,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              formatNumber(
                                                                                                socialFeedRecommendRecord.seeUser.length,
                                                                                                formatType: FormatType.decimal,
                                                                                                decimalType: DecimalType.periodDecimal,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                    fontSize: 14.0,
                                                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    if (socialFeedRecommendRecord
                                                                            .more ==
                                                                        true)
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              2.0,
                                                                              0.0),
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                1.0,
                                                                            child:
                                                                                Container(
                                                                              width: 100.0,
                                                                              height: 80.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width * 1.0,
                                                                                    height: 37.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    ),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              await socialFeedRecommendRecord.reference.update(createRecommendRecordData(
                                                                                                more: false,
                                                                                              ));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.close,
                                                                                              color: Colors.black,
                                                                                              size: 18.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Divider(
                                                                                    height: 1.0,
                                                                                    thickness: 1.0,
                                                                                  ),
                                                                                  InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'boardreport',
                                                                                        queryParameters: {
                                                                                          'recommendref': serializeParam(
                                                                                            socialFeedRecommendRecord.reference,
                                                                                            ParamType.DocumentReference,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                      );
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 0.5,
                                                                                      child: Container(
                                                                                        width: MediaQuery.of(context).size.width * 1.0,
                                                                                        height: 37.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Align(
                                                                                          alignment: AlignmentDirectional(0.0, 0.0),
                                                                                          child: Text(
                                                                                            '게시물 신고',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  fontSize: 13.0,
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
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
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.95, 0.95),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Color(0x00FFFFFF),
                                                      borderRadius: 30.0,
                                                      buttonSize: 50.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .maintxt,
                                                      icon: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                            'upload_recommend');
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    1.0,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.77,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: DefaultTabController(
                                                  length: 2,
                                                  initialIndex: 0,
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment(0.0, 0),
                                                        child: TabBar(
                                                          labelColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .maincolor,
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                          indicatorColor:
                                                              Color(0xFF39D267),
                                                          tabs: [
                                                            Tab(
                                                              text: '바다랭킹',
                                                            ),
                                                            Tab(
                                                              text: '민물랭킹',
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: TabBarView(
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        1.5,
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        scrollDirection:
                                                                            Axis.horizontal,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  setState(() {
                                                                                    FFAppState().rank = '전체';
                                                                                  });
                                                                                },
                                                                                child: Text(
                                                                                  '전체',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: valueOrDefault<Color>(
                                                                                          FFAppState().rank == '전체' ? FlutterFlowTheme.of(context).maincolor : Colors.black,
                                                                                          FlutterFlowTheme.of(context).maincolor,
                                                                                        ),
                                                                                        fontWeight: FontWeight.w500,
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final fishlist = FFAppState().seafish.toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: List.generate(fishlist.length, (fishlistIndex) {
                                                                                      final fishlistItem = fishlist[fishlistIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().rank = fishlistItem;
                                                                                            });
                                                                                          },
                                                                                          child: Text(
                                                                                            fishlistItem,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    FFAppState().rank == fishlistItem ? FlutterFlowTheme.of(context).maincolor : Colors.black,
                                                                                                    FlutterFlowTheme.of(context).maincolor,
                                                                                                  ),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (FFAppState()
                                                                        .rank ==
                                                                    '전체')
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            1.0,
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.66,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              10.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              StreamBuilder<List<RankRecord>>(
                                                                            stream:
                                                                                queryRankRecord(
                                                                              queryBuilder: (rankRecord) => rankRecord.where('User', isEqualTo: currentUserReference).where('postType', isEqualTo: '바다 랭킹'),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<RankRecord> columnRankRecordList = snapshot.data!;
                                                                              return SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: List.generate(columnRankRecordList.length, (columnIndex) {
                                                                                    final columnRankRecord = columnRankRecordList[columnIndex];
                                                                                    return Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                      child: Material(
                                                                                        color: Colors.transparent,
                                                                                        elevation: 3.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(20.0),
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 1.0,
                                                                                          height: 190.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          dateTimeFormat(
                                                                                                            'yQQQ',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 18.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                        AutoSizeText(
                                                                                                          dateTimeFormat(
                                                                                                            'MEd',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 11.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 150.0,
                                                                                                      child: Stack(
                                                                                                        children: [
                                                                                                          ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                            child: Image.network(
                                                                                                              columnRankRecord.photo,
                                                                                                              width: 150.0,
                                                                                                              height: 95.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                          if (responsiveVisibility(
                                                                                                            context: context,
                                                                                                            phone: false,
                                                                                                            tablet: false,
                                                                                                            tabletLandscape: false,
                                                                                                            desktop: false,
                                                                                                          ))
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/_1.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '1',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        columnRankRecord.location,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              color: Color(0xA857636C),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: Container(
                                                                                                        width: 100.0,
                                                                                                        height: 22.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        ),
                                                                                                        child: Align(
                                                                                                          alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                          child: AutoSizeText(
                                                                                                            '${columnRankRecord.fish} ${formatNumber(
                                                                                                              columnRankRecord.length,
                                                                                                              formatType: FormatType.decimal,
                                                                                                              decimalType: DecimalType.periodDecimal,
                                                                                                            )}cm',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  fontSize: 20.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  lineHeight: 1.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (FFAppState()
                                                                        .rank !=
                                                                    '전체')
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            1.0,
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.66,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              10.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              StreamBuilder<List<RankRecord>>(
                                                                            stream:
                                                                                queryRankRecord(
                                                                              queryBuilder: (rankRecord) => rankRecord.where('User', isEqualTo: currentUserReference).where('postType', isEqualTo: '바다 랭킹').where('fish', isEqualTo: FFAppState().rank).orderBy('length', descending: true),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<RankRecord> columnRankRecordList = snapshot.data!;
                                                                              return SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: List.generate(columnRankRecordList.length, (columnIndex) {
                                                                                    final columnRankRecord = columnRankRecordList[columnIndex];
                                                                                    return Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                      child: Material(
                                                                                        color: Colors.transparent,
                                                                                        elevation: 3.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(20.0),
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 1.0,
                                                                                          height: 190.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          '${dateTimeFormat(
                                                                                                            'yQQQ',
                                                                                                            columnRankRecord.date,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          )}년',
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 18.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                        AutoSizeText(
                                                                                                          dateTimeFormat(
                                                                                                            'MEd',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 11.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 150.0,
                                                                                                      child: Stack(
                                                                                                        children: [
                                                                                                          ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                            child: Image.network(
                                                                                                              columnRankRecord.photo,
                                                                                                              width: 150.0,
                                                                                                              height: 95.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                          if (columnIndex == 1)
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/_1.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '1',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          if (columnIndex == 2)
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/-2.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '2',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          if (columnIndex == 3)
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/-3.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '3',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        columnRankRecord.location,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              color: Color(0xA857636C),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: Container(
                                                                                                        width: 100.0,
                                                                                                        height: 22.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        ),
                                                                                                        child: Align(
                                                                                                          alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                          child: AutoSizeText(
                                                                                                            '${columnRankRecord.fish} ${formatNumber(
                                                                                                              columnRankRecord.length,
                                                                                                              formatType: FormatType.decimal,
                                                                                                              decimalType: DecimalType.periodDecimal,
                                                                                                            )}cm',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  fontSize: 20.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  lineHeight: 1.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        1.5,
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.of(context)
                                                                              .size
                                                                              .width *
                                                                          1.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      child:
                                                                          SingleChildScrollView(
                                                                        scrollDirection:
                                                                            Axis.horizontal,
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  setState(() {
                                                                                    FFAppState().rank2 = '전체';
                                                                                  });
                                                                                },
                                                                                child: Text(
                                                                                  '전체',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                        color: valueOrDefault<Color>(
                                                                                          FFAppState().rank2 == '전체' ? FlutterFlowTheme.of(context).maincolor : Colors.black,
                                                                                          FlutterFlowTheme.of(context).maincolor,
                                                                                        ),
                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
                                                                              child: Builder(
                                                                                builder: (context) {
                                                                                  final fishlist = FFAppState().fwaterfish.toList();
                                                                                  return Row(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: List.generate(fishlist.length, (fishlistIndex) {
                                                                                      final fishlistItem = fishlist[fishlistIndex];
                                                                                      return Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().rank2 = fishlistItem;
                                                                                            });
                                                                                          },
                                                                                          child: Text(
                                                                                            fishlistItem,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: valueOrDefault<Color>(
                                                                                                    FFAppState().rank2 == fishlistItem ? FlutterFlowTheme.of(context).maincolor : Color(0xFF101010),
                                                                                                    FlutterFlowTheme.of(context).maincolor,
                                                                                                  ),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (FFAppState()
                                                                        .rank2 ==
                                                                    '전체')
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            1.0,
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.66,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              10.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              StreamBuilder<List<RankRecord>>(
                                                                            stream:
                                                                                queryRankRecord(
                                                                              queryBuilder: (rankRecord) => rankRecord.where('User', isEqualTo: currentUserReference).where('postType', isEqualTo: '민물 랭킹'),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<RankRecord> columnRankRecordList = snapshot.data!;
                                                                              return SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: List.generate(columnRankRecordList.length, (columnIndex) {
                                                                                    final columnRankRecord = columnRankRecordList[columnIndex];
                                                                                    return Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                      child: Material(
                                                                                        color: Colors.transparent,
                                                                                        elevation: 3.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(20.0),
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 1.0,
                                                                                          height: 190.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          dateTimeFormat(
                                                                                                            'yQQQ',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 18.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                        AutoSizeText(
                                                                                                          dateTimeFormat(
                                                                                                            'MEd',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 11.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 150.0,
                                                                                                      child: Stack(
                                                                                                        children: [
                                                                                                          ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                            child: Image.network(
                                                                                                              columnRankRecord.photo,
                                                                                                              width: 150.0,
                                                                                                              height: 95.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        columnRankRecord.location,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              color: Color(0xA857636C),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: Container(
                                                                                                        width: 100.0,
                                                                                                        height: 22.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        ),
                                                                                                        child: Align(
                                                                                                          alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                          child: AutoSizeText(
                                                                                                            '${columnRankRecord.fish} ${formatNumber(
                                                                                                              columnRankRecord.length,
                                                                                                              formatType: FormatType.decimal,
                                                                                                              decimalType: DecimalType.periodDecimal,
                                                                                                            )}cm',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  fontSize: 20.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  lineHeight: 1.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (FFAppState()
                                                                        .rank2 !=
                                                                    '전체')
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context).size.width *
                                                                            1.0,
                                                                        height: MediaQuery.of(context).size.height *
                                                                            0.66,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              20.0,
                                                                              10.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              StreamBuilder<List<RankRecord>>(
                                                                            stream:
                                                                                queryRankRecord(
                                                                              queryBuilder: (rankRecord) => rankRecord.where('User', isEqualTo: currentUserReference).where('postType', isEqualTo: '민물 랭킹').where('fish', isEqualTo: FFAppState().rank2).orderBy('length', descending: true),
                                                                            ),
                                                                            builder:
                                                                                (context, snapshot) {
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
                                                                              List<RankRecord> columnRankRecordList = snapshot.data!;
                                                                              return SingleChildScrollView(
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: List.generate(columnRankRecordList.length, (columnIndex) {
                                                                                    final columnRankRecord = columnRankRecordList[columnIndex];
                                                                                    return Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                      child: Material(
                                                                                        color: Colors.transparent,
                                                                                        elevation: 3.0,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(20.0),
                                                                                        ),
                                                                                        child: Container(
                                                                                          width: MediaQuery.of(context).size.width * 1.0,
                                                                                          height: 190.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(20.0),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          dateTimeFormat(
                                                                                                            'yQQQ',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 18.0,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                        AutoSizeText(
                                                                                                          dateTimeFormat(
                                                                                                            'MEd',
                                                                                                            columnRankRecord.date!,
                                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                                          ),
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                fontSize: 11.0,
                                                                                                                fontWeight: FontWeight.w600,
                                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                    Container(
                                                                                                      width: 150.0,
                                                                                                      child: Stack(
                                                                                                        children: [
                                                                                                          ClipRRect(
                                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                                            child: Image.network(
                                                                                                              columnRankRecord.photo,
                                                                                                              width: 150.0,
                                                                                                              height: 95.0,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                          if (columnIndex == 1)
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/_1.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '1',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          if (columnIndex == 2)
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/-2.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '2',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          if (columnIndex == 3)
                                                                                                            Align(
                                                                                                              alignment: AlignmentDirectional(0.8, 0.0),
                                                                                                              child: Container(
                                                                                                                width: 20.0,
                                                                                                                height: 35.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  image: DecorationImage(
                                                                                                                    fit: BoxFit.fill,
                                                                                                                    image: Image.asset(
                                                                                                                      'assets/images/-3.png',
                                                                                                                    ).image,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                child: Align(
                                                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                                  child: Text(
                                                                                                                    '3',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                          color: Colors.white,
                                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                        ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 7.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        columnRankRecord.location,
                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                              color: Color(0xA857636C),
                                                                                                              fontSize: 12.0,
                                                                                                              fontWeight: FontWeight.normal,
                                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                            ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: Container(
                                                                                                        width: 100.0,
                                                                                                        height: 22.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                        ),
                                                                                                        child: Align(
                                                                                                          alignment: AlignmentDirectional(1.0, 0.0),
                                                                                                          child: AutoSizeText(
                                                                                                            '${columnRankRecord.fish} ${formatNumber(
                                                                                                              columnRankRecord.length,
                                                                                                              formatType: FormatType.decimal,
                                                                                                              decimalType: DecimalType.periodDecimal,
                                                                                                            )}cm',
                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                                  fontSize: 20.0,
                                                                                                                  fontWeight: FontWeight.w600,
                                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                                  lineHeight: 1.0,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }),
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
              ),
            ),
            Material(
              color: Colors.transparent,
              elevation: 3.0,
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: wrapWithModel(
                  model: _model.naviModel,
                  updateCallback: () => setState(() {}),
                  child: NaviWidget(
                    c6: FlutterFlowTheme.of(context).maincolor,
                    b1: false,
                    b2: false,
                    b3: false,
                    b4: false,
                    b5: false,
                    b6: true,
                    b7: false,
                    b8: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
