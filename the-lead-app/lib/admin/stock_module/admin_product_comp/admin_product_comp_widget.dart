import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'admin_product_comp_model.dart';
export 'admin_product_comp_model.dart';

class AdminProductCompWidget extends StatefulWidget {
  const AdminProductCompWidget({
    super.key,
    required this.adminProductDocComp,
    required this.warehouseDocParam,
    required this.stockType,
  });

  final AdminProductsRecord? adminProductDocComp;
  final WarehousesRecord? warehouseDocParam;
  final String? stockType;

  @override
  State<AdminProductCompWidget> createState() => _AdminProductCompWidgetState();
}

class _AdminProductCompWidgetState extends State<AdminProductCompWidget> {
  late AdminProductCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminProductCompModel());

    _model.assignStockTxtTextController ??= TextEditingController();
    _model.assignStockTxtFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
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
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).placeholders,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (_model.recentlyAssigned != 0)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Recently Assigned: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    _model.recentlyAssigned.toString(),
                                    '0',
                                  ),
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
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
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
                        ),
                      ],
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.adminProductDocComp?.name,
                                ' -',
                              ),
                              textAlign: TextAlign.start,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 8.0),
                                  child: Text(
                                    'Available\nStock to assign',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .placeholders,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 30.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                widget.adminProductDocComp
                                                    ?.availableStock,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.automatic,
                                              ),
                                              '0',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 0.0, 8.0),
                                  child: Text(
                                    'Assign\nStock',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller:
                                        _model.assignStockTxtTextController,
                                    focusNode: _model.assignStockTxtFocusNode,
                                    autofocus: false,
                                    textCapitalization: TextCapitalization.none,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      hintText: 'e.g. 2',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.poppins(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .placeholders,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                    textAlign: TextAlign.center,
                                    maxLength: 4,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .assignStockTxtTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [
                                      if (!isAndroid && !isiOS)
                                        TextInputFormatter.withFunction(
                                            (oldValue, newValue) {
                                          return TextEditingValue(
                                            selection: newValue.selection,
                                            text: newValue.text
                                                .toCapitalization(
                                                    TextCapitalization.none),
                                          );
                                        }),
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[0-9]'))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 100.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 4.0, 0.0),
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 40.0,
                                      borderWidth: 1.0,
                                      buttonSize: 50.0,
                                      disabledIconColor:
                                          FlutterFlowTheme.of(context)
                                              .placeholders,
                                      icon: Icon(
                                        Icons.double_arrow,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 40.0,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed:
                                          (widget.adminProductDocComp!
                                                      .availableStock <=
                                                  0)
                                              ? null
                                              : () async {
                                                  logFirebaseEvent(
                                                      'ADMIN_PRODUCT_double_arrow_ICN_ON_TAP');
                                                  var _shouldSetState = false;
                                                  final firestoreBatch =
                                                      FirebaseFirestore.instance
                                                          .batch();
                                                  try {
                                                    logFirebaseEvent(
                                                        'IconButton_validate_form');
                                                    if (_model.formKey
                                                                .currentState ==
                                                            null ||
                                                        !_model.formKey
                                                            .currentState!
                                                            .validate()) {
                                                      return;
                                                    }
                                                    if ((int avlStock,
                                                            int assignStock) {
                                                      return avlStock >=
                                                          assignStock;
                                                    }(
                                                        widget
                                                            .adminProductDocComp!
                                                            .availableStock,
                                                        int.parse(_model
                                                            .assignStockTxtTextController
                                                            .text))) {
                                                      // queryWarehouseProduct
                                                      logFirebaseEvent(
                                                          'IconButton_queryWarehouseProduct');
                                                      _model.whProductQuery =
                                                          await queryWarehouseProductsRecordOnce(
                                                        queryBuilder:
                                                            (warehouseProductsRecord) =>
                                                                warehouseProductsRecord
                                                                    .where(
                                                                      'warehouseRef',
                                                                      isEqualTo: widget
                                                                          .warehouseDocParam
                                                                          ?.reference,
                                                                    )
                                                                    .where(
                                                                      'productPortalId',
                                                                      isEqualTo: widget
                                                                          .adminProductDocComp
                                                                          ?.productPortalId,
                                                                    ),
                                                        singleRecord: true,
                                                      ).then((s) =>
                                                              s.firstOrNull);
                                                      _shouldSetState = true;
                                                      if (widget.stockType ==
                                                          StockTypes
                                                              .online.name) {
                                                        // getCurrentLiveStock
                                                        logFirebaseEvent(
                                                            'IconButton_getCurrentLiveStock');
                                                        _model.liveStock =
                                                            await ProductsGroup
                                                                .getASingleProductCall
                                                                .call(
                                                          productId: _model
                                                              .whProductQuery
                                                              ?.productPortalId,
                                                          warehouseId: _model
                                                              .whProductQuery
                                                              ?.warehousePortalId,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model.liveStock
                                                                ?.succeeded ??
                                                            true)) {
                                                          // createLiveStockCall
                                                          logFirebaseEvent(
                                                              'IconButton_createLiveStockCall');

                                                          firestoreBatch.set(
                                                              LiveStockCallsRecord
                                                                  .collection
                                                                  .doc(),
                                                              createLiveStockCallsRecordData(
                                                                createdDate:
                                                                    getCurrentTimestamp,
                                                                createdBy:
                                                                    currentUserUid,
                                                                warehouseId: widget
                                                                    .warehouseDocParam
                                                                    ?.reference
                                                                    .id,
                                                                productPortalId: widget
                                                                    .adminProductDocComp
                                                                    ?.productPortalId,
                                                                stockMovementType:
                                                                    StockMovementEnum
                                                                        .assignedToWarehouse
                                                                        .name,
                                                                liveStock:
                                                                    valueOrDefault<
                                                                        int>(
                                                                  ProductsGroup
                                                                      .getASingleProductCall
                                                                      .onlineStock(
                                                                    (_model.liveStock
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  0,
                                                                ),
                                                                stockTransQty: int
                                                                    .tryParse(_model
                                                                        .assignStockTxtTextController
                                                                        .text),
                                                                stockType: widget
                                                                    .stockType,
                                                              ));
                                                          // updateLiveStock
                                                          logFirebaseEvent(
                                                              'IconButton_updateLiveStock');
                                                          _model.apiResultp6u =
                                                              await WarehousesGroup
                                                                  .updateOnlineStockCall
                                                                  .call(
                                                            warehouseId: _model
                                                                .whProductQuery
                                                                ?.warehousePortalId,
                                                            stockId: _model
                                                                .whProductQuery
                                                                ?.productPortalId,
                                                            newQuantity:
                                                                valueOrDefault<
                                                                    int>(
                                                              (ProductsGroup
                                                                      .getASingleProductCall
                                                                      .onlineStock(
                                                                    (_model.liveStock
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!) +
                                                                  int.parse(_model
                                                                      .assignStockTxtTextController
                                                                      .text),
                                                              0,
                                                            ),
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if (!(_model
                                                                  .apiResultp6u
                                                                  ?.succeeded ??
                                                              true)) {
                                                            // createAPiFailedDoc
                                                            logFirebaseEvent(
                                                                'IconButton_createAPiFailedDoc');

                                                            firestoreBatch.set(
                                                                APIFailedRecord
                                                                    .collection
                                                                    .doc(),
                                                                createAPIFailedRecordData(
                                                                  createdDate:
                                                                      getCurrentTimestamp,
                                                                  createdBy:
                                                                      currentUserUid,
                                                                  warehouseId: widget
                                                                      .warehouseDocParam
                                                                      ?.reference
                                                                      .id,
                                                                  productPortalId: widget
                                                                      .adminProductDocComp
                                                                      ?.productPortalId,
                                                                  stockMovementType:
                                                                      StockMovementEnum
                                                                          .assignedToWarehouse
                                                                          .name,
                                                                  apiName:
                                                                      'updateOnlineStock(Warehouse)',
                                                                  stockType: widget
                                                                      .stockType,
                                                                  quantityAttempted:
                                                                      int.tryParse(_model
                                                                          .assignStockTxtTextController
                                                                          .text),
                                                                ));
                                                            logFirebaseEvent(
                                                                'IconButton_alert_dialog');
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'API call failed !'),
                                                                  content: Text(
                                                                      'It seems API is not responding at the moment. Please try again later.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                            if (_shouldSetState)
                                                              safeSetState(
                                                                  () {});
                                                            return;
                                                          }
                                                        } else {
                                                          // createAPiFailedDoc
                                                          logFirebaseEvent(
                                                              'IconButton_createAPiFailedDoc');

                                                          firestoreBatch.set(
                                                              APIFailedRecord
                                                                  .collection
                                                                  .doc(),
                                                              createAPIFailedRecordData(
                                                                createdDate:
                                                                    getCurrentTimestamp,
                                                                createdBy:
                                                                    currentUserUid,
                                                                warehouseId: widget
                                                                    .warehouseDocParam
                                                                    ?.reference
                                                                    .id,
                                                                productPortalId: widget
                                                                    .adminProductDocComp
                                                                    ?.productPortalId,
                                                                stockMovementType:
                                                                    StockMovementEnum
                                                                        .assignedToWarehouse
                                                                        .name,
                                                                apiName:
                                                                    'getSingleProduct(LiveStock)',
                                                                stockType: widget
                                                                    .stockType,
                                                                quantityAttempted:
                                                                    int.tryParse(_model
                                                                        .assignStockTxtTextController
                                                                        .text),
                                                              ));
                                                          logFirebaseEvent(
                                                              'IconButton_alert_dialog');
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'API call failed !'),
                                                                content: Text(
                                                                    'It seems API is not responding at the moment. Please try again later.'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
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
                                                          'IconButton_createStockMovementTran');

                                                      var stockMovementTransactionsRecordReference =
                                                          StockMovementTransactionsRecord
                                                              .collection
                                                              .doc();
                                                      firestoreBatch.set(
                                                          stockMovementTransactionsRecordReference,
                                                          createStockMovementTransactionsRecordData(
                                                            fromName:
                                                                currentUserDisplayName,
                                                            fromId:
                                                                currentUserReference
                                                                    ?.id,
                                                            toName: widget
                                                                .warehouseDocParam
                                                                ?.displayName,
                                                            toId: widget
                                                                .warehouseDocParam
                                                                ?.reference
                                                                .id,
                                                            fromOldQty: widget
                                                                .adminProductDocComp
                                                                ?.availableStock
                                                                .toString(),
                                                            toOldQty: widget
                                                                        .stockType ==
                                                                    StockTypes
                                                                        .online
                                                                        .name
                                                                ? _model
                                                                    .whProductQuery
                                                                    ?.onlineStock
                                                                    .toString()
                                                                : _model
                                                                    .whProductQuery
                                                                    ?.offlineStock
                                                                    .toString(),
                                                            qty: int.tryParse(_model
                                                                .assignStockTxtTextController
                                                                .text),
                                                            productName: widget
                                                                .adminProductDocComp
                                                                ?.name,
                                                            productPortalId: widget
                                                                .adminProductDocComp
                                                                ?.productPortalId,
                                                            byUserId:
                                                                currentUserReference
                                                                    ?.id,
                                                            createdDate:
                                                                getCurrentTimestamp,
                                                            movementType:
                                                                StockMovementEnum
                                                                    .assignedToWarehouse,
                                                            fromEntity:
                                                                EntitiesEnum
                                                                    .Admin,
                                                            toEntity:
                                                                EntitiesEnum
                                                                    .Warehouse,
                                                            stockType: widget
                                                                .stockType,
                                                            warehouseId: widget
                                                                .warehouseDocParam
                                                                ?.reference
                                                                .id,
                                                            createdBy:
                                                                currentUserUid,
                                                            isActive: true,
                                                          ));
                                                      _model.stockMovementTran =
                                                          StockMovementTransactionsRecord
                                                              .getDocumentFromData(
                                                                  createStockMovementTransactionsRecordData(
                                                                    fromName:
                                                                        currentUserDisplayName,
                                                                    fromId:
                                                                        currentUserReference
                                                                            ?.id,
                                                                    toName: widget
                                                                        .warehouseDocParam
                                                                        ?.displayName,
                                                                    toId: widget
                                                                        .warehouseDocParam
                                                                        ?.reference
                                                                        .id,
                                                                    fromOldQty: widget
                                                                        .adminProductDocComp
                                                                        ?.availableStock
                                                                        .toString(),
                                                                    toOldQty: widget.stockType ==
                                                                            StockTypes
                                                                                .online.name
                                                                        ? _model
                                                                            .whProductQuery
                                                                            ?.onlineStock
                                                                            .toString()
                                                                        : _model
                                                                            .whProductQuery
                                                                            ?.offlineStock
                                                                            .toString(),
                                                                    qty: int.tryParse(_model
                                                                        .assignStockTxtTextController
                                                                        .text),
                                                                    productName:
                                                                        widget
                                                                            .adminProductDocComp
                                                                            ?.name,
                                                                    productPortalId: widget
                                                                        .adminProductDocComp
                                                                        ?.productPortalId,
                                                                    byUserId:
                                                                        currentUserReference
                                                                            ?.id,
                                                                    createdDate:
                                                                        getCurrentTimestamp,
                                                                    movementType:
                                                                        StockMovementEnum
                                                                            .assignedToWarehouse,
                                                                    fromEntity:
                                                                        EntitiesEnum
                                                                            .Admin,
                                                                    toEntity:
                                                                        EntitiesEnum
                                                                            .Warehouse,
                                                                    stockType:
                                                                        widget
                                                                            .stockType,
                                                                    warehouseId: widget
                                                                        .warehouseDocParam
                                                                        ?.reference
                                                                        .id,
                                                                    createdBy:
                                                                        currentUserUid,
                                                                    isActive:
                                                                        true,
                                                                  ),
                                                                  stockMovementTransactionsRecordReference);
                                                      _shouldSetState = true;
                                                      // updateStockMovementTran
                                                      logFirebaseEvent(
                                                          'IconButton_updateStockMovementTran');

                                                      firestoreBatch.update(
                                                          _model
                                                              .stockMovementTran!
                                                              .reference,
                                                          createStockMovementTransactionsRecordData(
                                                            transactionId: _model
                                                                .stockMovementTran
                                                                ?.reference
                                                                .id,
                                                          ));
                                                      // updateAdminProductStock
                                                      logFirebaseEvent(
                                                          'IconButton_updateAdminProductStock');

                                                      firestoreBatch.update(
                                                          widget
                                                              .adminProductDocComp!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'availableStock':
                                                                    FieldValue.increment(-(int.parse(_model
                                                                        .assignStockTxtTextController
                                                                        .text))),
                                                              },
                                                            ),
                                                          });
                                                      if (widget.stockType ==
                                                          StockTypes
                                                              .online.name) {
                                                        // updateWhOnlineProductStock
                                                        logFirebaseEvent(
                                                            'IconButton_updateWhOnlineProductStock');

                                                        firestoreBatch.update(
                                                            _model
                                                                .whProductQuery!
                                                                .reference,
                                                            {
                                                              ...mapToFirestore(
                                                                {
                                                                  'totalStock': FieldValue.increment(
                                                                      int.parse(_model
                                                                          .assignStockTxtTextController
                                                                          .text)),
                                                                  'onlineStock':
                                                                      FieldValue.increment(int.parse(_model
                                                                          .assignStockTxtTextController
                                                                          .text)),
                                                                },
                                                              ),
                                                            });
                                                        logFirebaseEvent(
                                                            'IconButton_show_snack_bar');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Online Stock assigned successfully.',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                          ),
                                                        );
                                                      } else {
                                                        // updateWhOfflineProductStock
                                                        logFirebaseEvent(
                                                            'IconButton_updateWhOfflineProductStock');

                                                        firestoreBatch.update(
                                                            _model
                                                                .whProductQuery!
                                                                .reference,
                                                            {
                                                              ...mapToFirestore(
                                                                {
                                                                  'totalStock': FieldValue.increment(
                                                                      int.parse(_model
                                                                          .assignStockTxtTextController
                                                                          .text)),
                                                                  'offlineStock':
                                                                      FieldValue.increment(int.parse(_model
                                                                          .assignStockTxtTextController
                                                                          .text)),
                                                                },
                                                              ),
                                                            });
                                                        logFirebaseEvent(
                                                            'IconButton_show_snack_bar');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Offline Stock assigned successfully.',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .success,
                                                          ),
                                                        );
                                                      }

                                                      logFirebaseEvent(
                                                          'IconButton_update_component_state');
                                                      _model.recentlyAssigned =
                                                          int.parse(_model
                                                              .assignStockTxtTextController
                                                              .text);
                                                      logFirebaseEvent(
                                                          'IconButton_clear_text_fields_pin_codes');
                                                      safeSetState(() {
                                                        _model
                                                            .assignStockTxtTextController
                                                            ?.clear();
                                                      });
                                                    } else {
                                                      logFirebaseEvent(
                                                          'IconButton_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Invalid Quantity!'),
                                                            content: Text(
                                                                'Please enter the quantity equal to or less than the available stock'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
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
                                                    await firestoreBatch
                                                        .commit();
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
