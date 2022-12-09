import '../flutter_flow/flutter_flow_rive_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoadingpageWidget extends StatefulWidget {
  const LoadingpageWidget({
    Key? key,
    this.loading,
  }) : super(key: key);

  final String? loading;

  @override
  _LoadingpageWidgetState createState() => _LoadingpageWidgetState();
}

class _LoadingpageWidgetState extends State<LoadingpageWidget> {
  final riveAnimationAnimationsList = [
    'load',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    riveAnimationAnimationsList.forEach((name) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
        shouldLoop: true,
      ));
    });
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: AlignmentDirectional(-0.95, 0),
                child: Icon(
                  Icons.arrow_back_sharp,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 100, 40, 0),
                child: Container(
                  width: 130,
                  height: 130,
                  child: RiveAnimation.asset(
                    'assets/rive_animations/511-976-dot-loading-loaders.riv',
                    artboard: 'New Artboard',
                    fit: BoxFit.cover,
                    controllers: riveAnimationControllers,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 60, 60, 60),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Loading....',
                  options: FFButtonOptions(
                    width: 140,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 30,
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
              SelectionArea(
                  child: Text(
                valueOrDefault<String>(
                  FFAppState().TokenLocalState,
                  'deafutl vlaue by dheeraj',
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
