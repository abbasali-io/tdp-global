import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lead_stock_nav_bar_model.dart';
export 'lead_stock_nav_bar_model.dart';

class LeadStockNavBarWidget extends StatefulWidget {
  const LeadStockNavBarWidget({super.key});

  @override
  State<LeadStockNavBarWidget> createState() => _LeadStockNavBarWidgetState();
}

class _LeadStockNavBarWidgetState extends State<LeadStockNavBarWidget> {
  late LeadStockNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeadStockNavBarModel());

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
                  logFirebaseEvent('LEAD_STOCK_NAV_BAR_Column_bt741jsf_ON_TA');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context
                        .pushNamed(WarehouseCurrentStockPageWidget.routeName);
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
                          FFAppState().activePage == 'leadStock'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_STOCK_NAV_BAR_all_inbox_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(
                              WarehouseCurrentStockPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Stock',
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
                              FFAppState().activePage == 'leadStock'
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
                  logFirebaseEvent('LEAD_STOCK_NAV_BAR_Column_emx2kqgg_ON_TA');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(
                        WarehouseDamagedProductsPageWidget.routeName);
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
                        Icons.assignment_late_outlined,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'leadDamage'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_STOCK_NAV_BAR_assignment_late_outli');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(
                              WarehouseDamagedProductsPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Damage',
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
                              FFAppState().activePage == 'leadDamage'
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
                      fillColor: valueOrDefault<Color>(
                        FFAppState().activePage == 'onlineOrders'
                            ? FlutterFlowTheme.of(context).secondary
                            : FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).primary,
                      ),
                      icon: Icon(
                        Icons.home_rounded,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_STOCK_NAV_BAR_MiddleButton_ON_TAP');
                        logFirebaseEvent('MiddleButton_navigate_to');

                        context.pushNamed(LeadHomePageWidget.routeName);
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
                  logFirebaseEvent('LEAD_STOCK_NAV_BAR_Column_4wawmtl3_ON_TA');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(WarehouseUsersListPageWidget.routeName);
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
                        Icons.group,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'users'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_STOCK_NAV_BAR_COMP_group_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(
                              WarehouseUsersListPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Users',
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
                              FFAppState().activePage == 'users'
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
                  logFirebaseEvent('LEAD_STOCK_NAV_BAR_Column_yng8o2rg_ON_TA');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(StockTypePageWidget.routeName);
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
                        Icons.redo,
                        color: valueOrDefault<Color>(
                          FFAppState().activePage == 'leadPayments'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_STOCK_NAV_BAR_COMP_redo_ICN_ON_TAP');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(StockTypePageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Assign',
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
                              FFAppState().activePage == 'leadPayments'
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
