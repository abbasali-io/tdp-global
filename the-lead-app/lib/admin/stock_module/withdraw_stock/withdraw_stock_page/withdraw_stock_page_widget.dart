import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'withdraw_stock_page_model.dart';
export 'withdraw_stock_page_model.dart';

class WithdrawStockPageWidget extends StatefulWidget {
  const WithdrawStockPageWidget({
    super.key,
    required this.stockType,
    required this.warehouseProductDoc,
    required this.whDocParam,
  });

  final String? stockType;
  final WarehouseProductsRecord? warehouseProductDoc;
  final WarehousesRecord? whDocParam;

  static String routeName = 'withdrawStockPage';
  static String routePath = 'withdrawStockPage';

  @override
  State<WithdrawStockPageWidget> createState() =>
      _WithdrawStockPageWidgetState();
}

class _WithdrawStockPageWidgetState extends State<WithdrawStockPageWidget> {
  late WithdrawStockPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WithdrawStockPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'withdrawStockPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('WITHDRAW_STOCK_withdrawStockPage_ON_INIT');
      logFirebaseEvent('withdrawStockPage_update_app_state');
      FFAppState().activePage = 'transfer';
      safeSetState(() {});
      if (widget.stockType == StockTypes.online.name) {
        await Future.wait([
          Future(() async {
            // calculateOnlineIssued
            logFirebaseEvent('withdrawStockPage_calculateOnlineIssued');
            _model.apiOnlineStockIssued = await QueryAggregateFunctionsGroup
                .getSumOfWarehouseMovementTransactionsCall
                .call(
              productPortalId: widget.warehouseProductDoc?.productPortalId,
              warehouseId: widget.whDocParam?.reference.id,
              movementType: StockMovementEnum.assignedToVolunteer.name,
              stockType: StockTypes.online.name,
            );

            logFirebaseEvent('withdrawStockPage_update_page_state');
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
            logFirebaseEvent('withdrawStockPage_countOrderItems');
            _model.apiOrderItemsCount =
                await QueryAggregateFunctionsGroup.getSumOrderItemsQtyCall.call(
              warehouseId: widget.whDocParam?.reference.id,
              productPortalId: widget.warehouseProductDoc?.productPortalId,
            );

            logFirebaseEvent('withdrawStockPage_update_page_state');
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
          logFirebaseEvent('withdrawStockPage_update_page_state');
          _model.onlineAvailableToTransfer = valueOrDefault<int>(
            widget.warehouseProductDoc?.onlineStock,
            0,
          );
          safeSetState(() {});
        } else {
          logFirebaseEvent('withdrawStockPage_update_page_state');
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
                                    'WITHDRAW_STOCK_arrow_back_rounded_ICN_ON');
                                logFirebaseEvent('IconButton_navigate_to');

                                context.goNamed(
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
                          'Withdraw Stock',
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
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'You are withdrawing \n',
                                    style: FlutterFlowTheme.of(context)
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
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.stockType,
                                      '-',
                                    ),
                                    style: TextStyle(
                                      color: valueOrDefault<Color>(
                                        widget.stockType ==
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
                                    text: ' stock from ',
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
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      widget.whDocParam?.displayName,
                                      '-',
                                    ),
                                    style: TextStyle(
                                      color: valueOrDefault<Color>(
                                        widget.stockType ==
                                                StockTransferType
                                                    .onlineToOffline.name
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .success,
                                        FlutterFlowTheme.of(context).secondary,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' warehouse',
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
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                                  errorBuilder: (context, error,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Current Stock',
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            widget.stockType ==
                                                    StockTypes.online.name
                                                ? valueOrDefault<String>(
                                                    formatNumber(
                                                      widget
                                                          .warehouseProductDoc
                                                          ?.onlineStock,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType:
                                                          DecimalType.automatic,
                                                    ),
                                                    '0',
                                                  )
                                                : valueOrDefault<String>(
                                                    formatNumber(
                                                      widget
                                                          .warehouseProductDoc
                                                          ?.offlineStock,
                                                      formatType:
                                                          FormatType.decimal,
                                                      decimalType:
                                                          DecimalType.automatic,
                                                    ),
                                                    '0',
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if ((_model.onlineAvailableToTransfer! >= 0) &&
                        (widget.stockType == StockTypes.online.name))
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
                                      'Available to withdraw online Stock:',
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
                                            color: FlutterFlowTheme.of(context)
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
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
                                hintText: 'e.g. 15',
                                hintStyle: FlutterFlowTheme.of(context)
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
                                    color: FlutterFlowTheme.of(context).success,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'WITHDRAW_STOCK_CANCEL_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.goNamed(
                                    AdminAvailableStockPageWidget.routeName);
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
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
                                onPressed: (((widget.stockType ==
                                                StockTypes.online.name) &&
                                            (widget.warehouseProductDoc!
                                                    .onlineStock <=
                                                0)) ||
                                        ((widget.stockType ==
                                                StockTypes.offline.name) &&
                                            (widget.warehouseProductDoc!
                                                    .offlineStock <=
                                                0)))
                                    ? null
                                    : () async {
                                        logFirebaseEvent(
                                            'WITHDRAW_STOCK_INITIATE_TRANSFER_BTN_ON_');
                                        var _shouldSetState = false;
                                        final firestoreBatch =
                                            FirebaseFirestore.instance.batch();
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
                                                widget.stockType ==
                                                        StockTypes.online.name
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
                                                              'Withdraw Stock?'),
                                                          content: Text(
                                                              'This will withdraw the stock from warehouse inventory and decrease from the website.'),
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
                                              // GetAmindProduct
                                              logFirebaseEvent(
                                                  'Button_GetAmindProduct');
                                              _model.adminProductQuery =
                                                  await queryAdminProductsRecordOnce(
                                                queryBuilder:
                                                    (adminProductsRecord) =>
                                                        adminProductsRecord
                                                            .where(
                                                  'productPortalId',
                                                  isEqualTo: widget
                                                      .warehouseProductDoc
                                                      ?.productPortalId,
                                                ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              _shouldSetState = true;
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
                                                warehouseId: widget.whDocParam
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
                                                      createdBy: currentUserUid,
                                                      warehouseId: widget
                                                          .whDocParam
                                                          ?.warehouseId,
                                                      productPortalId: widget
                                                          .warehouseProductDoc
                                                          ?.productPortalId,
                                                      stockMovementType:
                                                          StockMovementEnum
                                                              .withdrawByAdmin
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
                                                      stockType:
                                                          widget.stockType,
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
                                                      createdBy: currentUserUid,
                                                      warehouseId: widget
                                                          .whDocParam
                                                          ?.warehouseId,
                                                      productPortalId: widget
                                                          .warehouseProductDoc
                                                          ?.productPortalId,
                                                      stockMovementType:
                                                          StockMovementEnum
                                                              .withdrawByAdmin
                                                              .name,
                                                      apiName:
                                                          'getSingleProduct(Products)',
                                                      stockType:
                                                          widget.stockType,
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

                                              if (widget.stockType ==
                                                  StockTypes.online.name) {
                                                // updateWebsiteStock
                                                logFirebaseEvent(
                                                    'Button_updateWebsiteStock');
                                                _model.apiResultbkk =
                                                    await WarehousesGroup
                                                        .updateOnlineStockCall
                                                        .call(
                                                  warehouseId: widget
                                                      .whDocParam
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
                                                  // createStockMovementTran
                                                  logFirebaseEvent(
                                                      'Button_createStockMovementTran');

                                                  var stockMovementTransactionsRecordReference1 =
                                                      StockMovementTransactionsRecord
                                                          .collection
                                                          .doc();
                                                  firestoreBatch.set(
                                                      stockMovementTransactionsRecordReference1,
                                                      createStockMovementTransactionsRecordData(
                                                        fromEntity: EntitiesEnum
                                                            .Warehouse,
                                                        fromName: widget
                                                            .whDocParam
                                                            ?.displayName,
                                                        fromId: widget
                                                            .whDocParam
                                                            ?.warehouseId,
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
                                                                .withdrawByAdmin,
                                                        warehouseId: widget
                                                            .whDocParam
                                                            ?.warehouseId,
                                                        createdBy:
                                                            currentUserUid,
                                                        toOldQty: _model
                                                            .adminProductQuery
                                                            ?.availableStock
                                                            .toString(),
                                                        fromOldQty: widget
                                                            .warehouseProductDoc
                                                            ?.onlineStock
                                                            .toString(),
                                                        isActive: true,
                                                        stockType:
                                                            widget.stockType,
                                                      ));
                                                  _model.withdrawStockTranOnline =
                                                      StockMovementTransactionsRecord
                                                          .getDocumentFromData(
                                                              createStockMovementTransactionsRecordData(
                                                                fromEntity:
                                                                    EntitiesEnum
                                                                        .Warehouse,
                                                                fromName: widget
                                                                    .whDocParam
                                                                    ?.displayName,
                                                                fromId: widget
                                                                    .whDocParam
                                                                    ?.warehouseId,
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
                                                                        .withdrawByAdmin,
                                                                warehouseId: widget
                                                                    .whDocParam
                                                                    ?.warehouseId,
                                                                createdBy:
                                                                    currentUserUid,
                                                                toOldQty: _model
                                                                    .adminProductQuery
                                                                    ?.availableStock
                                                                    .toString(),
                                                                fromOldQty: widget
                                                                    .warehouseProductDoc
                                                                    ?.onlineStock
                                                                    .toString(),
                                                                isActive: true,
                                                                stockType: widget
                                                                    .stockType,
                                                              ),
                                                              stockMovementTransactionsRecordReference1);
                                                  _shouldSetState = true;
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  firestoreBatch.update(
                                                      _model
                                                          .withdrawStockTranOnline!
                                                          .reference,
                                                      createStockMovementTransactionsRecordData(
                                                        transactionId: _model
                                                            .withdrawStockTranOnline
                                                            ?.reference
                                                            .id,
                                                      ));
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
                                                            'onlineStock': FieldValue
                                                                .increment(-(int
                                                                    .parse(_model
                                                                        .qtyTxtTextController
                                                                        .text))),
                                                            'totalStock': FieldValue
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
                                                      APIFailedRecord.collection
                                                          .doc(),
                                                      createAPIFailedRecordData(
                                                        createdDate:
                                                            getCurrentTimestamp,
                                                        createdBy:
                                                            currentUserUid,
                                                        warehouseId: widget
                                                            .whDocParam
                                                            ?.warehouseId,
                                                        productPortalId: widget
                                                            .warehouseProductDoc
                                                            ?.productPortalId,
                                                        stockMovementType:
                                                            StockMovementEnum
                                                                .withdrawByAdmin
                                                                .name,
                                                        apiName:
                                                            'updateOnlineStock(Products)',
                                                        stockType:
                                                            widget.stockType,
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
                                              } else {
                                                // createStockMovementTran
                                                logFirebaseEvent(
                                                    'Button_createStockMovementTran');

                                                var stockMovementTransactionsRecordReference2 =
                                                    StockMovementTransactionsRecord
                                                        .collection
                                                        .doc();
                                                firestoreBatch.set(
                                                    stockMovementTransactionsRecordReference2,
                                                    createStockMovementTransactionsRecordData(
                                                      fromEntity: EntitiesEnum
                                                          .Warehouse,
                                                      fromName: widget
                                                          .whDocParam
                                                          ?.displayName,
                                                      fromId: widget.whDocParam
                                                          ?.warehouseId,
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
                                                              .withdrawByAdmin,
                                                      warehouseId: widget
                                                          .whDocParam
                                                          ?.warehouseId,
                                                      createdBy: currentUserUid,
                                                      toOldQty: _model
                                                          .adminProductQuery
                                                          ?.availableStock
                                                          .toString(),
                                                      fromOldQty: widget
                                                          .warehouseProductDoc
                                                          ?.offlineStock
                                                          .toString(),
                                                      stockTransferType:
                                                          widget.stockType,
                                                      isActive: true,
                                                      stockType:
                                                          widget.stockType,
                                                    ));
                                                _model.withdrawStockTranOffline =
                                                    StockMovementTransactionsRecord
                                                        .getDocumentFromData(
                                                            createStockMovementTransactionsRecordData(
                                                              fromEntity:
                                                                  EntitiesEnum
                                                                      .Warehouse,
                                                              fromName: widget
                                                                  .whDocParam
                                                                  ?.displayName,
                                                              fromId: widget
                                                                  .whDocParam
                                                                  ?.warehouseId,
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
                                                                      .withdrawByAdmin,
                                                              warehouseId: widget
                                                                  .whDocParam
                                                                  ?.warehouseId,
                                                              createdBy:
                                                                  currentUserUid,
                                                              toOldQty: _model
                                                                  .adminProductQuery
                                                                  ?.availableStock
                                                                  .toString(),
                                                              fromOldQty: widget
                                                                  .warehouseProductDoc
                                                                  ?.offlineStock
                                                                  .toString(),
                                                              stockTransferType:
                                                                  widget
                                                                      .stockType,
                                                              isActive: true,
                                                              stockType: widget
                                                                  .stockType,
                                                            ),
                                                            stockMovementTransactionsRecordReference2);
                                                _shouldSetState = true;
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                firestoreBatch.update(
                                                    _model
                                                        .withdrawStockTranOffline!
                                                        .reference,
                                                    createStockMovementTransactionsRecordData(
                                                      transactionId: _model
                                                          .withdrawStockTranOffline
                                                          ?.reference
                                                          .id,
                                                    ));
                                                // updateWhProductDoc
                                                logFirebaseEvent(
                                                    'Button_updateWhProductDoc');

                                                firestoreBatch.update(
                                                    widget.warehouseProductDoc!
                                                        .reference,
                                                    {
                                                      ...mapToFirestore(
                                                        {
                                                          'offlineStock': FieldValue
                                                              .increment(-(int
                                                                  .parse(_model
                                                                      .qtyTxtTextController
                                                                      .text))),
                                                          'totalStock': FieldValue
                                                              .increment(-(int
                                                                  .parse(_model
                                                                      .qtyTxtTextController
                                                                      .text))),
                                                        },
                                                      ),
                                                    });
                                              }

                                              // updateAdminProduct
                                              logFirebaseEvent(
                                                  'Button_updateAdminProduct');

                                              firestoreBatch.update(
                                                  _model.adminProductQuery!
                                                      .reference,
                                                  {
                                                    ...mapToFirestore(
                                                      {
                                                        'availableStock':
                                                            FieldValue.increment(
                                                                int.parse(_model
                                                                    .qtyTxtTextController
                                                                    .text)),
                                                      },
                                                    ),
                                                  });
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
                                                  'Button_firestore_query');
                                              _model.whLead =
                                                  await queryUsersRecordOnce(
                                                queryBuilder: (usersRecord) =>
                                                    usersRecord
                                                        .where(
                                                          'assignedWarehouseRef',
                                                          isEqualTo: widget
                                                              .whDocParam
                                                              ?.reference,
                                                        )
                                                        .where(
                                                          'userRole',
                                                          isEqualTo: UserRole
                                                              .lead.name,
                                                        ),
                                                singleRecord: true,
                                              ).then((s) => s.firstOrNull);
                                              _shouldSetState = true;
                                              logFirebaseEvent(
                                                  'Button_trigger_push_notification');
                                              triggerPushNotification(
                                                notificationTitle:
                                                    'Stock Withdrawn!',
                                                notificationText:
                                                    'Admin has withdrawn ${_model.qtyTxtTextController.text} boxes of ${valueOrDefault<String>(
                                                  widget.warehouseProductDoc
                                                      ?.name,
                                                  'dates',
                                                )} from your warehouse from ${widget.stockType} stock.',
                                                notificationSound: 'default',
                                                userRefs: [
                                                  _model.whLead!.reference
                                                ],
                                                initialPageName:
                                                    'warehouseCurrentStockPage',
                                                parameterData: {},
                                              );
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed(
                                                  AdminAvailableStockPageWidget
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
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
          ),
        ),
      ),
    );
  }
}
