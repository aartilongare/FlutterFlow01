import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Toonformulier06Widget extends StatefulWidget {
  const Toonformulier06Widget({
    Key? key,
    this.loading,
  }) : super(key: key);

  final String? loading;

  @override
  _Toonformulier06WidgetState createState() => _Toonformulier06WidgetState();
}

class _Toonformulier06WidgetState extends State<Toonformulier06Widget> {
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
                    InkWell(
                      onTap: () async {
                        context.pushNamed('TOONFORMULIER01');
                      },
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
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  context.pushNamed('Toonformulier03');
                                },
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xFF3679C6),
                                  size: 24,
                                ),
                              ),
                            ),
                            SelectionArea(
                                child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFF3679C6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                      child: SelectionArea(
                          child: Text(
                        'TOON FORMULIER',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                      )),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: 30,
                        borderWidth: 2,
                        buttonSize: 40,
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 22,
                        ),
                        onPressed: () async {
                          context.pushNamed('TOONFORMULIER01');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.64, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xFFBBDCFC),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upload All',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                  ),
                        ),
                        Icon(
                          Icons.upload_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 110,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) {
                          final aantalfouten =
                              FFAppState().AANTALFOUTEN.toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: aantalfouten.length,
                            itemBuilder: (context, aantalfoutenIndex) {
                              final aantalfoutenItem =
                                  aantalfouten[aantalfoutenIndex];
                              return ListTile(
                                title: Text(
                                  aantalfoutenItem,
                                  style: FlutterFlowTheme.of(context).title3,
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final element = FFAppState().ELEMENT.toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: element.length,
                              itemBuilder: (context, elementIndex) {
                                final elementItem = element[elementIndex];
                                return ListTile(
                                  title: Text(
                                    elementItem,
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 110,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final foutsoort = FFAppState().FOUTSOORT.toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: foutsoort.length,
                              itemBuilder: (context, foutsoortIndex) {
                                final foutsoortItem = foutsoort[foutsoortIndex];
                                return ListTile(
                                  title: Text(
                                    foutsoortItem,
                                    style: FlutterFlowTheme.of(context).title3,
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Container(
                        width: 50,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Icon(
                                Icons.clear_sharp,
                                color: Color(0xFFF53B3B),
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                              child: Icon(
                                Icons.upload_outlined,
                                color: Color(0xFF3679C6),
                                size: 32,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 440, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
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
                          color: Color(0xAD547484),
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
                            Text(
                              'Audits',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
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
                            Text(
                              'Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
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
                            Text(
                              'Help',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 435, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFF113747),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF113747),
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
                                    fontFamily: 'Nunito',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF113747),
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
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ],
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF113747),
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
                                    fontWeight: FontWeight.w500,
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
