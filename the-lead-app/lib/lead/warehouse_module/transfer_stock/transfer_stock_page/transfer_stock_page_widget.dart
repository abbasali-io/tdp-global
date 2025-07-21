import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/lead/lead_nav_bar/lead_inventory_nav_bar/lead_inventory_nav_bar_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transfer_stock_page_model.dart';
export 'transfer_stock_page_model.dart';

class TransferStockPageWidget extends StatefulWidget {
  const TransferStockPageWidget({
    super.key,
    required this.transferType,
    required this.warehouseProductDoc,
  });

  final String? transferType;
  final WarehouseProductsRecord? warehouseProductDoc;

  static String routeName = 'transferStockPage';
  static String routePath = 'transferStockPage';

  @override
  State<TransferStockPageWidget> createState() =>
      _TransferStockPageWidgetState();
}

class _TransferStockPageWidgetState extends State<TransferStockPageWidget> {
  late TransferStockPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransferStockPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'transferStockPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('TRANSFER_STOCK_transferStockPage_ON_INIT');
      logFirebaseEvent('transferStockPage_update_app_state');
      FFAppState().activePage = 'transfer';
      safeSetState(() {});
      if (widget.transferType == StockTransferType.onlineToOffline.name) {
        await Future.wait([
          Future(() async {
            // calculateOnlineIssued
            logFirebaseEvent('transferStockPage_calculateOnlineIssued');
            _model.apiOnlineStockIssued = await QueryAggregateFunctionsGroup
                .getSumOfWarehouseMovementTransactionsCall
                .call(
              productPortalId: widget.warehouseProductDoc?.productPortalId,
              warehouseId: currentUserDocument?.assignedWarehouseRef?.id,
              movementType: StockMovementEnum.assignedToVolunteer.name,
              stockType: StockTypes.online.name,
            );

            logFirebaseEvent('transferStockPage_update_page_state');
            _model.issuedOnline = valueOrDefault<int>(
              QueryAggregateFunctionsGroup
                  .getSumOfWarehouseMovementTransactionsCall
                  .totalQty(
                (_model.apiOnlineStockIssued?.jsonBody ?? ''),
              ),
              0,
            );
            safeSetState(() {});
          }),
          Future(() async {
            // countOrderItems
            logFirebaseEvent('transferStockPage_countOrderItems');
            _model.apiOrderItemsCount =
                await QueryAggregateFunctionsGroup.getSumOrderItemsQtyCall.call(
              warehouseId: currentUserDocument?.assignedWarehouseRef?.id,
              productPortalId: widget.warehouseProductDoc?.productPortalId,
            );

            logFirebaseEvent('transferStockPage_update_page_state');
            _model.orderReceived = valueOrDefault<int>(
              QueryAggregateFunctionsGroup.getSumOrderItemsQtyCall.totalQty(
                (_model.apiOrderItemsCount?.jsonBody ?? ''),
              ),
              0,
            );
            safeSetState(() {});
          }),
        ]);
        if (_model.issuedOnline >=
            valueOrDefault<int>(
              QueryAggregateFunctionsGroup.getSumOrderItemsQtyCall.totalQty(
                (_model.apiOrderItemsCount?.jsonBody ?? ''),
              ),
              0,
            )) {
          logFirebaseEvent('transferStockPage_update_page_state');
          _model.onlineAvailableToTransfer = valueOrDefault<int>(
            widget.warehouseProductDoc?.onlineStock,
            0,
          );
          safeSetState(() {});
        } else {
          logFirebaseEvent('transferStockPage_update_page_state');
          _model.onlineAvailableToTransfer = valueOrDefault<int>(
            widget.warehouseProductDoc!.onlineStock -
                (valueOrDefault<int>(
                      QueryAggregateFunctionsGroup.getSumOrderItemsQtyCall
                          .totalQty(
                        (_model.apiOrderItemsCount?.jsonBody ?? ''),
                      ),
                      0,
                    ) -
                    valueOrDefault<int>(
                      QueryAggregateFunctionsGroup
                          .getSumOfWarehouseMovementTransactionsCall
                          .totalQty(
                        (_model.apiOnlineStockIssued?.jsonBody ?? ''),
                      ),
                      0,
                    )),
            0,
          );
          safeSetState(() {});
        }
      } else {
        return;
      }
    });

    _model.qtyTxtTextController ??= TextEditingController();
    _model.qtyTxtFocusNode ??= FocusNode();

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
                                  'TRANSFER_STOCK_arrow_back_rounded_ICN_ON');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.goNamed(
                                  StockTransferTypePageWidget.routeName);
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
                        'Transfer Stock',
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
          child: Stack(
            children: [
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'You are transferring \n',
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
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget.transferType ==
                                                StockTransferType
                                                    .onlineToOffline.name
                                            ? 'Online'
                                            : 'Offline',
                                        '-',
                                      ),
                                      style: TextStyle(
                                        color: valueOrDefault<Color>(
                                          widget.transferType ==
                                                  StockTransferType
                                                      .onlineToOffline.name
                                              ? FlutterFlowTheme.of(context)
                                                  .success
                                              : FlutterFlowTheme.of(context)
                                                  .secondary,
                                          FlutterFlowTheme.of(context).success,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' stock to ',
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        widget.transferType ==
                                                StockTransferType
                                                    .onlineToOffline.name
                                            ? 'Offline'
                                            : 'Online',
                                        '-',
                                      ),
                                      style: TextStyle(
                                        color: valueOrDefault<Color>(
                                          widget.transferType ==
                                                  StockTransferType
                                                      .onlineToOffline.name
                                              ? FlutterFlowTheme.of(context)
                                                  .secondary
                                              : FlutterFlowTheme.of(context)
                                                  .success,
                                          FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' stock for',
                                      style: TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    widget.warehouseProductDoc!
                                                        .imageUrl,
                                                    fit: BoxFit.cover,
                                                    errorBuilder: (context,
                                                            error,
                                                            stackTrace) =>
                                                        Image.asset(
                                                      'assets/images/error_image.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    widget.warehouseProductDoc
                                                        ?.name,
                                                    '-',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Current\nOnline Stock',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.warehouseProductDoc
                                                    ?.onlineStock,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.automatic,
                                              ),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Current\nOffline Stock',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.warehouseProductDoc
                                                    ?.offlineStock,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.automatic,
                                              ),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if ((_model.onlineAvailableToTransfer! >= 0) &&
                          (widget.transferType ==
                              StockTransferType.onlineToOffline.name))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Available to Transfer to offline:',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
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
                                      Text(
                                        valueOrDefault<String>(
                                          _model.onlineAvailableToTransfer
                                              ?.toString(),
                                          '0',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
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
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'After deducting the reserved stock for online orders.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
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
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Enter the quantity you want to transfer',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.qtyTxtTextController,
                                focusNode: _model.qtyTxtFocusNode,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  labelText: 'Quantity',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                  hintText: 'e.g. 15',
                                  hintStyle: FlutterFlowTheme.of(context)
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
                                        color: FlutterFlowTheme.of(context)
                                            .placeholders,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .placeholders,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
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
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                                maxLength: 3,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                buildCounter: (context,
                                        {required currentLength,
                                        required isFocused,
                                        maxLength}) =>
                                    null,
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.qtyTxtTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 44.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'TRANSFER_STOCK_CANCEL_BTN_ON_TAP');
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamed(
                                      StockTransferTypePageWidget.routeName);
                                },
                                text: 'Cancel ',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).placeholders,
                                  textStyle: FlutterFlowTheme.of(context)
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
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: (((widget.transferType ==
                                                  StockTransferType
                                                      .onlineToOffline.name) &&
                                              (widget.warehouseProductDoc!
                                                      .onlineStock <=
                                                  0)) ||
                                          ((widget.transferType ==
                                                  StockTransferType
                                                      .offlineToOnline.name) &&
                                              (widget.warehouseProductDoc!
                                                      .offlineStock <=
                                                  0)))
                                      ? null
                                      : () async {
                                          logFirebaseEvent(
                                              'TRANSFER_STOCK_INITIATE_TRANSFER_BTN_ON_');
                                          var _shouldSetState = false;
                                          final firestoreBatch =
                                              FirebaseFirestore.instance
                                                  .batch();
                                          try {
                                            logFirebaseEvent(
                                                'Button_validate_form');
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if ((int avlStock, int transStock) {
                                              return avlStock >= transStock;
                                            }(
                                                valueOrDefault<int>(
                                                  widget.transferType ==
                                                          StockTransferType
                                                              .onlineToOffline
                                                              .name
                                                      ? valueOrDefault<int>(
                                                          _model
                                                              .onlineAvailableToTransfer,
                                                          0,
                                                        )
                                                      : valueOrDefault<int>(
                                                          widget
                                                              .warehouseProductDoc
                                                              ?.offlineStock,
                                                          0,
                                                        ),
                                                  0,
                                                ),
                                                int.parse(_model
                                                    .qtyTxtTextController
                                                    .text))) {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              var confirmDialogResponse =
                                                  await showDialog<bool>(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Transfer Stock?'),
                                                            content: Text(
                                                                'Thsi will transfer your ${widget.transferType == StockTransferType.onlineToOffline.name ? 'Online Stock' : 'Offline Stock'} to ${widget.transferType == StockTransferType.onlineToOffline.name ? 'Offline Stock' : 'Online Stock'} for the selected product.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        false),
                                                                child: Text(
                                                                    'Cancel'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext,
                                                                        true),
                                                                child: Text(
                                                                    'Confirm'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      ) ??
                                                      false;
                                              if (confirmDialogResponse) {
                                                // getLiveStock
                                                logFirebaseEvent(
                                                    'Button_getLiveStock');
                                                _model.liveStock =
                                                    await ProductsGroup
                                                        .getASingleProductCall
                                                        .call(
                                                  productId: widget
                                                      .warehouseProductDoc
                                                      ?.productPortalId,
                                                  warehouseId: widget
                                                      .warehouseProductDoc
                                                      ?.warehousePortalId,
                                                );

                                                _shouldSetState = true;
                                                if ((_model
                                                        .liveStock?.succeeded ??
                                                    true)) {
                                                  // createLiveStockCall
                                                  logFirebaseEvent(
                                                      'Button_createLiveStockCall');

                                                  firestoreBatch.set(
                                                      LiveStockCallsRecord
                                                          .collection
                                                          .doc(),
                                                      createLiveStockCallsRecordData(
                                                        createdDate:
                                                            getCurrentTimestamp,
                                                        createdBy:
                                                            currentUserUid,
                                                        warehouseId:
                                                            currentUserDocument
                                                                ?.assignedWarehouseRef
                                                                ?.id,
                                                        productPortalId: widget
                                                            .warehouseProductDoc
                                                            ?.productPortalId,
                                                        stockMovementType:
                                                            StockMovementEnum
                                                                .assignedToWarehouse
                                                                .name,
                                                        stockTransQty:
                                                            int.tryParse(_model
                                                                .qtyTxtTextController
                                                                .text),
                                                        liveStock: ProductsGroup
                                                            .getASingleProductCall
                                                            .onlineStock(
                                                          (_model.liveStock
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        stockType: widget
                                                            .transferType,
                                                      ));
                                                } else {
                                                  // createAPiFailedDoc
                                                  logFirebaseEvent(
                                                      'Button_createAPiFailedDoc');

                                                  firestoreBatch.set(
                                                      APIFailedRecord.collection
                                                          .doc(),
                                                      createAPIFailedRecordData(
                                                        createdDate:
                                                            getCurrentTimestamp,
                                                        createdBy:
                                                            currentUserUid,
                                                        warehouseId:
                                                            currentUserDocument
                                                                ?.assignedWarehouseRef
                                                                ?.id,
                                                        productPortalId: widget
                                                            .warehouseProductDoc
                                                            ?.productPortalId,
                                                        stockMovementType:
                                                            StockMovementEnum
                                                                .stockTransfer
                                                                .name,
                                                        apiName:
                                                            'getSingleProduct(Products)',
                                                        stockType: widget
                                                            .transferType,
                                                        quantityAttempted:
                                                            int.tryParse(_model
                                                                .qtyTxtTextController
                                                                .text),
                                                      ));
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Network Error !'),
                                                        content: Text(
                                                            'Seems like API is not responding at the movement, Please try again later.'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }

                                                if (widget.transferType ==
                                                    StockTransferType
                                                        .onlineToOffline.name) {
                                                  // updateWebsiteStock
                                                  logFirebaseEvent(
                                                      'Button_updateWebsiteStock');
                                                  _model.apiResultbkk =
                                                      await WarehousesGroup
                                                          .updateOnlineStockCall
                                                          .call(
                                                    warehouseId: widget
                                                        .warehouseProductDoc
                                                        ?.warehousePortalId,
                                                    stockId: widget
                                                        .warehouseProductDoc
                                                        ?.productPortalId,
                                                    newQuantity:
                                                        valueOrDefault<int>(
                                                              ProductsGroup
                                                                  .getASingleProductCall
                                                                  .onlineStock(
                                                                (_model.liveStock
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              0,
                                                            ) -
                                                            valueOrDefault<int>(
                                                              int.tryParse(_model
                                                                  .qtyTxtTextController
                                                                  .text),
                                                              0,
                                                            ),
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model.apiResultbkk
                                                          ?.succeeded ??
                                                      true)) {
                                                    // updateWhProductDoc
                                                    logFirebaseEvent(
                                                        'Button_updateWhProductDoc');

                                                    firestoreBatch.update(
                                                        widget
                                                            .warehouseProductDoc!
                                                            .reference,
                                                        {
                                                          ...mapToFirestore(
                                                            {
                                                              'offlineStock': FieldValue
                                                                  .increment(int
                                                                      .parse(_model
                                                                          .qtyTxtTextController
                                                                          .text)),
                                                              'onlineStock': FieldValue
                                                                  .increment(-(int
                                                                      .parse(_model
                                                                          .qtyTxtTextController
                                                                          .text))),
                                                            },
                                                          ),
                                                        });
                                                  } else {
                                                    // createAPiFailedDoc
                                                    logFirebaseEvent(
                                                        'Button_createAPiFailedDoc');

                                                    firestoreBatch.set(
                                                        APIFailedRecord
                                                            .collection
                                                            .doc(),
                                                        createAPIFailedRecordData(
                                                          createdDate:
                                                              getCurrentTimestamp,
                                                          createdBy:
                                                              currentUserUid,
                                                          warehouseId:
                                                              currentUserDocument
                                                                  ?.assignedWarehouseRef
                                                                  ?.id,
                                                          productPortalId: widget
                                                              .warehouseProductDoc
                                                              ?.productPortalId,
                                                          stockMovementType:
                                                              StockMovementEnum
                                                                  .stockTransfer
                                                                  .name,
                                                          apiName:
                                                              'updateOnlineStock(Products)',
                                                          stockType: widget
                                                              .transferType,
                                                          quantityAttempted: int
                                                              .tryParse(_model
                                                                  .qtyTxtTextController
                                                                  .text),
                                                        ));
                                                    logFirebaseEvent(
                                                        'Button_alert_dialog');
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Network Error !'),
                                                          content: Text(
                                                              'Seems like API is not responding at the movement, Please try again later.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }
                                                } else {
                                                  // updateWebsiteStock
                                                  logFirebaseEvent(
                                                      'Button_updateWebsiteStock');
                                                  _model.apiResultdod =
                                                      await WarehousesGroup
                                                          .updateOnlineStockCall
                                                          .call(
                                                    warehouseId: widget
                                                        .warehouseProductDoc
                                                        ?.warehousePortalId,
                                                    stockId: widget
                                                        .warehouseProductDoc
                                                        ?.productPortalId,
                                                    newQuantity:
                                                        valueOrDefault<int>(
                                                              ProductsGroup
                                                                  .getASingleProductCall
                                                                  .onlineStock(
                                                                (_model.liveStock
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              0,
                                                            ) +
                                                            valueOrDefault<int>(
                                                              int.tryParse(_model
                                                                  .qtyTxtTextController
                                                                  .text),
                                                              0,
                                                            ),
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model.apiResultdod
                                                          ?.succeeded ??
                                                      true)) {
                                                    // updateWhProductDoc
                                                    logFirebaseEvent(
                                                        'Button_updateWhProductDoc');

                                                    firestoreBatch.update(
                                                        widget
                                                            .warehouseProductDoc!
                                                            .reference,
                                                        {
                                                          ...mapToFirestore(
                                                            {
                                                              'offlineStock': FieldValue
                                                                  .increment(-(int
                                                                      .parse(_model
                                                                          .qtyTxtTextController
                                                                          .text))),
                                                              'onlineStock': FieldValue
                                                                  .increment(int
                                                                      .parse(_model
                                                                          .qtyTxtTextController
                                                                          .text)),
                                                            },
                                                          ),
                                                        });
                                                  } else {
                                                    // createAPiFailedDoc
                                                    logFirebaseEvent(
                                                        'Button_createAPiFailedDoc');

                                                    firestoreBatch.set(
                                                        APIFailedRecord
                                                            .collection
                                                            .doc(),
                                                        createAPIFailedRecordData(
                                                          createdDate:
                                                              getCurrentTimestamp,
                                                          createdBy:
                                                              currentUserUid,
                                                          warehouseId:
                                                              currentUserDocument
                                                                  ?.assignedWarehouseRef
                                                                  ?.id,
                                                          productPortalId: widget
                                                              .warehouseProductDoc
                                                              ?.productPortalId,
                                                          stockMovementType:
                                                              StockMovementEnum
                                                                  .stockTransfer
                                                                  .name,
                                                          apiName:
                                                              'updateOnlineStock(Products)',
                                                          stockType: widget
                                                              .transferType,
                                                          quantityAttempted: int
                                                              .tryParse(_model
                                                                  .qtyTxtTextController
                                                                  .text),
                                                        ));
                                                    logFirebaseEvent(
                                                        'Button_alert_dialog');
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Network Error !'),
                                                          content: Text(
                                                              'Seems like API is not responding at the movement, Please try again later.'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }
                                                }

                                                // createStockMovementTran
                                                logFirebaseEvent(
                                                    'Button_createStockMovementTran');

                                                var stockMovementTransactionsRecordReference =
                                                    StockMovementTransactionsRecord
                                                        .collection
                                                        .doc();
                                                firestoreBatch.set(
                                                    stockMovementTransactionsRecordReference,
                                                    createStockMovementTransactionsRecordData(
                                                      fromEntity: EntitiesEnum
                                                          .Warehouse,
                                                      fromName: valueOrDefault(
                                                          currentUserDocument
                                                              ?.assignedWarehouseName,
                                                          ''),
                                                      fromId: currentUserDocument
                                                          ?.assignedWarehouseRef
                                                          ?.id,
                                                      qty: int.tryParse(_model
                                                          .qtyTxtTextController
                                                          .text),
                                                      productName: widget
                                                          .warehouseProductDoc
                                                          ?.name,
                                                      productPortalId: widget
                                                          .warehouseProductDoc
                                                          ?.productPortalId,
                                                      byUserId:
                                                          currentUserReference
                                                              ?.id,
                                                      byUserName:
                                                          currentUserDisplayName,
                                                      createdDate:
                                                          getCurrentTimestamp,
                                                      movementType:
                                                          StockMovementEnum
                                                              .stockTransfer,
                                                      warehouseId:
                                                          currentUserDocument
                                                              ?.assignedWarehouseRef
                                                              ?.id,
                                                      createdBy: currentUserUid,
                                                      toOldQty: widget
                                                                  .transferType ==
                                                              StockTransferType
                                                                  .onlineToOffline
                                                                  .name
                                                          ? widget
                                                              .warehouseProductDoc
                                                              ?.offlineStock
                                                              .toString()
                                                          : widget
                                                              .warehouseProductDoc
                                                              ?.onlineStock
                                                              .toString(),
                                                      fromOldQty: widget
                                                                  .transferType ==
                                                              StockTransferType
                                                                  .onlineToOffline.name
                                                          ? widget
                                                              .warehouseProductDoc
                                                              ?.onlineStock
                                                              .toString()
                                                          : widget
                                                              .warehouseProductDoc
                                                              ?.offlineStock
                                                              .toString(),
                                                      stockTransferType:
                                                          widget.transferType,
                                                      isActive: true,
                                                    ));
                                                _model.transferStockTran =
                                                    StockMovementTransactionsRecord
                                                        .getDocumentFromData(
                                                            createStockMovementTransactionsRecordData(
                                                              fromEntity:
                                                                  EntitiesEnum
                                                                      .Warehouse,
                                                              fromName: valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.assignedWarehouseName,
                                                                  ''),
                                                              fromId: currentUserDocument
                                                                  ?.assignedWarehouseRef
                                                                  ?.id,
                                                              qty: int.tryParse(
                                                                  _model
                                                                      .qtyTxtTextController
                                                                      .text),
                                                              productName: widget
                                                                  .warehouseProductDoc
                                                                  ?.name,
                                                              productPortalId: widget
                                                                  .warehouseProductDoc
                                                                  ?.productPortalId,
                                                              byUserId:
                                                                  currentUserReference
                                                                      ?.id,
                                                              byUserName:
                                                                  currentUserDisplayName,
                                                              createdDate:
                                                                  getCurrentTimestamp,
                                                              movementType:
                                                                  StockMovementEnum
                                                                      .stockTransfer,
                                                              warehouseId:
                                                                  currentUserDocument
                                                                      ?.assignedWarehouseRef
                                                                      ?.id,
                                                              createdBy:
                                                                  currentUserUid,
                                                              toOldQty: widget.transferType ==
                                                                      StockTransferType
                                                                          .onlineToOffline
                                                                          .name
                                                                  ? widget
                                                                      .warehouseProductDoc
                                                                      ?.offlineStock
                                                                      .toString()
                                                                  : widget
                                                                      .warehouseProductDoc
                                                                      ?.onlineStock
                                                                      .toString(),
                                                              fromOldQty: widget
                                                                          .transferType ==
                                                                      StockTransferType
                                                                          .onlineToOffline
                                                                          .name
                                                                  ? widget
                                                                      .warehouseProductDoc
                                                                      ?.onlineStock
                                                                      .toString()
                                                                  : widget
                                                                      .warehouseProductDoc
                                                                      ?.offlineStock
                                                                      .toString(),
                                                              stockTransferType:
                                                                  widget
                                                                      .transferType,
                                                              isActive: true,
                                                            ),
                                                            stockMovementTransactionsRecordReference);
                                                _shouldSetState = true;
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                firestoreBatch.update(
                                                    _model.transferStockTran!
                                                        .reference,
                                                    createStockMovementTransactionsRecordData(
                                                      transactionId: _model
                                                          .transferStockTran
                                                          ?.reference
                                                          .id,
                                                    ));
                                                logFirebaseEvent(
                                                    'Button_show_snack_bar');
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Stock transferd sucessfully...',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .success,
                                                  ),
                                                );
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.goNamed(
                                                    StockTransferTypePageWidget
                                                        .routeName);
                                              } else {
                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              }
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        'Invalid Quantity !'),
                                                    content: Text(
                                                        'Please enter quantity equal or less than current available stock.'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: Text('Ok'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
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
                                  text: 'Initiate Transfer',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
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
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
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
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                    disabledColor: Color(0x4BFF002A),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'TRANSFER_STOCK_Container_36hd3uf1_ON_TAP');
                        logFirebaseEvent(
                            'leadInventoryNavBar_update_app_state');
                        FFAppState().activePage = 'assignStock';
                        safeSetState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.leadInventoryNavBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: LeadInventoryNavBarWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
