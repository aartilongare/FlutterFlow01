import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ToonformulierWidget extends StatefulWidget {
  const ToonformulierWidget({Key? key}) : super(key: key);

  @override
  _ToonformulierWidgetState createState() => _ToonformulierWidgetState();
}

class _ToonformulierWidgetState extends State<ToonformulierWidget> {
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
                        context.pushNamed('TOONFORMULIER07');
                      },
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Color(0xFF15DCF2),
                        size: 24,
                      ),
                    ),
                    SelectionArea(
                        child: Text(
                      'Back',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Open Sans',
                            color: Color(0xFF15DCF2),
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
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 20, 20, 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 100,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color(0xFFBBDCFC),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0xFF5A7580),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: SelectionArea(
                                child: Text(
                              'Test Company',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lora',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                    child: Container(
                      width: 100,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDCFC),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                          )),
                          SelectionArea(
                              child: Text(
                            '10841',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 15, 0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 55,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDCFC),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xFFBBDCFC),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 15, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'CATEGORIE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'VERKERS RUIMTE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(140, 0, 0, 0),
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Color(0xFF3D54B3),
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(13, 29, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFFBBDCFC),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Color(0xFFBBDCFC),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 0, 0),
                                    child: SelectionArea(
                                        child: Text(
                                      'VERDIEPING',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    )),
                                  ),
                                  SelectionArea(
                                      child: Text(
                                    '3E',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF3D54B3),
                              size: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 10, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFFBBDCFC),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFBBDCFC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'RUIMTE OMSCHRIJVING',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'ENTREE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF3D54B3),
                            size: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDCFC),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0xFFBBDCFC),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                          child: SelectionArea(
                              child: Text(
                            'RUIMTENUMMER',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          FFAppState().ElementCount = FFAppState().ElementCount;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xFFBBDCFC),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: SelectionArea(
                              child: Text(
                            '99',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xFFBBDCFC),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              'TEL - ELEMENT',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xFFBBDCFC),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: SelectionArea(
                              child: Text(
                            '88',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 65, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('TOONFORMULIER01');
                  },
                  text: 'AUDIT FORMULIEREN',
                  options: FFButtonOptions(
                    width: 240,
                    height: 35,
                    color: Color(0xFF5442F3),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 14,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 111, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 78,
                  decoration: BoxDecoration(
                    color: Color(0xFF577685),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.insert_drive_file_outlined,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 30,
                            ),
                            Icon(
                              Icons.settings_outlined,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 30,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.05, 0),
                              child: Icon(
                                Icons.info_outlined,
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SelectionArea(
                                child: Text(
                              'Audits',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                            SelectionArea(
                                child: Text(
                              'Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                            Align(
                              alignment: AlignmentDirectional(0.05, -0.05),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Help',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                            ),
                          ],
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
    );
  }
}
