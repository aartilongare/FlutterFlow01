import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class TOONFORMULIer08Widget extends StatefulWidget {
  const TOONFORMULIer08Widget({Key? key}) : super(key: key);

  @override
  _TOONFORMULIer08WidgetState createState() => _TOONFORMULIer08WidgetState();
}

class _TOONFORMULIer08WidgetState extends State<TOONFORMULIer08Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late SignatureController signatureController;

  @override
  void initState() {
    super.initState();
    signatureController = SignatureController(
      penStrokeWidth: 2,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
  }

  @override
  void dispose() {
    signatureController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF7C8285),
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
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFF3679C6),
                              size: 24,
                            ),
                          ),
                          SelectionArea(
                              child: Text(
                            'Audits',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF3679C6),
                                      fontWeight: FontWeight.w500,
                                    ),
                          )),
                        ],
                      ),
                    ),
                    SelectionArea(
                        child: Text(
                      'Toon Audit',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                    )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.upload_outlined,
                                color: Color(0xFF3679C6),
                                size: 30,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://picsum.photos/seed/537/600',
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
                                'Upload',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                    ),
                              )),
                              SelectionArea(
                                  child: Text(
                                'Auditor',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 11,
                                      fontWeight: FontWeight.normal,
                                    ),
                              )),
                            ],
                          ),
                        ],
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
                      'https://st.depositphotos.com/1000112/1976/i/950/depositphotos_19766847-stock-photo-white-paper-texture.jpg',
                    ).image,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 6,
                      sigmaY: 6,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Color(0xFFB1CAE8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'SIGNATURE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 4),
                                          spreadRadius: 4,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: ClipRect(
                                      child: Signature(
                                        controller: signatureController,
                                        backgroundColor: Colors.white,
                                        height: 120,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 30, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 25, 0),
                                        child: Icon(
                                          Icons.delete,
                                          color: Color(0xFFDB3636),
                                          size: 30,
                                        ),
                                      ),
                                      FaIcon(
                                        FontAwesomeIcons.save,
                                        color: Color(0xFF22F828),
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.2, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'UPLOADEN',
                                      options: FFButtonOptions(
                                        width: 160,
                                        height: 40,
                                        color: Color(0xFF4955DE),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
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
