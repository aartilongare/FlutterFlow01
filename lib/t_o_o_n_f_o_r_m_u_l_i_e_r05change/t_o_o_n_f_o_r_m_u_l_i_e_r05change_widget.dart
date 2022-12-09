import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class TOONFORMULIER05changeWidget extends StatefulWidget {
  const TOONFORMULIER05changeWidget({
    Key? key,
    this.companyname,
    this.companycode,
    this.typecode,
    this.location,
  }) : super(key: key);

  final String? companyname;
  final String? companycode;
  final String? typecode;
  final String? location;

  @override
  _TOONFORMULIER05changeWidgetState createState() =>
      _TOONFORMULIER05changeWidgetState();
}

class _TOONFORMULIER05changeWidgetState
    extends State<TOONFORMULIER05changeWidget> {
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
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed('AUDITCopy');
                              },
                              child: Icon(
                                Icons.keyboard_arrow_left,
                                color: Color(0xFF162A7B),
                                size: 30,
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
                                    color: Color(0xFF162A7B),
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                      child: SelectionArea(
                          child: Text(
                        'Toon Audit',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 7, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.edit,
                                      color: Color(0xBE0F344B),
                                      size: 26,
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFBCC5E6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      child: Text(
                        'KLANT',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              fontSize: 20,
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
              Align(
                alignment: AlignmentDirectional(-0.75, 0),
                child: Text(
                  widget.companyname!,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Nunito',
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color(0xFFE9EFF6),
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              'Audit Soort',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 50, 0),
                            child: SelectionArea(
                                child: Text(
                              'Locatie',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SelectionArea(
                              child: Text(
                            valueOrDefault<String>(
                              widget.companycode,
                              '123',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF22492F),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            widget.typecode!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF22492F),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                    ),
                          )),
                          SelectionArea(
                              child: Text(
                            widget.location!,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF22492F),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                    ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.2,
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
                  child: FutureBuilder<ApiCallResponse>(
                    future: ApiGroupGroup.companyDetailsCall.call(
                      auditId: FFAppState().AuditorIdLocalState,
                      clientId: '81296AEE-4D87-454B-9C31-074851C628E0',
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
                      final listViewCompanyDetailsResponse = snapshot.data!;
                      return Builder(
                        builder: (context) {
                          final categorychild = getJsonField(
                            listViewCompanyDetailsResponse.jsonBody,
                            r'''$.data[1:]''',
                          ).toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: categorychild.length,
                            itemBuilder: (context, categorychildIndex) {
                              final categorychildItem =
                                  categorychild[categorychildIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      getJsonField(
                                        categorychildItem,
                                        r'''$.CategoryName''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          100, 0, 0, 0),
                                      child: Text(
                                        '0',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                    Text(
                                      '/',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 20, 0),
                                      child: Text(
                                        getJsonField(
                                          categorychildItem,
                                          r'''$.MinimunSizeRange''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 30,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 10),
                            child: Text(
                              'N',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 40,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0x7CCDC8F2),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'START/RESUME',
                    options: FFButtonOptions(
                      width: 165,
                      height: 40,
                      color: Color(0xFF3D54B3),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E3E7),
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRect(
                        child: Signature(
                          controller: signatureController,
                          backgroundColor: Colors.white,
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 60,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 160, 0),
                      child: Text(
                        'SIGNATURE',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              color: Color(0xBE28546F),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 13, 0),
                      child: Icon(
                        Icons.delete_outline_outlined,
                        color: Color(0xFF131313),
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                      child: FaIcon(
                        FontAwesomeIcons.save,
                        color: Color(0xFF131313),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('TOONFORMULIER07');
                  },
                  text: 'UPLOADEN',
                  options: FFButtonOptions(
                    width: 210,
                    height: 35,
                    color: Color(0xFF3D54B3),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 17,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 73,
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 56,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 56,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 56,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 56,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
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
