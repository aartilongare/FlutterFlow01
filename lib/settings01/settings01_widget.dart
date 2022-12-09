import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Settings01Widget extends StatefulWidget {
  const Settings01Widget({Key? key}) : super(key: key);

  @override
  _Settings01WidgetState createState() => _Settings01WidgetState();
}

class _Settings01WidgetState extends State<Settings01Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFBBDCFC),
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
                    Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Container(
                          width: 100,
                          height: MediaQuery.of(context).size.height * 0.82,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 30, 0, 0),
                                    child: Text(
                                      'Cancel',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: Color(0xFF5442F3),
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 20, 0, 15),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      height: 65,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBFC0C2),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 0, 0),
                                            child: Container(
                                              width: 130,
                                              height: 55,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Text(
                                                  'Photos',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 18,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Albums',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Nunito',
                                                    color: Color(0xFF181A1B),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                child: GridView(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 1,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Image.network(
                                      'https://picsum.photos/seed/208/600',
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/448/600',
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/800/600',
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/937/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/297/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/328/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/726/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/165/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/707/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/618/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/302/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/300/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/399/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/861/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/920/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/806/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/485/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/970/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/989/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/957/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/344/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/78/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/912/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.network(
                                      'https://picsum.photos/seed/585/600',
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
    );
  }
}
