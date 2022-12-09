import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Toonformulier04Widget extends StatefulWidget {
  const Toonformulier04Widget({Key? key}) : super(key: key);

  @override
  _Toonformulier04WidgetState createState() => _Toonformulier04WidgetState();
}

class _Toonformulier04WidgetState extends State<Toonformulier04Widget> {
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
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed('TOONFORMULIER05change');
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed('TOONFORMULIER05change');
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: InkWell(
                                  onTap: () async {
                                    context.pop();
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xFF15DCF2),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Audits',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF15DCF2),
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: SelectionArea(
                          child: Text(
                        'Toon Audit',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 7, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 0, 0),
                                    child: Icon(
                                      Icons.upload_outlined,
                                      color: Color(0xFF15DCF2),
                                      size: 26,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      context.pushNamed('qualitycheckCopy');
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/356/600',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Upload',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Auditor',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFC6CADB),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Text(
                        'Test Comapny',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              fontSize: 17,
                            ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 44,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(-0.05, 0),
                    child: SelectionArea(
                        child: Text(
                      'INFORMATIE',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF222628),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                    )),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 65,
                decoration: BoxDecoration(
                  color: Color(0xFFC6CADB),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectionArea(
                              child: Text(
                            'Code ',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            'Audit Soort',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            'Locatie',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              '10841',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF22492F),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: SelectionArea(
                                child: Text(
                              'LocatieAAB',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF22492F),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: SelectionArea(
                                child: Text(
                              'VSR',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF22492F),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 48,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 160,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('TOONFORMULIER07');
                      },
                      text: 'START',
                      options: FFButtonOptions(
                        width: 115,
                        height: 35,
                        color: Color(0xBE5FBBF2),
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'RESUME',
                      options: FFButtonOptions(
                        width: 115,
                        height: 35,
                        color: Color(0xFFA3AEDC),
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 182, 0, 0),
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
                            FaIcon(
                              FontAwesomeIcons.file,
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
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 14,
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
                          color: Color(0xAD547484),
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
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 14,
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
                          color: Color(0xAD547484),
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
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 14,
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
