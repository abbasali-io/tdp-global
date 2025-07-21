import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'flash_screen_model.dart';
export 'flash_screen_model.dart';

class FlashScreenWidget extends StatefulWidget {
  const FlashScreenWidget({super.key});

  static String routeName = 'flash_screen';
  static String routePath = 'flashScreen';

  @override
  State<FlashScreenWidget> createState() => _FlashScreenWidgetState();
}

class _FlashScreenWidgetState extends State<FlashScreenWidget>
    with TickerProviderStateMixin {
  late FlashScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlashScreenModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'flash_screen'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FLASH_SCREEN_flash_screen_ON_INIT_STATE');
      logFirebaseEvent('flash_screen_navigate_to');

      context.pushNamed(LoginWidget.routeName);
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 610.0.ms,
            duration: 2000.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(2.0, 2.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.5),
            child: Container(
              width: 700.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, -0.3),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'FLASH_SCREEN_PAGE_Image_aailcdz9_ON_TAP');
                      logFirebaseEvent('Image_navigate_to');

                      context.pushNamed(LoginWidget.routeName);
                    },
                    child: Image.asset(
                      'assets/images/Artboard_1_1.png',
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
