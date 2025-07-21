import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bootstrap_page_model.dart';
export 'bootstrap_page_model.dart';

class BootstrapPageWidget extends StatefulWidget {
  const BootstrapPageWidget({super.key});

  static String routeName = 'bootstrapPage';
  static String routePath = 'bootstrapPage';

  @override
  State<BootstrapPageWidget> createState() => _BootstrapPageWidgetState();
}

class _BootstrapPageWidgetState extends State<BootstrapPageWidget> {
  late BootstrapPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BootstrapPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'bootstrapPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('BOOTSTRAP_bootstrapPage_ON_INIT_STATE');
      final firestoreBatch = FirebaseFirestore.instance.batch();
      try {
        // queryLoggedinUser
        logFirebaseEvent('bootstrapPage_queryLoggedinUser');
        _model.loggedInUser = await queryUsersRecordOnce(
          queryBuilder: (usersRecord) => usersRecord.where(
            'uid',
            isEqualTo: currentUserUid,
          ),
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        // getGlobalSettings
        logFirebaseEvent('bootstrapPage_getGlobalSettings');
        _model.globalSettingsDoc = await queryGlobalSettingsRecordOnce(
          singleRecord: true,
        ).then((s) => s.firstOrNull);
        // updateAppVersion
        logFirebaseEvent('bootstrapPage_updateAppVersion');

        firestoreBatch.update(
            currentUserReference!,
            createUsersRecordData(
              appVersion: FFAppState().appVersion,
            ));
        if (FFAppState().minBuild >= _model.globalSettingsDoc!.minBuild) {
          if ((_model.loggedInUser?.isRegistered == true) ||
              (_model.loggedInUser?.assignedWarehouseRef != null)) {
            // updateAppVersion
            logFirebaseEvent('bootstrapPage_updateAppVersion');

            firestoreBatch.update(
                currentUserReference!,
                createUsersRecordData(
                  appVersion: FFAppState().appVersion,
                ));
            if (_model.loggedInUser?.isActive == true) {
              if (_model.loggedInUser?.userRole == 'lead') {
                logFirebaseEvent('bootstrapPage_navigate_to');

                context.goNamed(LeadHomePageWidget.routeName);

                return;
              } else {
                if (_model.loggedInUser?.userRole == UserRole.admin.name) {
                  logFirebaseEvent('bootstrapPage_navigate_to');

                  context.goNamed(AdminHomePageWidget.routeName);
                } else {
                  logFirebaseEvent('bootstrapPage_navigate_to');

                  context.goNamed(VolunteerDetectedPageWidget.routeName);
                }

                return;
              }
            } else {
              logFirebaseEvent('bootstrapPage_navigate_to');

              context.goNamed(NotAuthorizedPageWidget.routeName);

              return;
            }
          } else {
            logFirebaseEvent('bootstrapPage_backend_call');

            firestoreBatch.update(
                _model.loggedInUser!.reference,
                createUsersRecordData(
                  isWarehouseAssigned: false,
                ));
            logFirebaseEvent('bootstrapPage_navigate_to');

            context.goNamed(WelcomeLeadsPageWidget.routeName);

            return;
          }
        } else {
          logFirebaseEvent('bootstrapPage_navigate_to');

          context.goNamed(UpdateAppVersionWidget.routeName);

          return;
        }
      } finally {
        await firestoreBatch.commit();
      }
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, -1.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.logout_rounded,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('BOOTSTRAP_logout_rounded_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_auth');
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        logFirebaseEvent('IconButton_navigate_to');

                        context.goNamedAuth(
                            LoginPageWidget.routeName, context.mounted);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .fontStyle,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/Leads.png',
                            width: 120.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          child: custom_widgets.LoadingCustomWidget(
                            width: 70.0,
                            height: 70.0,
                            size: 60.0,
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Loading...',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
