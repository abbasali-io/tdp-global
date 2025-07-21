import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'warehosue_product_comp_copy_model.dart';
export 'warehosue_product_comp_copy_model.dart';

class WarehosueProductCompCopyWidget extends StatefulWidget {
  const WarehosueProductCompCopyWidget({
    super.key,
    required this.warehouseProducts,
    required this.userDocRef,
    required this.stockType,
    required this.batchDocParam,
  });

  final WarehouseProductsRecord? warehouseProducts;
  final UsersRecord? userDocRef;
  final String? stockType;
  final BatchesRecord? batchDocParam;

  @override
  State<WarehosueProductCompCopyWidget> createState() =>
      _WarehosueProductCompCopyWidgetState();
}

class _WarehosueProductCompCopyWidgetState
    extends State<WarehosueProductCompCopyWidget> {
  late WarehosueProductCompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarehosueProductCompCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('WAREHOSUE_PRODUCT_COPY_warehosueProductC');
      // sumOfdeliveryItems
      logFirebaseEvent('warehosueProductCompCopy_sumOfdeliveryIt');
      _model.apiDeliveryItemsSum = await QueryAggregateFunctionsGroup
          .getSumOfAllDeliveryItemsWItStatusCall
          .call(
        productPortalId: widget.warehouseProducts?.productPortalId,
        volunteerId: widget.userDocRef?.reference.id,
        isDelivered: false,
      );

      logFirebaseEvent('warehosueProductCompCopy_firestore_query');
      _model.volProductQuery = await queryVolunteerAssignedProductsRecordOnce(
        queryBuilder: (volunteerAssignedProductsRecord) =>
            volunteerAssignedProductsRecord
                .where(
                  'productPortalId',
                  isEqualTo: widget.warehouseProducts?.productPortalId,
                )
                .where(
                  'volunteerRef',
                  isEqualTo: widget.userDocRef?.reference,
                ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      logFirebaseEvent('warehosueProductCompCopy_update_componen');
      _model.deliveryItemsQtyTotal = valueOrDefault<int>(
        QueryAggregateFunctionsGroup.getSumOfAllDeliveryItemsWItStatusCall
            .totalQty(
          (_model.apiDeliveryItemsSum?.jsonBody ?? ''),
        ),
        0,
      );
      safeSetState(() {});
      logFirebaseEvent('warehosueProductCompCopy_update_componen');
      _model.requiredQty = valueOrDefault<int>(
        valueOrDefault<int>(
              _model.deliveryItemsQtyTotal,
              0,
            ) -
            valueOrDefault<int>(
              _model.volProductQuery?.onlineStock,
              0,
            ),
        0,
      );
      safeSetState(() {});
    });

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
      child: StreamBuilder<List<VolunteerAssignedProductsRecord>>(
        stream: queryVolunteerAssignedProductsRecord(
          queryBuilder: (volunteerAssignedProductsRecord) =>
              volunteerAssignedProductsRecord
                  .where(
                    'isActive',
                    isEqualTo: true,
                  )
                  .where(
                    'warehouseProductRef',
                    isEqualTo: widget.warehouseProducts?.reference,
                  )
                  .where(
                    'volunteerRef',
                    isEqualTo: widget.userDocRef?.reference,
                  )
                  .orderBy('Name'),
          singleRecord: true,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<VolunteerAssignedProductsRecord>
              containerVolunteerAssignedProductsRecordList = snapshot.data!;
          final containerVolunteerAssignedProductsRecord =
              containerVolunteerAssignedProductsRecordList.isNotEmpty
                  ? containerVolunteerAssignedProductsRecordList.first
                  : null;

          return Container(
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
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_model.recentlyAssigned != 0)
                        Container(
                          width: double.infinity,
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
                                textAlign: TextAlign.center,
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
                                          .primaryBtnText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  _model.recentlyAssigned.toString(),
                                  '0',
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
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
                                    widget.warehouseProducts?.name,
                                    'N/A',
                                  ),
                                  textAlign: TextAlign.start,
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
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
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Available ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                widget.stockType,
                                                '-',
                                              ),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '\nStock to assign',
                                              style: TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        textAlign: TextAlign.center,
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                  widget.stockType ==
                                                          StockTypes
                                                              .offline.name
                                                      ? valueOrDefault<String>(
                                                          formatNumber(
                                                            widget
                                                                .warehouseProducts
                                                                ?.offlineStock,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                          ),
                                                          '0',
                                                        )
                                                      : valueOrDefault<String>(
                                                          formatNumber(
                                                            widget
                                                                .warehouseProducts
                                                                ?.onlineStock,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                          ),
                                                          '0',
                                                        ),
                                                  '0',
                                                ),
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
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
                                        'Assign\nQty',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                      ),
                                      child: TextFormField(
                                        controller:
                                            _model.assignStockTxtTextController,
                                        focusNode:
                                            _model.assignStockTxtFocusNode,
                                        autofocus: false,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: false,
                                          hintText: '0',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                        TextCapitalization
                                                            .none),
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
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
                                          onPressed: (((widget.stockType ==
                                                          StockTypes
                                                              .offline.name) &&
                                                      (widget.warehouseProducts!
                                                              .offlineStock <=
                                                          0)) ||
                                                  ((widget.stockType ==
                                                          StockTypes
                                                              .online.name) &&
                                                      (widget.warehouseProducts!
                                                              .onlineStock <=
                                                          0)))
                                              ? null
                                              : () async {
                                                  logFirebaseEvent(
                                                      'WAREHOSUE_PRODUCT_COPY_double_arrow_ICN_');
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
                                                    if ((int avlToAssign,
                                                            int assignedStock) {
                                                      return avlToAssign >=
                                                          assignedStock;
                                                    }(
                                                        valueOrDefault<int>(
                                                          widget.stockType ==
                                                                  StockTypes
                                                                      .offline
                                                                      .name
                                                              ? valueOrDefault<
                                                                  int>(
                                                                  widget
                                                                      .warehouseProducts
                                                                      ?.offlineStock,
                                                                  0,
                                                                )
                                                              : valueOrDefault<
                                                                  int>(
                                                                  widget
                                                                      .warehouseProducts
                                                                      ?.onlineStock,
                                                                  0,
                                                                ),
                                                          0,
                                                        ),
                                                        int.parse(_model
                                                            .assignStockTxtTextController
                                                            .text))) {
                                                      // t_createStockMovementTran
                                                      logFirebaseEvent(
                                                          'IconButton_t_createStockMovementTran');

                                                      var stockMovementTransactionsRecordReference =
                                                          StockMovementTransactionsRecord
                                                              .collection
                                                              .doc();
                                                      firestoreBatch.set(
                                                          stockMovementTransactionsRecordReference,
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
                                                            toEntity:
                                                                EntitiesEnum
                                                                    .Volunteer,
                                                            toName: widget
                                                                .userDocRef
                                                                ?.displayName,
                                                            toId: widget
                                                                .userDocRef
                                                                ?.reference
                                                                .id,
                                                            fromOldQty:
                                                                valueOrDefault<
                                                                    String>(
                                                              widget.stockType ==
                                                                      StockTypes
                                                                          .offline
                                                                          .name
                                                                  ? valueOrDefault<
                                                                      String>(
                                                                      formatNumber(
                                                                        widget
                                                                            .warehouseProducts
                                                                            ?.offlineStock,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.automatic,
                                                                      ),
                                                                      '0',
                                                                    )
                                                                  : valueOrDefault<
                                                                      String>(
                                                                      formatNumber(
                                                                        widget
                                                                            .warehouseProducts
                                                                            ?.onlineStock,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.automatic,
                                                                      ),
                                                                      '0',
                                                                    ),
                                                              '0',
                                                            ),
                                                            toOldQty:
                                                                valueOrDefault<
                                                                    String>(
                                                              widget.stockType ==
                                                                      StockTypes
                                                                          .offline
                                                                          .name
                                                                  ? valueOrDefault<
                                                                      String>(
                                                                      formatNumber(
                                                                        containerVolunteerAssignedProductsRecord
                                                                            ?.offlineStock,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.automatic,
                                                                      ),
                                                                      '0',
                                                                    )
                                                                  : valueOrDefault<
                                                                      String>(
                                                                      formatNumber(
                                                                        containerVolunteerAssignedProductsRecord
                                                                            ?.onlineStock,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.automatic,
                                                                      ),
                                                                      '0',
                                                                    ),
                                                              '0',
                                                            ),
                                                            qty: int.tryParse(_model
                                                                .assignStockTxtTextController
                                                                .text),
                                                            productName:
                                                                containerVolunteerAssignedProductsRecord
                                                                    ?.name,
                                                            productPortalId: widget
                                                                .warehouseProducts
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
                                                                    .assignedToVolunteer,
                                                            stockType: widget
                                                                .stockType,
                                                            createdBy:
                                                                currentUserUid,
                                                            warehouseId:
                                                                currentUserDocument
                                                                    ?.assignedWarehouseRef
                                                                    ?.id,
                                                          ));
                                                      _model.newStockTran =
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
                                                                    toEntity:
                                                                        EntitiesEnum
                                                                            .Volunteer,
                                                                    toName: widget
                                                                        .userDocRef
                                                                        ?.displayName,
                                                                    toId: widget
                                                                        .userDocRef
                                                                        ?.reference
                                                                        .id,
                                                                    fromOldQty:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      widget.stockType ==
                                                                              StockTypes
                                                                                  .offline.name
                                                                          ? valueOrDefault<
                                                                              String>(
                                                                              formatNumber(
                                                                                widget.warehouseProducts?.offlineStock,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.automatic,
                                                                              ),
                                                                              '0',
                                                                            )
                                                                          : valueOrDefault<
                                                                              String>(
                                                                              formatNumber(
                                                                                widget.warehouseProducts?.onlineStock,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.automatic,
                                                                              ),
                                                                              '0',
                                                                            ),
                                                                      '0',
                                                                    ),
                                                                    toOldQty:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      widget.stockType ==
                                                                              StockTypes
                                                                                  .offline.name
                                                                          ? valueOrDefault<
                                                                              String>(
                                                                              formatNumber(
                                                                                containerVolunteerAssignedProductsRecord?.offlineStock,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.automatic,
                                                                              ),
                                                                              '0',
                                                                            )
                                                                          : valueOrDefault<
                                                                              String>(
                                                                              formatNumber(
                                                                                containerVolunteerAssignedProductsRecord?.onlineStock,
                                                                                formatType: FormatType.decimal,
                                                                                decimalType: DecimalType.automatic,
                                                                              ),
                                                                              '0',
                                                                            ),
                                                                      '0',
                                                                    ),
                                                                    qty: int.tryParse(_model
                                                                        .assignStockTxtTextController
                                                                        .text),
                                                                    productName:
                                                                        containerVolunteerAssignedProductsRecord
                                                                            ?.name,
                                                                    productPortalId: widget
                                                                        .warehouseProducts
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
                                                                            .assignedToVolunteer,
                                                                    stockType:
                                                                        widget
                                                                            .stockType,
                                                                    createdBy:
                                                                        currentUserUid,
                                                                    warehouseId:
                                                                        currentUserDocument
                                                                            ?.assignedWarehouseRef
                                                                            ?.id,
                                                                  ),
                                                                  stockMovementTransactionsRecordReference);
                                                      _shouldSetState = true;
                                                      // t_updateStockMovementTran
                                                      logFirebaseEvent(
                                                          'IconButton_t_updateStockMovementTran');

                                                      firestoreBatch.update(
                                                          _model.newStockTran!
                                                              .reference,
                                                          createStockMovementTransactionsRecordData(
                                                            transactionId: _model
                                                                .newStockTran
                                                                ?.reference
                                                                .id,
                                                          ));
                                                      // updateVolProductStock
                                                      logFirebaseEvent(
                                                          'IconButton_updateVolProductStock');

                                                      firestoreBatch.update(
                                                          containerVolunteerAssignedProductsRecord!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'totalStock': FieldValue
                                                                    .increment(
                                                                        valueOrDefault<
                                                                            int>(
                                                                  int.tryParse(_model
                                                                      .assignStockTxtTextController
                                                                      .text),
                                                                  0,
                                                                )),
                                                                'offlineStock':
                                                                    FieldValue.increment(
                                                                        valueOrDefault<
                                                                            int>(
                                                                  widget.stockType ==
                                                                          StockTypes
                                                                              .offline
                                                                              .name
                                                                      ? int.tryParse(_model
                                                                          .assignStockTxtTextController
                                                                          .text)
                                                                      : 0,
                                                                  0,
                                                                )),
                                                                'onlineStock':
                                                                    FieldValue.increment(
                                                                        valueOrDefault<
                                                                            int>(
                                                                  widget.stockType ==
                                                                          StockTypes
                                                                              .online
                                                                              .name
                                                                      ? int.tryParse(_model
                                                                          .assignStockTxtTextController
                                                                          .text)
                                                                      : 0,
                                                                  0,
                                                                )),
                                                              },
                                                            ),
                                                          });
                                                      // updateWhProduct
                                                      logFirebaseEvent(
                                                          'IconButton_updateWhProduct');

                                                      firestoreBatch.update(
                                                          widget
                                                              .warehouseProducts!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'totalStock': FieldValue
                                                                    .increment(
                                                                        -(valueOrDefault<
                                                                            int>(
                                                                  int.tryParse(_model
                                                                      .assignStockTxtTextController
                                                                      .text),
                                                                  0,
                                                                ))),
                                                                'offlineStock': FieldValue.increment(-(widget
                                                                            .stockType ==
                                                                        StockTypes
                                                                            .offline
                                                                            .name
                                                                    ? valueOrDefault<
                                                                        int>(
                                                                        int.tryParse(_model
                                                                            .assignStockTxtTextController
                                                                            .text),
                                                                        0,
                                                                      )
                                                                    : 0)),
                                                                'onlineStock': FieldValue.increment(-(widget
                                                                            .stockType ==
                                                                        StockTypes
                                                                            .online
                                                                            .name
                                                                    ? valueOrDefault<
                                                                        int>(
                                                                        int.tryParse(_model
                                                                            .assignStockTxtTextController
                                                                            .text),
                                                                        0,
                                                                      )
                                                                    : 0)),
                                                              },
                                                            ),
                                                          });
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
                                                      logFirebaseEvent(
                                                          'IconButton_show_snack_bar');
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Sucess...',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  1000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .success,
                                                        ),
                                                      );
                                                      logFirebaseEvent(
                                                          'IconButton_trigger_push_notification');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'More Stock Assigned',
                                                        notificationText:
                                                            'The lead of your warehouse has assigned you  ${_model.assignStockTxtTextController.text} ${widget.warehouseProducts?.name}',
                                                        notificationImageUrl:
                                                            widget
                                                                .warehouseProducts
                                                                ?.imageUrl,
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          widget.userDocRef!
                                                              .reference
                                                        ],
                                                        initialPageName:
                                                            'bootstrapPage',
                                                        parameterData: {},
                                                      );
                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    } else {
                                                      logFirebaseEvent(
                                                          'IconButton_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Invalid Quantity !'),
                                                            content: Text(
                                                                'Please enter the quantity equal or less than the available to assign quantity of the product.'),
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
                      if ((_model.requiredQty > 0) &&
                          (widget.stockType == StockTypes.online.name))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: Text(
                                    'Min required to fulfil orders:  ${valueOrDefault<String>(
                                      _model.requiredQty.toString(),
                                      '0',
                                    )}',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .warningOld,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
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
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
