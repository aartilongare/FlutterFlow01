import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsphotoUpdateWidget extends StatefulWidget {
  const SettingsphotoUpdateWidget({Key? key}) : super(key: key);

  @override
  _SettingsphotoUpdateWidgetState createState() =>
      _SettingsphotoUpdateWidgetState();
}

class _SettingsphotoUpdateWidgetState extends State<SettingsphotoUpdateWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFC8D5E0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      child: Container(
                        width: 100,
                        height: 80,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: Color(0xFF3679C6),
                                    size: 24,
                                  ),
                                  SelectionArea(
                                      child: Text(
                                    'Back',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF3679C6),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  )),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.05, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'Settings',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                )),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SelectionArea(
                                          child: Text(
                                        'LOGOUT',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF3679C6),
                                              fontSize: 16,
                                            ),
                                      )),
                                      Icon(
                                        Icons.logout,
                                        color: Color(0xFFDB3636),
                                        size: 30,
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
                    ClipRRect(
                      child: Container(
                        width: 100,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFC8D5E0),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: MediaQuery.of(context).size.width * 0.3,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      'https://qodebrisbane.com/wp-content/uploads/2019/07/This-is-not-a-person-2-1.jpeg',
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.03, 0.95),
                              child: SelectionArea(
                                  child: Text(
                                'NUCLEYA',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.21, 0.49),
                              child: FaIcon(
                                FontAwesomeIcons.edit,
                                color: Color(0xA0547484),
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 25, 10, 10),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.25, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'AUDITS EXCECUTED :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0xFFB1D3E8),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  ' 12',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'LAST CLIENT :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color(0xFFB1D3E8),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'DAVV',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 17, 10, 10),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'LAST LOCATION VISITED :',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 150,
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.3,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFB1D3E8),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: SelectionArea(
                                  child: Text(
                                ' Locatie A',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: 45,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                'Profile Photo Update',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 18,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 127, 0, 0),
                      child: Container(
                        width: 100,
                        height: 80,
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
                                color: Color(0xA4547484),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.05, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.05, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    35, 0, 0, 0),
                                            child: Icon(
                                              Icons.insert_drive_file_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
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
                                color: Color(0xFF577685),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.info_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
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
            ],
          ),
        ),
      ),
    );
  }
}
