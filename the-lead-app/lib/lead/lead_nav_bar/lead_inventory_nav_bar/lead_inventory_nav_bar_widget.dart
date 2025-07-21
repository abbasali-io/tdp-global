import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lead_inventory_nav_bar_model.dart';
export 'lead_inventory_nav_bar_model.dart';

class LeadInventoryNavBarWidget extends StatefulWidget {
  const LeadInventoryNavBarWidget({super.key});

  @override
  State<LeadInventoryNavBarWidget> createState() =>
      _LeadInventoryNavBarWidgetState();
}

class _LeadInventoryNavBarWidgetState extends State<LeadInventoryNavBarWidget> {
  late LeadInventoryNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeadInventoryNavBarModel());

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
                  logFirebaseEvent('LEAD_INVENTORY_NAV_BAR_Column_0mp2wp6f_O');
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
                          FFAppState().activePage == 'assignStock'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_INVENTORY_NAV_BAR_redo_ICN_ON_TAP');
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
                      'Assign Stock',
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
                              FFAppState().activePage == 'assignStock'
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
                            'LEAD_INVENTORY_NAV_BAR_MiddleButton_ON_T');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('MiddleButton_navigate_to');

                          context.pushNamed(LeadHomePageWidget.routeName);
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
                  logFirebaseEvent('LEAD_INVENTORY_NAV_BAR_Column_6le5j4mq_O');
                  if (valueOrDefault<bool>(
                          currentUserDocument?.isActive, false) ==
                      true) {
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed(LeadMoreSettingsPageWidget.routeName);
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
                          FFAppState().activePage == 'transfer'
                              ? FlutterFlowTheme.of(context).secondary
                              : Color(0xFF9299A1),
                          Color(0xFF9299A1),
                        ),
                        size: 20.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'LEAD_INVENTORY_NAV_BAR_settings_sharp_IC');
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isActive, false) ==
                            true) {
                          logFirebaseEvent('IconButton_navigate_to');

                          context
                              .pushNamed(LeadMoreSettingsPageWidget.routeName);
                        } else {
                          logFirebaseEvent('IconButton_navigate_to');

                          context.goNamed(NotAuthorizedPageWidget.routeName);
                        }
                      },
                    ),
                    Text(
                      'Settings',
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
                              FFAppState().activePage == 'transfer'
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
