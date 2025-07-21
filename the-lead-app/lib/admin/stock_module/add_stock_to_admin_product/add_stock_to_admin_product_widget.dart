import '/admin/stock_module/add_admin_product_comp/add_admin_product_comp_widget.dart';
import '/backend/backend.dart';
import '/common_module/comps/no_data_comp/no_data_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_stock_to_admin_product_model.dart';
export 'add_stock_to_admin_product_model.dart';

class AddStockToAdminProductWidget extends StatefulWidget {
  const AddStockToAdminProductWidget({super.key});

  static String routeName = 'addStockToAdminProduct';
  static String routePath = 'addStockToAdminProduct';

  @override
  State<AddStockToAdminProductWidget> createState() =>
      _AddStockToAdminProductWidgetState();
}

class _AddStockToAdminProductWidgetState
    extends State<AddStockToAdminProductWidget> {
  late AddStockToAdminProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddStockToAdminProductModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'addStockToAdminProduct'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADD_STOCK_TO_ADMIN_PRODUCT_addStockToAdm');
      logFirebaseEvent('addStockToAdminProduct_update_app_state');
      FFAppState().activePage = 'addStock';
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
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ADD_STOCK_TO_ADMIN_PRODUCT_arrow_back_ro');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.pushNamed(
                                    AdminAvailableStockPageWidget.routeName);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Add Stock to Admin Products',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
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
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 0.5,
            ),
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.5),
              child: Container(
                width: 700.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: StreamBuilder<List<AdminProductsRecord>>(
                          stream: queryAdminProductsRecord(
                            queryBuilder: (adminProductsRecord) =>
                                adminProductsRecord
                                    .where(
                                      'isActive',
                                      isEqualTo: true,
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<AdminProductsRecord>
                                listViewAdminProductsRecordList =
                                snapshot.data!;
                            if (listViewAdminProductsRecordList.isEmpty) {
                              return NoDataCompWidget();
                            }

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewAdminProductsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewAdminProductsRecord =
                                    listViewAdminProductsRecordList[
                                        listViewIndex];
                                return wrapWithModel(
                                  model:
                                      _model.addAdminProductCompModels.getModel(
                                    listViewAdminProductsRecord.adminProductId,
                                    listViewIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: AddAdminProductCompWidget(
                                    key: Key(
                                      'Keyzg4_${listViewAdminProductsRecord.adminProductId}',
                                    ),
                                    adminProductDocComp:
                                        listViewAdminProductsRecord,
                                  ),
                                );
                              },
                            );
                          },
                        ),
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
