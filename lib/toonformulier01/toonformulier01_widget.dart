import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Toonformulier01Widget extends StatefulWidget {
  const Toonformulier01Widget({
    Key? key,
    this.theperameter,
  }) : super(key: key);

  final String? theperameter;

  @override
  _Toonformulier01WidgetState createState() => _Toonformulier01WidgetState();
}

class _Toonformulier01WidgetState extends State<Toonformulier01Widget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 =
        TextEditingController(text: FFAppState().ElementCount.toString());
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
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
                height: 70,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xBE346F95),
                        size: 26,
                      ),
                    ),
                    SelectionArea(
                        child: Text(
                      'Back',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Color(0xBE346F95),
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                    )),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'TOON FORMULIER',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lato',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                  ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: InkWell(
                  onTap: () async {
                    setState(() {
                      FFAppState().ElementCount =
                          FFAppState().AANTALFOUTEN.length;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    elevation: 70,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDCFC),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextFormField(
                            controller: textController1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Some ',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDCFC),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: TextFormField(
                          controller: textController2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'ELEMENT',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFFBBDCFC),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: TextFormField(
                          controller: textController3,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'FOUT SOORT',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
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
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'LOGBOEK',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      Icon(
                        Icons.upload_outlined,
                        color: Color(0xFF3D54B3),
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xFFBBDCFC),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        '                                               .                        ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              decoration: TextDecoration.underline,
                            ),
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 55,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              'SCHOONMAAK TECHNISCHE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Icon(
                              Icons.upload_outlined,
                              color: Color(0xFF3D54B3),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              ' ASPECTED',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFBBDCFC),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Text(
                        '.                                                                                                ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    Text(
                      '.                                                                                                ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () async {
                          setState(() {
                            setState(() => FFAppState().addToAANTALFOUTEN(
                                FFAppState().AANTALFOUTEN.length.toString()));
                          });

                          context.pushNamed('toonformulier06');

                          setState(() {
                            setState(() => FFAppState()
                                .addToELEMENT(textController2!.text));
                          });

                          context.pushNamed('toonformulier06');

                          setState(() {
                            setState(() => FFAppState()
                                .addToFOUTSOORT(textController3!.text));
                          });

                          context.pushNamed('toonformulier06');
                        },
                        child: Container(
                          width: 120,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xFFBBDCFC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: SelectionArea(
                                    child: Text(
                                  'SAVE',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(33, 0, 0, 0),
                                child: Container(
                                  width: 43,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xBF4B96D7),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(15),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.save_outlined,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color(0xFFBEB5F6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: SelectionArea(
                                  child: Text(
                                'CANCEL',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                              )),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Container(
                                width: 43,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xFF8680C3),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: Icon(
                                  Icons.cancel_outlined,
                                  color: Colors.black,
                                  size: 24,
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
              Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 0,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 95, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
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
                            SelectionArea(
                                child: Text(
                              'Audits',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Nunito',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
