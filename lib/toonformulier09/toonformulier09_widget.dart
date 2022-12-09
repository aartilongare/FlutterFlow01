import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Toonformulier09Widget extends StatefulWidget {
  const Toonformulier09Widget({
    Key? key,
    this.loading,
  }) : super(key: key);

  final String? loading;

  @override
  _Toonformulier09WidgetState createState() => _Toonformulier09WidgetState();
}

class _Toonformulier09WidgetState extends State<Toonformulier09Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).lineColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xFF124C6C),
                                size: 24,
                              ),
                            ),
                            SelectionArea(
                                child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF124C6C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 45, 0),
                      child: SelectionArea(
                          child: Text(
                        'TOON FORMULIER',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 19,
                            ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: FaIcon(
                        FontAwesomeIcons.edit,
                        color: Color(0xFF124C6C),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.83,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://thumbs.dreamstime.com/b/light-blue-color-frosted-glass-texture-background-124081978.jpg',
                    ).image,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 6,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFFBBDCFC),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFBBDCFC),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 15, 0, 0),
                                          child: Text(
                                            'VERKERS RUIMTE',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFFBBDCFC),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFFBBDCFC),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25, 0, 0, 0),
                                      child: SelectionArea(
                                          child: Text(
                                        'SANITAIRE RUIMTE',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 10,
                height: 72,
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
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30,
                          ),
                          SelectionArea(
                              child: Text(
                            'Audits',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30,
                          ),
                          SelectionArea(
                              child: Text(
                            'Settings',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30,
                          ),
                          SelectionArea(
                              child: Text(
                            'Help',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
