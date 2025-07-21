import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_nav_bar_model.dart';
export 'admin_nav_bar_model.dart';

class AdminNavBarWidget extends StatefulWidget {
  const AdminNavBarWidget({super.key});

  @override
  State<AdminNavBarWidget> createState() => _AdminNavBarWidgetState();
}

class _AdminNavBarWidgetState extends State<AdminNavBarWidget> {
  late AdminNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 90.0,
      decoration: BoxDecoration(
        color: Color(0x00EEEEEE),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color(0x1A57636C),
                        offset: Offset(
                          0.0,
                          -10.0,
                        ),
                        spreadRadius: 0.1,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADMIN_NAV_BAR_Column_makgmbg9_ON_TAP');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(AdminHomePageWidget.routeName);
                  } else {
                    logFirebaseEvent('Column_navigate_to');

                    context.goNamed(NotAuthorizedPageWidget.routeName);
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.home_rounded,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'adminHome'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_NAV_BAR_home_rounded_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(AdminHomePageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Home',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'adminHome'
                                  ? FlutterFlowTheme.of(context).secondary
                                  : Color(0xFF9299A1),
                              Color(0xFF9299A1),
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADMIN_NAV_BAR_Column_bwpaxl32_ON_TAP');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(AdminAvailableStockPageWidget.routeName);
                  } else {
                    logFirebaseEvent('Column_navigate_to');

                    context.goNamed(NotAuthorizedPageWidget.routeName);
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.all_inbox,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'adminStock'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_NAV_BAR_COMP_all_inbox_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(
                              AdminAvailableStockPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Stock',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'adminStock'
                                  ? FlutterFlowTheme.of(context).secondary
                                  : Color(0xFF9299A1),
                              Color(0xFF9299A1),
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 25.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_NAV_BAR_COMP_MiddleButton_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('MiddleButton_navigate_to');

                          context.pushNamed(
                              AdminSearchOnlineOrdersPageWidget.routeName);
                        } else {
                          logFirebaseEvent('MiddleButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                  ),
                ],
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADMIN_NAV_BAR_Column_ydpa0w10_ON_TAP');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(LeadsListPageWidget.routeName);
                  } else {
                    logFirebaseEvent('Column_navigate_to');

                    context.goNamed(NotAuthorizedPageWidget.routeName);
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.group_rounded,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'leads'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_NAV_BAR_group_rounded_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(LeadsListPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Leads',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              FFAppState().activePage == 'leads'
                                  ? FlutterFlowTheme.of(context).secondary
                                  : Color(0xFF9299A1),
                              Color(0xFF9299A1),
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('ADMIN_NAV_BAR_Column_slpnyok5_ON_TAP');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(AdminMoreSettingsPageWidget.routeName);
                  } else {
                    logFirebaseEvent('Column_navigate_to');

                    context.goNamed(NotAuthorizedPageWidget.routeName);
                  }
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.settings_sharp,
                        color: valueOrDefault<Color>(
                          (FFAppState().activePage == 'settings') ||
                                  (FFAppState().activePage == 'payments')
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_NAV_BAR_settings_sharp_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context
                              .pushNamed(AdminMoreSettingsPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'More',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              (FFAppState().activePage == 'settings') ||
                                      (FFAppState().activePage == 'payments')
                                  ? FlutterFlowTheme.of(context).secondary
                                  : Color(0xFF9299A1),
                              Color(0xFF9299A1),
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
