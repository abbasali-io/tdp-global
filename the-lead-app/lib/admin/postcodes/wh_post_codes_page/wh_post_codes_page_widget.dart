import '/admin/postcodes/enter_postcode_comp/enter_postcode_comp_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wh_post_codes_page_model.dart';
export 'wh_post_codes_page_model.dart';

class WhPostCodesPageWidget extends StatefulWidget {
  const WhPostCodesPageWidget({
    super.key,
    required this.whDocParam,
  });

  final WarehousesRecord? whDocParam;

  static String routeName = 'whPostCodesPage';
  static String routePath = 'whPostCodesPage';

  @override
  State<WhPostCodesPageWidget> createState() => _WhPostCodesPageWidgetState();
}

class _WhPostCodesPageWidgetState extends State<WhPostCodesPageWidget> {
  late WhPostCodesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhPostCodesPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'whPostCodesPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('WH_POST_CODES_whPostCodesPage_ON_INIT_ST');
      logFirebaseEvent('whPostCodesPage_update_app_state');
      FFAppState().selectedMenu = 'post';
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            logFirebaseEvent('WH_POST_CODES_FloatingActionButton_jix1e');
            logFirebaseEvent('FloatingActionButton_bottom_sheet');
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: EnterPostcodeCompWidget(
                      whDocParam: widget.whDocParam!,
                    ),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).success,
          elevation: 8.0,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 24.0,
          ),
        ),
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
                                  'WH_POST_CODES_arrow_back_rounded_ICN_ON_');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.pushNamed(SelectWhPageWidget.routeName);
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
                        'Warehouse Postcodes',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Text(
                              'Please select a warehouse to change the postcodes',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
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
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 4.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Icon(
                                    Icons.store_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.whDocParam?.displayName,
                                      '-',
                                    ),
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
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                0.0, 0.0, 0.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Icon(
                                    Icons.person_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.whDocParam?.leadName,
                                      'No lead assigned yet',
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
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: StreamBuilder<List<WarehousePostcodesRecord>>(
                        stream: queryWarehousePostcodesRecord(
                          queryBuilder: (warehousePostcodesRecord) =>
                              warehousePostcodesRecord
                                  .where(
                                    'warehouseId',
                                    isEqualTo: widget.whDocParam?.reference.id,
                                  )
                                  .orderBy('postCode'),
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
                          List<WarehousePostcodesRecord>
                              listViewWarehousePostcodesRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount:
                                listViewWarehousePostcodesRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 16.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewWarehousePostcodesRecord =
                                  listViewWarehousePostcodesRecordList[
                                      listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x33F2590D),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                listViewWarehousePostcodesRecord
                                                    .postCode,
                                                '-',
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor:
                                          FlutterFlowTheme.of(context).accent3,
                                      borderRadius: 8.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.delete_outline,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'WH_POST_CODES_delete_outline_ICN_ON_TAP');
                                        var _shouldSetState = false;
                                        final firestoreBatch =
                                            FirebaseFirestore.instance.batch();
                                        try {
                                          logFirebaseEvent(
                                              'IconButton_alert_dialog');
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Delete Postcode?'),
                                                        content: Text(
                                                            'This will delete the postcode from warehouse and its volunteers postcodes.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text(
                                                                'I Understand'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            // getVolPostcodes
                                            logFirebaseEvent(
                                                'IconButton_getVolPostcodes');
                                            _model.volPostcodesList =
                                                await queryVolunteerPostcodesRecordOnce(
                                              queryBuilder:
                                                  (volunteerPostcodesRecord) =>
                                                      volunteerPostcodesRecord
                                                          .where(
                                                            'warehouseId',
                                                            isEqualTo: widget
                                                                .whDocParam
                                                                ?.reference
                                                                .id,
                                                          )
                                                          .where(
                                                            'postcode',
                                                            isEqualTo:
                                                                listViewWarehousePostcodesRecord
                                                                    .postCode,
                                                          ),
                                            );
                                            _shouldSetState = true;
                                            while (_model.loop <
                                                valueOrDefault<int>(
                                                  _model
                                                      .volPostcodesList?.length,
                                                  0,
                                                )) {
                                              // deleteVolPostcode
                                              logFirebaseEvent(
                                                  'IconButton_deleteVolPostcode');
                                              firestoreBatch.delete(_model
                                                  .volPostcodesList!
                                                  .elementAtOrNull(_model.loop)!
                                                  .reference);
                                              logFirebaseEvent(
                                                  'IconButton_update_page_state');
                                              _model.loop = _model.loop + 1;
                                              safeSetState(() {});
                                            }
                                            // deleteWhPostcode
                                            logFirebaseEvent(
                                                'IconButton_deleteWhPostcode');
                                            firestoreBatch.delete(
                                                listViewWarehousePostcodesRecord
                                                    .reference);
                                            // stockMvTran
                                            logFirebaseEvent(
                                                'IconButton_stockMvTran');

                                            var stockMovementTransactionsRecordReference =
                                                StockMovementTransactionsRecord
                                                    .collection
                                                    .doc();
                                            firestoreBatch.set(
                                                stockMovementTransactionsRecordReference,
                                                createStockMovementTransactionsRecordData(
                                                  fromName: widget
                                                      .whDocParam?.displayName,
                                                  productName:
                                                      listViewWarehousePostcodesRecord
                                                          .postCode,
                                                  fromId: widget
                                                      .whDocParam?.reference.id,
                                                  warehouseId: widget
                                                      .whDocParam?.reference.id,
                                                  createdDate:
                                                      getCurrentTimestamp,
                                                  movementType:
                                                      StockMovementEnum
                                                          .postcodeDeleted,
                                                ));
                                            _model.stockMovTran =
                                                StockMovementTransactionsRecord
                                                    .getDocumentFromData(
                                                        createStockMovementTransactionsRecordData(
                                                          fromName: widget
                                                              .whDocParam
                                                              ?.displayName,
                                                          productName:
                                                              listViewWarehousePostcodesRecord
                                                                  .postCode,
                                                          fromId: widget
                                                              .whDocParam
                                                              ?.reference
                                                              .id,
                                                          warehouseId: widget
                                                              .whDocParam
                                                              ?.reference
                                                              .id,
                                                          createdDate:
                                                              getCurrentTimestamp,
                                                          movementType:
                                                              StockMovementEnum
                                                                  .postcodeDeleted,
                                                        ),
                                                        stockMovementTransactionsRecordReference);
                                            _shouldSetState = true;
                                            logFirebaseEvent(
                                                'IconButton_backend_call');

                                            firestoreBatch.update(
                                                _model.stockMovTran!.reference,
                                                createStockMovementTransactionsRecordData(
                                                  transactionId: _model
                                                      .stockMovTran
                                                      ?.reference
                                                      .id,
                                                ));
                                            logFirebaseEvent(
                                                'IconButton_show_snack_bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Postcode deleted successfully from warehouse and its volunteers.',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );
                                          } else {
                                            if (_shouldSetState)
                                              safeSetState(() {});
                                            return;
                                          }
                                        } finally {
                                          await firestoreBatch.commit();
                                        }

                                        if (_shouldSetState)
                                          safeSetState(() {});
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(),
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
