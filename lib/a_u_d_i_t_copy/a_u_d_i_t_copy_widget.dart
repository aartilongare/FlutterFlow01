import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AUDITCopyWidget extends StatefulWidget {
  const AUDITCopyWidget({
    Key? key,
    this.companyname,
    this.auditcode,
    this.typecode,
    this.locationname,
  }) : super(key: key);

  final dynamic companyname;
  final String? auditcode;
  final String? typecode;
  final String? locationname;

  @override
  _AUDITCopyWidgetState createState() => _AUDITCopyWidgetState();
}

class _AUDITCopyWidgetState extends State<AUDITCopyWidget> {
  ApiCallResponse? outputcategory;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF6F8FB),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('LoginPage');
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF2929D0),
                          size: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: SelectionArea(
                          child: Text(
                        'Back',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              color: Color(0xFF2929D0),
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                      )),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Audit',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: FutureBuilder<ApiCallResponse>(
                  future: ApiGroupGroup.getAuditSecondStateCall.call(
                    ucIdVariable: FFAppState().ClientID,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    final listViewGetAuditSecondStateResponse = snapshot.data!;
                    return Builder(
                      builder: (context) {
                        final childerValues1 = getJsonField(
                          listViewGetAuditSecondStateResponse.jsonBody,
                          r'''$.data.rows[:]''',
                        ).toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: childerValues1.length,
                          itemBuilder: (context, childerValues1Index) {
                            final childerValues1Item =
                                childerValues1[childerValues1Index];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          getJsonField(
                                            childerValues1Item,
                                            r'''$.UserClient.CompanyName''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 0, 0),
                                        child: Text(
                                          getJsonField(
                                            childerValues1Item,
                                            r'''$.UserClient.Id''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF090F13),
                                                fontSize: 0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 7, 0, 0),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          height: 65,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFC6CADB),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                90, 0, 0, 0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Code ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Nunito',
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    )),
                                                  ),
                                                  SelectionArea(
                                                      child: Text(
                                                    'Audit Soort',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  )),
                                                  SelectionArea(
                                                      child: Text(
                                                    'Locatie',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          fontSize: 0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  )),
                                                ],
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: SelectionArea(
                                                          child: Text(
                                                        getJsonField(
                                                          childerValues1Item,
                                                          r'''$.AuditCode''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xFF22492F),
                                                              fontSize: 0,
                                                              letterSpacing: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      )),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: SelectionArea(
                                                          child: Text(
                                                        getJsonField(
                                                          childerValues1Item,
                                                          r'''$.Type''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF22492F),
                                                                  fontSize: 0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      )),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0),
                                                      child: SelectionArea(
                                                          child: Text(
                                                        getJsonField(
                                                          childerValues1Item,
                                                          r'''$.Location.Name''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF22492F),
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      )),
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
                                  if (getJsonField(
                                    childerValues1Item,
                                    r'''$.Type''',
                                  ))
                                    SelectionArea(
                                        child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontSize: 0,
                                          ),
                                    )),
                                  SelectionArea(
                                      child: Text(
                                    getJsonField(
                                      childerValues1Item,
                                      r'''$.UserClient.Id''',
                                    ).toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF8A3535),
                                          fontSize: 0,
                                        ),
                                  )),
                                  InkWell(
                                    onTap: () async {
                                      var _shouldSetState = false;

                                      context.pushNamed(
                                        'TOONFORMULIER05change',
                                        queryParams: {
                                          'companyname': serializeParam(
                                            getJsonField(
                                              childerValues1Item,
                                              r'''$.UserClient.CompanyName''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'companycode': serializeParam(
                                            getJsonField(
                                              childerValues1Item,
                                              r'''$.AuditCode''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'typecode': serializeParam(
                                            getJsonField(
                                              childerValues1Item,
                                              r'''$.Type''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                          'location': serializeParam(
                                            getJsonField(
                                              childerValues1Item,
                                              r'''$.Location.Name''',
                                            ).toString(),
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );

                                      outputcategory = await ApiGroupGroup
                                          .companyDetailsCall
                                          .call(
                                        auditId: FFAppState().Category01,
                                        clientId: FFAppState().Category01,
                                      );
                                      _shouldSetState = true;
                                      if ((outputcategory?.succeeded ?? true)) {
                                        setState(() {
                                          FFAppState().Category01 =
                                              ApiGroupGroup.companyDetailsCall
                                                  .callfromName(
                                                    (outputcategory?.jsonBody ??
                                                        ''),
                                                  )
                                                  .toString()
                                                  .length
                                                  .toString();
                                        });

                                        context.pushNamed('Loadingpage');
                                      } else {
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) setState(() {});
                                    },
                                    child: Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF95A1AC),
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 260, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xAD113747),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xAD547484),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.insert_drive_file_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                Text(
                                  'Audits',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xAD547484),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                Text(
                                  'Settings',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xAD547484),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  size: 30,
                                ),
                                Text(
                                  'Help',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Nunito',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
