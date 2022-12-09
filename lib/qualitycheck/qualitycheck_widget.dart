import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QualitycheckWidget extends StatefulWidget {
  const QualitycheckWidget({
    Key? key,
    this.loading,
  }) : super(key: key);

  final String? loading;

  @override
  _QualitycheckWidgetState createState() => _QualitycheckWidgetState();
}

class _QualitycheckWidgetState extends State<QualitycheckWidget> {
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(38, 355, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SelectionArea(
                          child: Text(
                        'QUALITY CHECK',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                      )),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: SelectionArea(
                            child: Text(
                          '.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50,
                                  ),
                        )),
                      ),
                      SelectionArea(
                          child: Text(
                        '.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 45,
                            ),
                      )),
                      SelectionArea(
                          child: Text(
                        '.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 40,
                            ),
                      )),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          '.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 35,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          '.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 30,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          '.',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        )),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          '.',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        )),
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
