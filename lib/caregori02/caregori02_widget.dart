import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Caregori02Widget extends StatefulWidget {
  const Caregori02Widget({Key? key}) : super(key: key);

  @override
  _Caregori02WidgetState createState() => _Caregori02WidgetState();
}

class _Caregori02WidgetState extends State<Caregori02Widget> {
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
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
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
                      'https://thumbs.dreamstime.com/b/light-blue-color-frosted-glass-texture-background-124081978.jpg',
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
                                    'VERDIEPING',
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
                          height: 150,
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
                            future: ApiGroupGroup.floorAPICall.call(),
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
                              final listViewFloorAPIResponse = snapshot.data!;
                              return Builder(
                                builder: (context) {
                                  final floorValue = (ApiGroupGroup.floorAPICall
                                          .floorNameApiCall(
                                    listViewFloorAPIResponse.jsonBody,
                                  ) as List)
                                      .map<String>((s) => s.toString())
                                      .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: floorValue.length,
                                    itemBuilder: (context, floorValueIndex) {
                                      final floorValueItem =
                                          floorValue[floorValueIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 0, 0, 0),
                                                  child: Text(
                                                    floorValueItem,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
