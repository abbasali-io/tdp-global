import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_orders_nav_bar_model.dart';
export 'admin_orders_nav_bar_model.dart';

class AdminOrdersNavBarWidget extends StatefulWidget {
  const AdminOrdersNavBarWidget({super.key});

  @override
  State<AdminOrdersNavBarWidget> createState() =>
      _AdminOrdersNavBarWidgetState();
}

class _AdminOrdersNavBarWidgetState extends State<AdminOrdersNavBarWidget> {
  late AdminOrdersNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminOrdersNavBarModel());

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
                  logFirebaseEvent('ADMIN_ORDERS_NAV_BAR_Column_w9buzhtr_ON_');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context
                        .pushNamed(AdminSearchOnlineOrdersPageWidget.routeName);
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
                        Icons.manage_search,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'searchPayments'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 28.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_ORDERS_NAV_BAR_manage_search_ICN_O');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(
                              AdminSearchOnlineOrdersPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Search',
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
                              FFAppState().activePage == 'searchPayments'
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
                        Icons.home_rounded,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_ORDERS_NAV_BAR_MiddleButton_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('MiddleButton_navigate_to');

                          context.pushNamed(AdminHomePageWidget.routeName);
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
                  logFirebaseEvent('ADMIN_ORDERS_NAV_BAR_Column_81ho6zmz_ON_');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(GetOrderPageWidget.routeName);
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
                        Icons.delete_outline_rounded,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'delete'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'ADMIN_ORDERS_NAV_BAR_delete_outline_roun');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(GetOrderPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Delete',
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
                              FFAppState().activePage == 'delete'
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
