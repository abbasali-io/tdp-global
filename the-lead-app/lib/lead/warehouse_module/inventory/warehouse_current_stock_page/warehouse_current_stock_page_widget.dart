import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/common_module/comps/no_data_comp/no_data_comp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_stock_nav_bar/lead_stock_nav_bar_widget.dart';
import '/lead/warehouse_module/inventory/warehouse_stock_comp/warehouse_stock_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'warehouse_current_stock_page_model.dart';
export 'warehouse_current_stock_page_model.dart';

class WarehouseCurrentStockPageWidget extends StatefulWidget {
  const WarehouseCurrentStockPageWidget({super.key});

  static String routeName = 'warehouseCurrentStockPage';
  static String routePath = 'warehouseCurrentStockPage';

  @override
  State<WarehouseCurrentStockPageWidget> createState() =>
      _WarehouseCurrentStockPageWidgetState();
}

class _WarehouseCurrentStockPageWidgetState
    extends State<WarehouseCurrentStockPageWidget> {
  late WarehouseCurrentStockPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarehouseCurrentStockPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'warehouseCurrentStockPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('WAREHOUSE_CURRENT_STOCK_warehouseCurrent');
      logFirebaseEvent('warehouseCurrentStockPage_update_app_sta');
      FFAppState().activePage = 'leadStock';
      safeSetState(() {});
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
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            title: Text(
              'Warehouse Current Stock',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    font: GoogleFonts.poppins(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelLarge.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelLarge.fontStyle,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.5,
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.5),
              child: Container(
                width: 700.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.store_mall_directory_outlined,
                                  color: FlutterFlowTheme.of(context).secondary,
                                  size: 22.0,
                                ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  currentUserDisplayName,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.person_outline,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault<String>(
                                    valueOrDefault(
                                        currentUserDocument
                                            ?.assignedWarehouseName,
                                        ''),
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).placeholders,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) =>
                                  FutureBuilder<List<WarehouseProductsRecord>>(
                                future: queryWarehouseProductsRecordOnce(
                                  queryBuilder: (warehouseProductsRecord) =>
                                      warehouseProductsRecord
                                          .where(
                                            'isActive',
                                            isEqualTo: true,
                                          )
                                          .where(
                                            'warehouseRef',
                                            isEqualTo: currentUserDocument
                                                ?.assignedWarehouseRef,
                                          )
                                          .orderBy('name'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitRipple(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<WarehouseProductsRecord>
                                      listViewWarehouseProductsRecordList =
                                      snapshot.data!;
                                  if (listViewWarehouseProductsRecordList
                                      .isEmpty) {
                                    return NoDataCompWidget();
                                  }

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewWarehouseProductsRecordList
                                            .length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewWarehouseProductsRecord =
                                          listViewWarehouseProductsRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model: _model.warehouseStockCompModels
                                            .getModel(
                                          listViewWarehouseProductsRecord
                                              .warehouseProductId,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: WarehouseStockCompWidget(
                                          key: Key(
                                            'Keymhd_${listViewWarehouseProductsRecord.warehouseProductId}',
                                          ),
                                          warehouseProductComp:
                                              listViewWarehouseProductsRecord,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 110.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          wrapWithModel(
                            model: _model.leadStockNavBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: LeadStockNavBarWidget(),
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
      ),
    );
  }
}
