import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Caregorie1Widget extends StatefulWidget {
  const Caregorie1Widget({Key? key}) : super(key: key);

  @override
  _Caregorie1WidgetState createState() => _Caregorie1WidgetState();
}

class _Caregorie1WidgetState extends State<Caregorie1Widget> {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFF5091DB),
                            size: 24,
                          ),
                        ),
                        Text(
                          'Back',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFF5091DB),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'TOON FORMULIER',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                        )),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.85,
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
                      sigmaX: 5,
                      sigmaY: 5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xFFBBDCFC),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: Text(
                                    'CATEGORIE',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Nunito',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 20, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pop();
                                    },
                                    child: Icon(
                                      Icons.arrow_drop_up_sharp,
                                      color: Colors.black,
                                      size: 45,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: 140,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              final listViewCompanyDetailsResponse =
                                  snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final categoriechild = getJsonField(
                                    listViewCompanyDetailsResponse.jsonBody,
                                    r'''$.data[1:]''',
                                  ).toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: categoriechild.length,
                                    itemBuilder:
                                        (context, categoriechildIndex) {
                                      final categoriechildItem =
                                          categoriechild[categoriechildIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              child: Text(
                                                getJsonField(
                                                  categoriechildItem,
                                                  r'''$.CategoryName''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
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
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30,
                          ),
                          SelectionArea(
                              child: Text(
                            'Settings',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30,
                          ),
                          SelectionArea(
                              child: Text(
                            'Help',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
