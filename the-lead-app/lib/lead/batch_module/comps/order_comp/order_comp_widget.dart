import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'order_comp_model.dart';
export 'order_comp_model.dart';

class OrderCompWidget extends StatefulWidget {
  const OrderCompWidget({
    super.key,
    required this.bartchRefParam,
    required this.userDocParam,
    required this.orderDocParam,
  });

  final DocumentReference? bartchRefParam;
  final UsersRecord? userDocParam;
  final OrdersRecord? orderDocParam;

  @override
  State<OrderCompWidget> createState() => _OrderCompWidgetState();
}

class _OrderCompWidgetState extends State<OrderCompWidget> {
  late OrderCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderCompModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
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
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '#${widget.orderDocParam?.orderNumber}',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                    ),
                    Text(
                      dateTimeFormat(
                        "d/M/y",
                        widget.orderDocParam!.orderPlaced!,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
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
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).placeholders,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: Text(
                          '${widget.orderDocParam?.deliveryFirstname} ${widget.orderDocParam?.deliverySurname}',
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
                    ),
                    Text(
                      '£ ${valueOrDefault<String>(
                        formatNumber(
                          widget.orderDocParam?.orderAmount,
                          formatType: FormatType.decimal,
                          decimalType: DecimalType.automatic,
                        ),
                        '0',
                      )}',
                      style: FlutterFlowTheme.of(context).labelLarge.override(
                            font: GoogleFonts.poppins(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Icon(
                        Icons.store_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        widget.orderDocParam!.assignedWarehouse,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
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
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Icon(
                        Icons.location_pin,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '${widget.orderDocParam?.deliveryAddressline1} ${widget.orderDocParam?.deliveryAddressline2}',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
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
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            widget.orderDocParam!.deliveryPostcode,
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (widget.orderDocParam?.deliveryNote != null &&
                            widget.orderDocParam?.deliveryNote != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.speaker_notes_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                          ),
                        if (widget.orderDocParam?.giftCardFromMessage !=
                                null &&
                            widget.orderDocParam?.giftCardFromMessage != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.card_giftcard_rounded,
                              color: FlutterFlowTheme.of(context).success,
                              size: 24.0,
                            ),
                          ),
                        if (widget.orderDocParam?.deliveryNote != null &&
                            widget.orderDocParam?.deliveryNote != '')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.note_alt_outlined,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                          ),
                        if (widget.orderDocParam?.isPickUp == true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.delivery_dining_outlined,
                              color: FlutterFlowTheme.of(context).error,
                              size: 24.0,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).placeholders,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if ((String orderStatus) {
                      return orderStatus == "processing";
                    }(widget.orderDocParam!.orderStatus))
                      FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'ORDER_ASSIGN_FOR_DELIVERY_BTN_ON_TAP');
                          var _shouldSetState = false;
                          final firestoreBatch =
                              FirebaseFirestore.instance.batch();
                          try {
                            logFirebaseEvent('Button_alert_dialog');
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Are you sure?'),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, false),
                                          child: Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () => Navigator.pop(
                                              alertDialogContext, true),
                                          child: Text('Yes'),
                                        ),
                                      ],
                                    );
                                  },
                                ) ??
                                false;
                            if (confirmDialogResponse) {
                              // createDelivery
                              logFirebaseEvent('Button_createDelivery');

                              var deliveriesRecordReference =
                                  DeliveriesRecord.collection.doc();
                              firestoreBatch.set(
                                  deliveriesRecordReference,
                                  createDeliveriesRecordData(
                                    batchRef: widget.bartchRefParam,
                                    createdDate: getCurrentTimestamp,
                                    deliveryAddress1: widget
                                        .orderDocParam?.deliveryAddressline1,
                                    deliveryAddress2: widget
                                        .orderDocParam?.deliveryAddressline2,
                                    deliveryCity:
                                        widget.orderDocParam?.deliveryCity,
                                    deliveryContactNo:
                                        widget.orderDocParam?.deliveryContact,
                                    deliveryCounty:
                                        widget.orderDocParam?.deliveryCounty,
                                    deliveryFirstName: widget
                                        .orderDocParam?.deliveryFirstname,
                                    deliveryPostcode:
                                        widget.orderDocParam?.deliveryPostcode,
                                    deliverySurname:
                                        widget.orderDocParam?.deliverySurname,
                                    giftCardFromMessage: widget
                                        .orderDocParam?.giftCardFromMessage,
                                    giftCardToMessage: widget
                                        .orderDocParam?.giftCardToMessage,
                                    isActive: true,
                                    isDelivered: false,
                                    isDeleted: false,
                                    isFailed: false,
                                    isSla: false,
                                    orderDate:
                                        widget.orderDocParam?.orderPlaced,
                                    isNoContactDelivery: widget
                                        .orderDocParam?.noContactDelivery,
                                    canLeaveWithNeighbor: widget
                                        .orderDocParam?.leaveWithNeighbour,
                                    orderNumber:
                                        widget.orderDocParam?.orderNumber,
                                    targetDeliveryDate: widget
                                        .orderDocParam?.targetDeliveryDate,
                                    totalOrderAmount:
                                        widget.orderDocParam?.orderAmount,
                                    volunteerName:
                                        widget.userDocParam?.displayName,
                                    volunteerRef:
                                        widget.userDocParam?.reference,
                                    warehouseName: widget
                                        .userDocParam?.assignedWarehouseName,
                                    warehouseRef: widget
                                        .userDocParam?.assignedWarehouseRef,
                                    customerPhoneNo:
                                        widget.orderDocParam?.customerPhone,
                                    billingFirstName:
                                        widget.orderDocParam?.billingFirstname,
                                    billingLastName:
                                        widget.orderDocParam?.billingSurname,
                                    orderNotes:
                                        widget.orderDocParam?.deliveryNote,
                                    batchId: widget.bartchRefParam?.id,
                                    isPickUp: widget.orderDocParam?.isPickUp,
                                    orderId:
                                        widget.orderDocParam?.reference.id,
                                    volunteerId:
                                        widget.userDocParam?.reference.id,
                                    warehouseId: currentUserDocument
                                        ?.assignedWarehouseRef?.id,
                                    createdBy: currentUserUid,
                                    chaseDeliveryMessage: '',
                                  ));
                              _model.newDelivery =
                                  DeliveriesRecord.getDocumentFromData(
                                      createDeliveriesRecordData(
                                        batchRef: widget.bartchRefParam,
                                        createdDate: getCurrentTimestamp,
                                        deliveryAddress1: widget.orderDocParam
                                            ?.deliveryAddressline1,
                                        deliveryAddress2: widget.orderDocParam
                                            ?.deliveryAddressline2,
                                        deliveryCity:
                                            widget.orderDocParam?.deliveryCity,
                                        deliveryContactNo: widget
                                            .orderDocParam?.deliveryContact,
                                        deliveryCounty: widget
                                            .orderDocParam?.deliveryCounty,
                                        deliveryFirstName: widget
                                            .orderDocParam?.deliveryFirstname,
                                        deliveryPostcode: widget
                                            .orderDocParam?.deliveryPostcode,
                                        deliverySurname: widget
                                            .orderDocParam?.deliverySurname,
                                        giftCardFromMessage: widget
                                            .orderDocParam?.giftCardFromMessage,
                                        giftCardToMessage: widget
                                            .orderDocParam?.giftCardToMessage,
                                        isActive: true,
                                        isDelivered: false,
                                        isDeleted: false,
                                        isFailed: false,
                                        isSla: false,
                                        orderDate:
                                            widget.orderDocParam?.orderPlaced,
                                        isNoContactDelivery: widget
                                            .orderDocParam?.noContactDelivery,
                                        canLeaveWithNeighbor: widget
                                            .orderDocParam?.leaveWithNeighbour,
                                        orderNumber:
                                            widget.orderDocParam?.orderNumber,
                                        targetDeliveryDate: widget
                                            .orderDocParam?.targetDeliveryDate,
                                        totalOrderAmount:
                                            widget.orderDocParam?.orderAmount,
                                        volunteerName:
                                            widget.userDocParam?.displayName,
                                        volunteerRef:
                                            widget.userDocParam?.reference,
                                        warehouseName: widget.userDocParam
                                            ?.assignedWarehouseName,
                                        warehouseRef: widget
                                            .userDocParam?.assignedWarehouseRef,
                                        customerPhoneNo: widget
                                            .orderDocParam?.customerPhone,
                                        billingFirstName: widget
                                            .orderDocParam?.billingFirstname,
                                        billingLastName: widget
                                            .orderDocParam?.billingSurname,
                                        orderNotes:
                                            widget.orderDocParam?.deliveryNote,
                                        batchId: widget.bartchRefParam?.id,
                                        isPickUp:
                                            widget.orderDocParam?.isPickUp,
                                        orderId:
                                            widget.orderDocParam?.reference.id,
                                        volunteerId:
                                            widget.userDocParam?.reference.id,
                                        warehouseId: currentUserDocument
                                            ?.assignedWarehouseRef?.id,
                                        createdBy: currentUserUid,
                                        chaseDeliveryMessage: '',
                                      ),
                                      deliveriesRecordReference);
                              _shouldSetState = true;
                              // updateDelivery
                              logFirebaseEvent('Button_updateDelivery');

                              firestoreBatch.update(
                                  _model.newDelivery!.reference,
                                  createDeliveriesRecordData(
                                    deliveryId:
                                        _model.newDelivery?.reference.id,
                                  ));
                              // updateBatch
                              logFirebaseEvent('Button_updateBatch');

                              firestoreBatch.update(widget.bartchRefParam!, {
                                ...createBatchesRecordData(
                                  isActive: true,
                                ),
                                ...mapToFirestore(
                                  {
                                    'deliveryReferences': FieldValue.arrayUnion(
                                        [_model.newDelivery?.reference]),
                                    'deliveryIds': FieldValue.arrayUnion(
                                        [_model.newDelivery?.reference.id]),
                                  },
                                ),
                              });
                              // queryOnlineOrderItems
                              logFirebaseEvent('Button_queryOnlineOrderItems');
                              _model.onlineOrderItemsQuery =
                                  await queryOrderItemsRecordOnce(
                                queryBuilder: (orderItemsRecord) =>
                                    orderItemsRecord.where(
                                  'orderNumber',
                                  isEqualTo: widget.orderDocParam?.orderNumber,
                                ),
                              );
                              _shouldSetState = true;
                              while (_model.loopCounter <
                                  _model.onlineOrderItemsQuery!.length) {
                                // createDeliveryItems
                                logFirebaseEvent('Button_createDeliveryItems');

                                var deliveryItemsRecordReference =
                                    DeliveryItemsRecord.collection.doc();
                                firestoreBatch.set(
                                    deliveryItemsRecordReference,
                                    createDeliveryItemsRecordData(
                                      batchRef: widget.bartchRefParam,
                                      deliveryRef:
                                          _model.newDelivery?.reference,
                                      productName: _model.onlineOrderItemsQuery
                                          ?.elementAtOrNull(_model.loopCounter)
                                          ?.productName,
                                      productImageUrl: _model
                                          .onlineOrderItemsQuery
                                          ?.elementAtOrNull(_model.loopCounter)
                                          ?.productImageUrl,
                                      productPortalId: _model
                                          .onlineOrderItemsQuery
                                          ?.elementAtOrNull(_model.loopCounter)
                                          ?.productPortalId,
                                      productPrice: _model.onlineOrderItemsQuery
                                          ?.elementAtOrNull(_model.loopCounter)
                                          ?.cost,
                                      quantity: _model.onlineOrderItemsQuery
                                          ?.elementAtOrNull(_model.loopCounter)
                                          ?.quantity,
                                      volunteerRef:
                                          widget.userDocParam?.reference,
                                      isDelivered: false,
                                      productSku: _model.onlineOrderItemsQuery
                                          ?.elementAtOrNull(_model.loopCounter)
                                          ?.productSku,
                                      batchId: widget.bartchRefParam?.id,
                                      volunteerId:
                                          widget.userDocParam?.reference.id,
                                      warehouseId: currentUserDocument
                                          ?.assignedWarehouseRef?.id,
                                      orderId:
                                          widget.orderDocParam?.reference.id,
                                      createdBy: currentUserUid,
                                      isActive: true,
                                      createdDate: getCurrentTimestamp,
                                      orderNumber:
                                          widget.orderDocParam?.orderNumber,
                                    ));
                                _model.delivertItem =
                                    DeliveryItemsRecord.getDocumentFromData(
                                        createDeliveryItemsRecordData(
                                          batchRef: widget.bartchRefParam,
                                          deliveryRef:
                                              _model.newDelivery?.reference,
                                          productName: _model
                                              .onlineOrderItemsQuery
                                              ?.elementAtOrNull(
                                                  _model.loopCounter)
                                              ?.productName,
                                          productImageUrl: _model
                                              .onlineOrderItemsQuery
                                              ?.elementAtOrNull(
                                                  _model.loopCounter)
                                              ?.productImageUrl,
                                          productPortalId: _model
                                              .onlineOrderItemsQuery
                                              ?.elementAtOrNull(
                                                  _model.loopCounter)
                                              ?.productPortalId,
                                          productPrice: _model
                                              .onlineOrderItemsQuery
                                              ?.elementAtOrNull(
                                                  _model.loopCounter)
                                              ?.cost,
                                          quantity: _model.onlineOrderItemsQuery
                                              ?.elementAtOrNull(
                                                  _model.loopCounter)
                                              ?.quantity,
                                          volunteerRef:
                                              widget.userDocParam?.reference,
                                          isDelivered: false,
                                          productSku: _model
                                              .onlineOrderItemsQuery
                                              ?.elementAtOrNull(
                                                  _model.loopCounter)
                                              ?.productSku,
                                          batchId: widget.bartchRefParam?.id,
                                          volunteerId: widget
                                              .userDocParam?.reference.id,
                                          warehouseId: currentUserDocument
                                              ?.assignedWarehouseRef?.id,
                                          orderId: widget
                                              .orderDocParam?.reference.id,
                                          createdBy: currentUserUid,
                                          isActive: true,
                                          createdDate: getCurrentTimestamp,
                                          orderNumber: widget
                                              .orderDocParam?.orderNumber,
                                        ),
                                        deliveryItemsRecordReference);
                                _shouldSetState = true;
                                // updateDeliveryItems
                                logFirebaseEvent('Button_updateDeliveryItems');

                                firestoreBatch.update(
                                    _model.delivertItem!.reference,
                                    createDeliveryItemsRecordData(
                                      deliveryItemId:
                                          _model.delivertItem?.reference.id,
                                    ));
                                logFirebaseEvent(
                                    'Button_update_component_state');
                                _model.loopCounter = _model.loopCounter + 1;
                                safeSetState(() {});
                              }
                              // changeOrderStatus
                              logFirebaseEvent('Button_changeOrderStatus');

                              firestoreBatch.update(
                                  widget.orderDocParam!.reference,
                                  createOrdersRecordData(
                                    orderStatus: 'assigned',
                                  ));
                              logFirebaseEvent(
                                  'Button_trigger_push_notification');
                              triggerPushNotification(
                                notificationTitle: 'The Dates Projects',
                                notificationText:
                                    'New batch assigned to you. Click to view details.',
                                notificationSound: 'default',
                                userRefs: [widget.userDocParam!.reference],
                                initialPageName: 'bootstrapPage',
                                parameterData: {},
                              );
                            } else {
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          } finally {
                            await firestoreBatch.commit();
                          }

                          if (_shouldSetState) safeSetState(() {});
                        },
                        text: 'Assign for delivery',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
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
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
