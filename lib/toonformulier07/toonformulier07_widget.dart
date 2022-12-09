import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Toonformulier07Widget extends StatefulWidget {
  const Toonformulier07Widget({Key? key}) : super(key: key);

  @override
  _Toonformulier07WidgetState createState() => _Toonformulier07WidgetState();
}

class _Toonformulier07WidgetState extends State<Toonformulier07Widget> {
  ApiCallResponse? apiResult2ic;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed('TOONFORMULIER04');
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Color(0xFF207BAB),
                        size: 24,
                      ),
                    ),
                    SelectionArea(
                        child: Text(
                      'Back',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFF439AC7),
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                    )),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'TOON FORMULIER',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF393D3F),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFC6CADB),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                      child: SelectionArea(
                          child: Text(
                        'Test Company',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFC6CADB),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SelectionArea(
                                child: Text(
                              'CODE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF393D3F),
                                    fontSize: 16,
                                  ),
                            )),
                            SelectionArea(
                                child: Text(
                              '10841',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF393D3F),
                                  ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFBBDCFC),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'CATEGORIE',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          context.pushNamed('Caregorie1');
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF3D54B3),
                          size: 45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFBBDCFC),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'VERDIEPING',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        )),
                      ),
                      InkWell(
                        onTap: () async {
                          var _shouldSetState = false;

                          context.pushNamed('Caregori02');

                          apiResult2ic =
                              await ApiGroupGroup.floorAPICall.call();
                          _shouldSetState = true;
                          if ((apiResult2ic?.succeeded ?? true)) {
                            setState(() {
                              FFAppState().FloorLocalState =
                                  ApiGroupGroup.floorAPICall
                                      .floorNameApiCall(
                                        (apiResult2ic?.jsonBody ?? ''),
                                      )
                                      .toString()
                                      .length
                                      .toString();
                            });
                          } else {
                            if (_shouldSetState) setState(() {});
                            return;
                          }

                          if (_shouldSetState) setState(() {});
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF3D54B3),
                          size: 45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFBBDCFC),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'RUIMTE OMSCHRJVING',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        )),
                      ),
                      InkWell(
                        onTap: () async {
                          context.pushNamed('toonformulier09');
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF3D54B3),
                          size: 45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFBBDCFC),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'RUIMTENUMMER',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                        child: Container(
                          width: 60,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(-0.05, 0),
                            child: SelectionArea(
                                child: Text(
                              '99',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFBBDCFC),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'TEL-ELEMENT',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Roboto',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                        child: Container(
                          width: 60,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(55),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.05, 0),
                            child: SelectionArea(
                                child: Text(
                              '88',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('TOONFORMULIER');
                  },
                  text: 'AUDIT FORMULIEREN',
                  options: FFButtonOptions(
                    width: 220,
                    height: 45,
                    color: Color(0xFF936CC8),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFF577685),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF577685),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.insert_drive_file_outlined,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 30,
                            ),
                            SelectionArea(
                                child: Text(
                              'Audits',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF577685),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 30,
                            ),
                            SelectionArea(
                                child: Text(
                              'Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF577685),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info_outlined,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 30,
                            ),
                            SelectionArea(
                                child: Text(
                              'Help',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
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
      ),
    );
  }
}
