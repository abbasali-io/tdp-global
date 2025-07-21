import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/schema/enums/enums.dart';
import '/common_module/comps/no_data_comp/no_data_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/lead/online_orders_module/gift_card_comp/gift_card_comp_widget.dart';
import '/lead/online_orders_module/online_order_notes_comp/online_order_notes_comp_widget.dart';
import '/lead/online_orders_module/order_by_details_comp/order_by_details_comp_widget.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'online_orders_details_page_model.dart';
export 'online_orders_details_page_model.dart';

class OnlineOrdersDetailsPageWidget extends StatefulWidget {
  const OnlineOrdersDetailsPageWidget({
    super.key,
    required this.orderDocParam,
  });

  final OrdersRecord? orderDocParam;

  static String routeName = 'onlineOrdersDetailsPage';
  static String routePath = 'onlineOrdersDetailsPage';

  @override
  State<OnlineOrdersDetailsPageWidget> createState() =>
      _OnlineOrdersDetailsPageWidgetState();
}

class _OnlineOrdersDetailsPageWidgetState
    extends State<OnlineOrdersDetailsPageWidget> {
  late OnlineOrdersDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnlineOrdersDetailsPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'onlineOrdersDetailsPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                                  'ONLINE_ORDERS_DETAILS_arrow_back_rounded');
                              logFirebaseEvent('IconButton_navigate_back');
                              context.pop();
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
                        valueOrDefault<String>(
                          'Order No  ${valueOrDefault<String>(
                            widget.orderDocParam?.orderNumber,
                            '-',
                          )}',
                          'Order No #',
                        ),
                        textAlign: TextAlign.center,
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
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 700.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                    child: SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: Text(
                                      'Status:',
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
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 8.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        () {
                                          if (widget
                                                  .orderDocParam?.orderStatus ==
                                              OrderStatus.processing.name) {
                                            return 'Not Assigned';
                                          } else if (widget
                                                  .orderDocParam?.orderStatus ==
                                              OrderStatus.assigned.name) {
                                            return 'Assigned';
                                          } else {
                                            return 'Delivered';
                                          }
                                        }(),
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if ((valueOrDefault(
                                      currentUserDocument?.userRole, '') ==
                                  'admin') &&
                              responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 16.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'ONLINE_ORDERS_DETAILS_CANCEL_THE_ORDER_B');
                                          var _shouldSetState = false;
                                          final firestoreBatch =
                                              FirebaseFirestore.instance
                                                  .batch();
                                          try {
                                            logFirebaseEvent(
                                                'Button_alert_dialog');
                                            var confirmDialogResponse =
                                                await showDialog<bool>(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Cancel Order?'),
                                                          content: Text(
                                                              'This action will cancel the order and cannot be undone.'),
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
                                              if (widget.orderDocParam
                                                      ?.orderStatus ==
                                                  'processing') {
                                                // createDeletedOrderDoc
                                                logFirebaseEvent(
                                                    'Button_createDeletedOrderDoc');

                                                var deletedOrdersRecordReference1 =
                                                    DeletedOrdersRecord
                                                        .collection
                                                        .doc();
                                                firestoreBatch.set(
                                                    deletedOrdersRecordReference1,
                                                    createDeletedOrdersRecordData(
                                                      assignedWarehouse: widget
                                                          .orderDocParam
                                                          ?.assignedWarehouse,
                                                      billingFirstname: widget
                                                          .orderDocParam
                                                          ?.billingFirstname,
                                                      billingSurname: widget
                                                          .orderDocParam
                                                          ?.billingSurname,
                                                      customerEmail: widget
                                                          .orderDocParam
                                                          ?.customerEmail,
                                                      customerPhone: widget
                                                          .orderDocParam
                                                          ?.customerPhone,
                                                      deliveryAddressline1: widget
                                                          .orderDocParam
                                                          ?.deliveryAddressline1,
                                                      deliveryAddressline2: widget
                                                          .orderDocParam
                                                          ?.deliveryAddressline2,
                                                      deliveryCity: widget
                                                          .orderDocParam
                                                          ?.deliveryCity,
                                                      deliveryContact: widget
                                                          .orderDocParam
                                                          ?.deliveryContact,
                                                      deliveryCounty: widget
                                                          .orderDocParam
                                                          ?.deliveryCounty,
                                                      deliveryFirstname: widget
                                                          .orderDocParam
                                                          ?.deliveryFirstname,
                                                      deliveryNote: widget
                                                          .orderDocParam
                                                          ?.deliveryNote,
                                                      deliveryPostcode: widget
                                                          .orderDocParam
                                                          ?.deliveryPostcode,
                                                      deliverySurname: widget
                                                          .orderDocParam
                                                          ?.deliverySurname,
                                                      deliveryfirstPostcode: widget
                                                          .orderDocParam
                                                          ?.deliveryfirstPostcode,
                                                      giftCardFromMessage: widget
                                                          .orderDocParam
                                                          ?.giftCardFromMessage,
                                                      giftCardToMessage: widget
                                                          .orderDocParam
                                                          ?.giftCardToMessage,
                                                      leaveWithNeighbour: widget
                                                          .orderDocParam
                                                          ?.leaveWithNeighbour,
                                                      leaveWithNeighbourMessage:
                                                          widget.orderDocParam
                                                              ?.leaveWithNeighbourMessage,
                                                      noContactDelivery: widget
                                                          .orderDocParam
                                                          ?.noContactDelivery,
                                                      noOfdeliverableItems: widget
                                                          .orderDocParam
                                                          ?.noOfdeliverableItems,
                                                      orderAmount: widget
                                                          .orderDocParam
                                                          ?.orderAmount,
                                                      orderId: widget
                                                          .orderDocParam
                                                          ?.orderId,
                                                      orderNumber: widget
                                                          .orderDocParam
                                                          ?.orderNumber,
                                                      orderPlaced: widget
                                                          .orderDocParam
                                                          ?.orderPlaced,
                                                      orderStatus: widget
                                                          .orderDocParam
                                                          ?.orderStatus,
                                                      targetDeliveryDate: widget
                                                          .orderDocParam
                                                          ?.targetDeliveryDate,
                                                      isPickUp: widget
                                                          .orderDocParam
                                                          ?.isPickUp,
                                                      deletedDate:
                                                          getCurrentTimestamp,
                                                      deletedById:
                                                          currentUserReference
                                                              ?.id,
                                                      deletedByName:
                                                          currentUserDisplayName,
                                                    ));
                                                _model.deletedOrderDoc =
                                                    DeletedOrdersRecord
                                                        .getDocumentFromData(
                                                            createDeletedOrdersRecordData(
                                                              assignedWarehouse: widget
                                                                  .orderDocParam
                                                                  ?.assignedWarehouse,
                                                              billingFirstname: widget
                                                                  .orderDocParam
                                                                  ?.billingFirstname,
                                                              billingSurname: widget
                                                                  .orderDocParam
                                                                  ?.billingSurname,
                                                              customerEmail: widget
                                                                  .orderDocParam
                                                                  ?.customerEmail,
                                                              customerPhone: widget
                                                                  .orderDocParam
                                                                  ?.customerPhone,
                                                              deliveryAddressline1: widget
                                                                  .orderDocParam
                                                                  ?.deliveryAddressline1,
                                                              deliveryAddressline2: widget
                                                                  .orderDocParam
                                                                  ?.deliveryAddressline2,
                                                              deliveryCity: widget
                                                                  .orderDocParam
                                                                  ?.deliveryCity,
                                                              deliveryContact: widget
                                                                  .orderDocParam
                                                                  ?.deliveryContact,
                                                              deliveryCounty: widget
                                                                  .orderDocParam
                                                                  ?.deliveryCounty,
                                                              deliveryFirstname: widget
                                                                  .orderDocParam
                                                                  ?.deliveryFirstname,
                                                              deliveryNote: widget
                                                                  .orderDocParam
                                                                  ?.deliveryNote,
                                                              deliveryPostcode: widget
                                                                  .orderDocParam
                                                                  ?.deliveryPostcode,
                                                              deliverySurname: widget
                                                                  .orderDocParam
                                                                  ?.deliverySurname,
                                                              deliveryfirstPostcode: widget
                                                                  .orderDocParam
                                                                  ?.deliveryfirstPostcode,
                                                              giftCardFromMessage: widget
                                                                  .orderDocParam
                                                                  ?.giftCardFromMessage,
                                                              giftCardToMessage: widget
                                                                  .orderDocParam
                                                                  ?.giftCardToMessage,
                                                              leaveWithNeighbour: widget
                                                                  .orderDocParam
                                                                  ?.leaveWithNeighbour,
                                                              leaveWithNeighbourMessage: widget
                                                                  .orderDocParam
                                                                  ?.leaveWithNeighbourMessage,
                                                              noContactDelivery: widget
                                                                  .orderDocParam
                                                                  ?.noContactDelivery,
                                                              noOfdeliverableItems: widget
                                                                  .orderDocParam
                                                                  ?.noOfdeliverableItems,
                                                              orderAmount: widget
                                                                  .orderDocParam
                                                                  ?.orderAmount,
                                                              orderId: widget
                                                                  .orderDocParam
                                                                  ?.orderId,
                                                              orderNumber: widget
                                                                  .orderDocParam
                                                                  ?.orderNumber,
                                                              orderPlaced: widget
                                                                  .orderDocParam
                                                                  ?.orderPlaced,
                                                              orderStatus: widget
                                                                  .orderDocParam
                                                                  ?.orderStatus,
                                                              targetDeliveryDate: widget
                                                                  .orderDocParam
                                                                  ?.targetDeliveryDate,
                                                              isPickUp: widget
                                                                  .orderDocParam
                                                                  ?.isPickUp,
                                                              deletedDate:
                                                                  getCurrentTimestamp,
                                                              deletedById:
                                                                  currentUserReference
                                                                      ?.id,
                                                              deletedByName:
                                                                  currentUserDisplayName,
                                                            ),
                                                            deletedOrdersRecordReference1);
                                                _shouldSetState = true;
                                                // updateDeletedOrderDoc
                                                logFirebaseEvent(
                                                    'Button_updateDeletedOrderDoc');

                                                firestoreBatch.update(
                                                    _model.deletedOrderDoc!
                                                        .reference,
                                                    createDeletedOrdersRecordData(
                                                      deletedOrderId: _model
                                                          .deletedOrderDoc
                                                          ?.reference
                                                          .id,
                                                    ));
                                                // queryProcessingOrderItems
                                                logFirebaseEvent(
                                                    'Button_queryProcessingOrderItems');
                                                _model.processingOrderItemQueryDocs =
                                                    await queryOrderItemsRecordOnce(
                                                  queryBuilder:
                                                      (orderItemsRecord) =>
                                                          orderItemsRecord
                                                              .where(
                                                    'orderNumber',
                                                    isEqualTo: widget
                                                        .orderDocParam
                                                        ?.orderNumber,
                                                  ),
                                                );
                                                _shouldSetState = true;
                                                while (_model.loop <
                                                    _model
                                                        .processingOrderItemQueryDocs!
                                                        .length) {
                                                  // deleteOrderItem
                                                  logFirebaseEvent(
                                                      'Button_deleteOrderItem');
                                                  firestoreBatch.delete(_model
                                                      .processingOrderItemQueryDocs!
                                                      .elementAtOrNull(
                                                          _model.loop)!
                                                      .reference);
                                                  logFirebaseEvent(
                                                      'Button_update_page_state');
                                                  _model.loop = _model.loop + 1;
                                                  safeSetState(() {});
                                                }
                                                // deleteProcessingOrder
                                                logFirebaseEvent(
                                                    'Button_deleteProcessingOrder');
                                                firestoreBatch.delete(widget
                                                    .orderDocParam!.reference);
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                    AdminHomePageWidget
                                                        .routeName);

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                                return;
                                              } else {
                                                if (widget.orderDocParam
                                                        ?.orderStatus ==
                                                    'assigned') {
                                                  // queryAssignedOrderItems
                                                  logFirebaseEvent(
                                                      'Button_queryAssignedOrderItems');
                                                  _model.assignedOrderItemQueryDocs =
                                                      await queryOrderItemsRecordOnce(
                                                    queryBuilder:
                                                        (orderItemsRecord) =>
                                                            orderItemsRecord
                                                                .where(
                                                      'orderNumber',
                                                      isEqualTo: widget
                                                          .orderDocParam
                                                          ?.orderNumber,
                                                    ),
                                                  );
                                                  _shouldSetState = true;
                                                  while (_model.loop <
                                                      _model
                                                          .assignedOrderItemQueryDocs!
                                                          .length) {
                                                    // deleteOrderItem
                                                    logFirebaseEvent(
                                                        'Button_deleteOrderItem');
                                                    firestoreBatch.delete(_model
                                                        .assignedOrderItemQueryDocs!
                                                        .elementAtOrNull(
                                                            _model.loop)!
                                                        .reference);
                                                    logFirebaseEvent(
                                                        'Button_update_page_state');
                                                    _model.loop =
                                                        _model.loop + 1;
                                                    safeSetState(() {});
                                                  }
                                                  // QueryDeliveruDoc
                                                  logFirebaseEvent(
                                                      'Button_QueryDeliveruDoc');
                                                  _model.deliveryDocQuery =
                                                      await queryDeliveriesRecordOnce(
                                                    queryBuilder:
                                                        (deliveriesRecord) =>
                                                            deliveriesRecord
                                                                .where(
                                                      'orderNumber',
                                                      isEqualTo: widget
                                                          .orderDocParam
                                                          ?.orderNumber,
                                                    ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  _shouldSetState = true;
                                                  // QueryBatchDoc
                                                  logFirebaseEvent(
                                                      'Button_QueryBatchDoc');
                                                  _model.batchDocQuery =
                                                      await queryBatchesRecordOnce(
                                                    queryBuilder:
                                                        (batchesRecord) =>
                                                            batchesRecord.where(
                                                      'batchId',
                                                      isEqualTo: _model
                                                          .deliveryDocQuery
                                                          ?.batchRef
                                                          ?.id,
                                                    ),
                                                    singleRecord: true,
                                                  ).then((s) => s.firstOrNull);
                                                  _shouldSetState = true;
                                                  // QueryDeliveruItems
                                                  logFirebaseEvent(
                                                      'Button_QueryDeliveruItems');
                                                  _model.deliveryItemsQuery =
                                                      await queryDeliveryItemsRecordOnce(
                                                    queryBuilder:
                                                        (deliveryItemsRecord) =>
                                                            deliveryItemsRecord
                                                                .where(
                                                      'deliveryRef',
                                                      isEqualTo: _model
                                                          .deliveryDocQuery
                                                          ?.reference,
                                                    ),
                                                  );
                                                  _shouldSetState = true;
                                                  // updateBatchDoc
                                                  logFirebaseEvent(
                                                      'Button_updateBatchDoc');

                                                  firestoreBatch.update(
                                                      _model.batchDocQuery!
                                                          .reference,
                                                      {
                                                        ...mapToFirestore(
                                                          {
                                                            'deliveryReferences':
                                                                FieldValue
                                                                    .arrayRemove([
                                                              _model
                                                                  .deliveryDocQuery
                                                                  ?.reference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                  // createDeletedOrderDoc
                                                  logFirebaseEvent(
                                                      'Button_createDeletedOrderDoc');

                                                  var deletedOrdersRecordReference2 =
                                                      DeletedOrdersRecord
                                                          .collection
                                                          .doc();
                                                  firestoreBatch.set(
                                                      deletedOrdersRecordReference2,
                                                      createDeletedOrdersRecordData(
                                                        assignedWarehouse: widget
                                                            .orderDocParam
                                                            ?.assignedWarehouse,
                                                        billingFirstname: widget
                                                            .orderDocParam
                                                            ?.billingFirstname,
                                                        billingSurname: widget
                                                            .orderDocParam
                                                            ?.billingSurname,
                                                        customerEmail: widget
                                                            .orderDocParam
                                                            ?.customerEmail,
                                                        customerPhone: widget
                                                            .orderDocParam
                                                            ?.customerPhone,
                                                        deliveryAddressline1:
                                                            widget
                                                                .orderDocParam
                                                                ?.deliveryAddressline1,
                                                        deliveryAddressline2:
                                                            widget
                                                                .orderDocParam
                                                                ?.deliveryAddressline2,
                                                        deliveryCity: widget
                                                            .orderDocParam
                                                            ?.deliveryCity,
                                                        deliveryContact: widget
                                                            .orderDocParam
                                                            ?.deliveryContact,
                                                        deliveryCounty: widget
                                                            .orderDocParam
                                                            ?.deliveryCounty,
                                                        deliveryFirstname: widget
                                                            .orderDocParam
                                                            ?.deliveryFirstname,
                                                        deliveryNote: widget
                                                            .orderDocParam
                                                            ?.deliveryNote,
                                                        deliveryPostcode: widget
                                                            .orderDocParam
                                                            ?.deliveryPostcode,
                                                        deliverySurname: widget
                                                            .orderDocParam
                                                            ?.deliverySurname,
                                                        deliveryfirstPostcode:
                                                            widget
                                                                .orderDocParam
                                                                ?.deliveryfirstPostcode,
                                                        giftCardFromMessage: widget
                                                            .orderDocParam
                                                            ?.giftCardFromMessage,
                                                        giftCardToMessage: widget
                                                            .orderDocParam
                                                            ?.giftCardToMessage,
                                                        leaveWithNeighbour: widget
                                                            .orderDocParam
                                                            ?.leaveWithNeighbour,
                                                        leaveWithNeighbourMessage:
                                                            widget
                                                                .orderDocParam
                                                                ?.leaveWithNeighbourMessage,
                                                        noContactDelivery: widget
                                                            .orderDocParam
                                                            ?.noContactDelivery,
                                                        noOfdeliverableItems:
                                                            widget
                                                                .orderDocParam
                                                                ?.noOfdeliverableItems,
                                                        orderAmount: widget
                                                            .orderDocParam
                                                            ?.orderAmount,
                                                        orderId: widget
                                                            .orderDocParam
                                                            ?.orderId,
                                                        orderNumber: widget
                                                            .orderDocParam
                                                            ?.orderNumber,
                                                        orderPlaced: widget
                                                            .orderDocParam
                                                            ?.orderPlaced,
                                                        orderStatus: widget
                                                            .orderDocParam
                                                            ?.orderStatus,
                                                        targetDeliveryDate: widget
                                                            .orderDocParam
                                                            ?.targetDeliveryDate,
                                                        isPickUp: widget
                                                            .orderDocParam
                                                            ?.isPickUp,
                                                        deletedDate:
                                                            getCurrentTimestamp,
                                                        deletedById:
                                                            currentUserReference
                                                                ?.id,
                                                        deletedByName:
                                                            currentUserDisplayName,
                                                      ));
                                                  _model.deletedOrderDocForAssigned =
                                                      DeletedOrdersRecord
                                                          .getDocumentFromData(
                                                              createDeletedOrdersRecordData(
                                                                assignedWarehouse: widget
                                                                    .orderDocParam
                                                                    ?.assignedWarehouse,
                                                                billingFirstname: widget
                                                                    .orderDocParam
                                                                    ?.billingFirstname,
                                                                billingSurname: widget
                                                                    .orderDocParam
                                                                    ?.billingSurname,
                                                                customerEmail: widget
                                                                    .orderDocParam
                                                                    ?.customerEmail,
                                                                customerPhone: widget
                                                                    .orderDocParam
                                                                    ?.customerPhone,
                                                                deliveryAddressline1: widget
                                                                    .orderDocParam
                                                                    ?.deliveryAddressline1,
                                                                deliveryAddressline2: widget
                                                                    .orderDocParam
                                                                    ?.deliveryAddressline2,
                                                                deliveryCity: widget
                                                                    .orderDocParam
                                                                    ?.deliveryCity,
                                                                deliveryContact: widget
                                                                    .orderDocParam
                                                                    ?.deliveryContact,
                                                                deliveryCounty: widget
                                                                    .orderDocParam
                                                                    ?.deliveryCounty,
                                                                deliveryFirstname: widget
                                                                    .orderDocParam
                                                                    ?.deliveryFirstname,
                                                                deliveryNote: widget
                                                                    .orderDocParam
                                                                    ?.deliveryNote,
                                                                deliveryPostcode: widget
                                                                    .orderDocParam
                                                                    ?.deliveryPostcode,
                                                                deliverySurname: widget
                                                                    .orderDocParam
                                                                    ?.deliverySurname,
                                                                deliveryfirstPostcode: widget
                                                                    .orderDocParam
                                                                    ?.deliveryfirstPostcode,
                                                                giftCardFromMessage: widget
                                                                    .orderDocParam
                                                                    ?.giftCardFromMessage,
                                                                giftCardToMessage: widget
                                                                    .orderDocParam
                                                                    ?.giftCardToMessage,
                                                                leaveWithNeighbour: widget
                                                                    .orderDocParam
                                                                    ?.leaveWithNeighbour,
                                                                leaveWithNeighbourMessage: widget
                                                                    .orderDocParam
                                                                    ?.leaveWithNeighbourMessage,
                                                                noContactDelivery: widget
                                                                    .orderDocParam
                                                                    ?.noContactDelivery,
                                                                noOfdeliverableItems: widget
                                                                    .orderDocParam
                                                                    ?.noOfdeliverableItems,
                                                                orderAmount: widget
                                                                    .orderDocParam
                                                                    ?.orderAmount,
                                                                orderId: widget
                                                                    .orderDocParam
                                                                    ?.orderId,
                                                                orderNumber: widget
                                                                    .orderDocParam
                                                                    ?.orderNumber,
                                                                orderPlaced: widget
                                                                    .orderDocParam
                                                                    ?.orderPlaced,
                                                                orderStatus: widget
                                                                    .orderDocParam
                                                                    ?.orderStatus,
                                                                targetDeliveryDate: widget
                                                                    .orderDocParam
                                                                    ?.targetDeliveryDate,
                                                                isPickUp: widget
                                                                    .orderDocParam
                                                                    ?.isPickUp,
                                                                deletedDate:
                                                                    getCurrentTimestamp,
                                                                deletedById:
                                                                    currentUserReference
                                                                        ?.id,
                                                                deletedByName:
                                                                    currentUserDisplayName,
                                                              ),
                                                              deletedOrdersRecordReference2);
                                                  _shouldSetState = true;
                                                  // updateDeletedOrderDoc
                                                  logFirebaseEvent(
                                                      'Button_updateDeletedOrderDoc');

                                                  firestoreBatch.update(
                                                      _model
                                                          .deletedOrderDocForAssigned!
                                                          .reference,
                                                      createDeletedOrdersRecordData(
                                                        deletedOrderId: _model
                                                            .deletedOrderDocForAssigned
                                                            ?.reference
                                                            .id,
                                                        deliveryId: _model
                                                            .deliveryDocQuery
                                                            ?.reference
                                                            .id,
                                                        batchId: _model
                                                            .batchDocQuery
                                                            ?.reference
                                                            .id,
                                                      ));
                                                  while (_model.deliveryLoop <
                                                      _model.deliveryItemsQuery!
                                                          .length) {
                                                    // updateDeletedOrderDoc
                                                    logFirebaseEvent(
                                                        'Button_updateDeletedOrderDoc');

                                                    firestoreBatch.update(
                                                        _model
                                                            .deletedOrderDocForAssigned!
                                                            .reference,
                                                        {
                                                          ...mapToFirestore(
                                                            {
                                                              'deliveryItemId':
                                                                  FieldValue
                                                                      .arrayUnion([
                                                                _model
                                                                    .deliveryItemsQuery
                                                                    ?.elementAtOrNull(
                                                                        _model
                                                                            .deliveryLoop)
                                                                    ?.reference
                                                                    .id
                                                              ]),
                                                            },
                                                          ),
                                                        });
                                                    // DeleteDeliveryItem
                                                    logFirebaseEvent(
                                                        'Button_DeleteDeliveryItem');
                                                    firestoreBatch.delete(_model
                                                        .deliveryItemsQuery!
                                                        .elementAtOrNull(_model
                                                            .deliveryLoop)!
                                                        .reference);
                                                    logFirebaseEvent(
                                                        'Button_update_page_state');
                                                    _model.deliveryLoop =
                                                        _model.deliveryLoop + 1;
                                                    safeSetState(() {});
                                                  }
                                                  // DeleteDeliveryDoc
                                                  logFirebaseEvent(
                                                      'Button_DeleteDeliveryDoc');
                                                  firestoreBatch.delete(_model
                                                      .deliveryDocQuery!
                                                      .reference);
                                                  // DeleteAssignedOrder
                                                  logFirebaseEvent(
                                                      'Button_DeleteAssignedOrder');
                                                  firestoreBatch.delete(widget
                                                      .orderDocParam!
                                                      .reference);
                                                  logFirebaseEvent(
                                                      'Button_navigate_to');

                                                  context.pushNamed(
                                                      AdminHomePageWidget
                                                          .routeName);
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_alert_dialog');
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Action Denied !'),
                                                        content: Text(
                                                            'This order has already been marked as delivered. So it cannot be delted. Please contact the admins.'),
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
                                        text: 'Cancel the order',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .warningOld,
                                          textStyle: FlutterFlowTheme.of(
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
                                                color: Colors.white,
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
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Icon(
                                    Icons.person_outline,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      '${valueOrDefault<String>(
                                        widget.orderDocParam?.billingFirstname,
                                        '-',
                                      )} ${valueOrDefault<String>(
                                        widget.orderDocParam?.billingSurname,
                                        '-',
                                      )}',
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
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
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
                                0.0, 8.0, 0.0, 0.0),
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
                                    size: 20.0,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.orderDocParam?.assignedWarehouse,
                                    ' -',
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Icon(
                                    Icons.calendar_month_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 20.0,
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      "d/M/y",
                                      widget.orderDocParam?.orderPlaced,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
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
                              ],
                            ),
                          ),
                          Divider(
                            color: FlutterFlowTheme.of(context).placeholders,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Icon(
                                            Icons.perm_device_info_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 24.0,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                'Target Delivery Date:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  dateTimeFormat(
                                                    "d/M/y",
                                                    widget.orderDocParam
                                                        ?.targetDeliveryDate,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  '-',
                                                ),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
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
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    if (((widget.orderDocParam?.orderStatus ==
                                                'processing') ||
                                            (widget.orderDocParam?.orderStatus ==
                                                'assigned')) &&
                                        ((valueOrDefault(
                                                    currentUserDocument
                                                        ?.userRole,
                                                    '') ==
                                                'admin') ||
                                            (valueOrDefault(
                                                    currentUserDocument
                                                        ?.userRole,
                                                    '') ==
                                                'lead') ||
                                            (valueOrDefault(
                                                    currentUserDocument
                                                        ?.userRole,
                                                    '') ==
                                                'support')))
                                      AuthUserStreamWidget(
                                        builder: (context) => Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'ONLINE_ORDERS_DETAILS_CHASE_BTN_ON_TAP');
                                                var _shouldSetState = false;
                                                final firestoreBatch =
                                                    FirebaseFirestore.instance
                                                        .batch();
                                                try {
                                                  if (widget.orderDocParam
                                                          ?.orderStatus ==
                                                      'processing') {
                                                    // QueryLead
                                                    logFirebaseEvent(
                                                        'Button_QueryLead');
                                                    _model.leadQueryDocForProcessingOrder =
                                                        await queryUsersRecordOnce(
                                                      queryBuilder:
                                                          (usersRecord) =>
                                                              usersRecord
                                                                  .where(
                                                                    'assignedWarehouseName',
                                                                    isEqualTo: widget
                                                                        .orderDocParam
                                                                        ?.assignedWarehouse,
                                                                  )
                                                                  .where(
                                                                    'userRole',
                                                                    isEqualTo:
                                                                        'lead',
                                                                  )
                                                                  .where(
                                                                    'isActive',
                                                                    isEqualTo:
                                                                        true,
                                                                  ),
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);
                                                    _shouldSetState = true;
                                                    if (currentUserUid ==
                                                        _model
                                                            .leadQueryDocForProcessingOrder
                                                            ?.uid) {
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Order Not Assigned Yet!'),
                                                            content: Text(
                                                                'Please assign this order to a volunteer first.'),
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
                                                    } else {
                                                      // NotifyLead
                                                      logFirebaseEvent(
                                                          'Button_NotifyLead');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Attention required !',
                                                        notificationText:
                                                            'Please give priority to deliver the order number ${widget.orderDocParam?.orderNumber}. Customer is chasing us for the delivery. Thanks, ${currentUserDisplayName}(${valueOrDefault(currentUserDocument?.userRole, '')})',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          _model
                                                              .leadQueryDocForProcessingOrder!
                                                              .reference
                                                        ],
                                                        initialPageName:
                                                            'onlineOrdersDetailsPage',
                                                        parameterData: {
                                                          'orderDocParam':
                                                              widget
                                                                  .orderDocParam,
                                                        },
                                                      );
                                                      // addChaseMsgToUserDoc
                                                      logFirebaseEvent(
                                                          'Button_addChaseMsgToUserDoc');

                                                      firestoreBatch.update(
                                                          _model
                                                              .leadQueryDocForProcessingOrder!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'orderChaseMsg':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  '${currentUserDisplayName}| Please give priority to deliver order number ${widget.orderDocParam?.orderNumber}. | ${dateTimeFormat(
                                                                    "d MMM ",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}| ${widget.orderDocParam?.orderNumber}'
                                                                ]),
                                                              },
                                                            ),
                                                          });
                                                      // updateOrderDoc
                                                      logFirebaseEvent(
                                                          'Button_updateOrderDoc');

                                                      firestoreBatch.update(
                                                          widget.orderDocParam!
                                                              .reference,
                                                          createOrdersRecordData(
                                                            chasedDate:
                                                                getCurrentTimestamp,
                                                            chasedBy:
                                                                currentUserDisplayName,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Notification Sent !'),
                                                            content: Text(
                                                                'We have notify the lead to give priority to deliver order no. ${widget.orderDocParam?.orderNumber}.'),
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
                                                  } else {
                                                    // QueryLead
                                                    logFirebaseEvent(
                                                        'Button_QueryLead');
                                                    _model.leadQueryDocForAssignedOrder =
                                                        await queryUsersRecordOnce(
                                                      queryBuilder:
                                                          (usersRecord) =>
                                                              usersRecord
                                                                  .where(
                                                                    'assignedWarehouseName',
                                                                    isEqualTo: widget
                                                                        .orderDocParam
                                                                        ?.assignedWarehouse,
                                                                  )
                                                                  .where(
                                                                    'userRole',
                                                                    isEqualTo:
                                                                        'lead',
                                                                  )
                                                                  .where(
                                                                    'isActive',
                                                                    isEqualTo:
                                                                        true,
                                                                  ),
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);
                                                    _shouldSetState = true;
                                                    // QueryDelivery
                                                    logFirebaseEvent(
                                                        'Button_QueryDelivery');
                                                    _model.deliveryQueryForChasing =
                                                        await queryDeliveriesRecordOnce(
                                                      queryBuilder:
                                                          (deliveriesRecord) =>
                                                              deliveriesRecord
                                                                  .where(
                                                        'orderNumber',
                                                        isEqualTo: widget
                                                            .orderDocParam
                                                            ?.orderNumber,
                                                      ),
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);
                                                    _shouldSetState = true;
                                                    if (_model
                                                            .leadQueryDocForAssignedOrder
                                                            ?.uid ==
                                                        currentUserUid) {
                                                      // QueryVolunteer
                                                      logFirebaseEvent(
                                                          'Button_QueryVolunteer');
                                                      _model.volForDeliveryChaseAsigned =
                                                          await queryUsersRecordOnce(
                                                        queryBuilder:
                                                            (usersRecord) =>
                                                                usersRecord
                                                                    .where(
                                                          'uid',
                                                          isEqualTo: _model
                                                              .deliveryQueryForChasing
                                                              ?.volunteerRef
                                                              ?.id,
                                                        ),
                                                        singleRecord: true,
                                                      ).then((s) =>
                                                              s.firstOrNull);
                                                      _shouldSetState = true;
                                                      // NotifyVol
                                                      logFirebaseEvent(
                                                          'Button_NotifyVol');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Attention required !',
                                                        notificationText:
                                                            'Please give priority to deliver the order number ${widget.orderDocParam?.orderNumber}. Customer is chasing us for the delivery. Thanks, ${currentUserDisplayName}(${valueOrDefault(currentUserDocument?.userRole, '')})',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          _model
                                                              .volForDeliveryChaseAsigned!
                                                              .reference
                                                        ],
                                                        initialPageName:
                                                            'bootstrapPage',
                                                        parameterData: {},
                                                      );
                                                      // updateChaseMsgToVolDoc
                                                      logFirebaseEvent(
                                                          'Button_updateChaseMsgToVolDoc');

                                                      firestoreBatch.update(
                                                          _model
                                                              .volForDeliveryChaseAsigned!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'orderChaseMsg':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  '${currentUserDisplayName}| Please give priority to deliver order number ${widget.orderDocParam?.orderNumber}. | ${dateTimeFormat(
                                                                    "d MMM",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}| ${widget.orderDocParam?.orderNumber}'
                                                                ]),
                                                              },
                                                            ),
                                                          });
                                                      // updateOrderDoc
                                                      logFirebaseEvent(
                                                          'Button_updateOrderDoc');

                                                      firestoreBatch.update(
                                                          widget.orderDocParam!
                                                              .reference,
                                                          createOrdersRecordData(
                                                            chasedDate:
                                                                getCurrentTimestamp,
                                                            chasedBy:
                                                                currentUserDisplayName,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Notification Sent !'),
                                                            content: Text(
                                                                'We have notify the volunteer to give priority to deliver order no. ${widget.orderDocParam?.orderNumber}.'),
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
                                                    } else {
                                                      // QueryVolunteer
                                                      logFirebaseEvent(
                                                          'Button_QueryVolunteer');
                                                      _model.volForChaseOrder =
                                                          await queryUsersRecordOnce(
                                                        queryBuilder:
                                                            (usersRecord) =>
                                                                usersRecord
                                                                    .where(
                                                          'uid',
                                                          isEqualTo: _model
                                                              .deliveryQueryForChasing
                                                              ?.volunteerRef
                                                              ?.id,
                                                        ),
                                                        singleRecord: true,
                                                      ).then((s) =>
                                                              s.firstOrNull);
                                                      _shouldSetState = true;
                                                      // NotifiyLead
                                                      logFirebaseEvent(
                                                          'Button_NotifiyLead');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Attention required !',
                                                        notificationText:
                                                            'Please give priority to deliver the order number ${widget.orderDocParam?.orderNumber}. Customer is chasing us for the delivery. Thanks, ${currentUserDisplayName}${valueOrDefault(currentUserDocument?.userRole, '')})',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          _model
                                                              .leadQueryDocForAssignedOrder!
                                                              .reference
                                                        ],
                                                        initialPageName:
                                                            'bootstrapPage',
                                                        parameterData: {},
                                                      );
                                                      // NotifiyVol
                                                      logFirebaseEvent(
                                                          'Button_NotifiyVol');
                                                      triggerPushNotification(
                                                        notificationTitle:
                                                            'Attention required !',
                                                        notificationText:
                                                            'Please give priority to deliver the order number ${widget.orderDocParam?.orderNumber}. Customer is chasing us for the delivery. Thanks, ${currentUserDisplayName}${valueOrDefault(currentUserDocument?.userRole, '')})',
                                                        notificationSound:
                                                            'default',
                                                        userRefs: [
                                                          _model
                                                              .volForChaseOrder!
                                                              .reference
                                                        ],
                                                        initialPageName:
                                                            'bootstrapPage',
                                                        parameterData: {},
                                                      );
                                                      // updateChaseMsgToLeadDoc
                                                      logFirebaseEvent(
                                                          'Button_updateChaseMsgToLeadDoc');

                                                      firestoreBatch.update(
                                                          _model
                                                              .leadQueryDocForAssignedOrder!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'orderChaseMsg':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  '${currentUserDisplayName}| Please give priority to deliver order number ${widget.orderDocParam?.orderNumber}. | ${dateTimeFormat(
                                                                    "d MMM",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}| ${widget.orderDocParam?.orderNumber}'
                                                                ]),
                                                              },
                                                            ),
                                                          });
                                                      // updateChaseMsgToVolDoc
                                                      logFirebaseEvent(
                                                          'Button_updateChaseMsgToVolDoc');

                                                      firestoreBatch.update(
                                                          _model
                                                              .volForChaseOrder!
                                                              .reference,
                                                          {
                                                            ...mapToFirestore(
                                                              {
                                                                'orderChaseMsg':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  '${currentUserDisplayName}| Please give priority to deliver order number ${widget.orderDocParam?.orderNumber}. | ${dateTimeFormat(
                                                                    "d MMM",
                                                                    getCurrentTimestamp,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  )}| ${widget.orderDocParam?.orderNumber}'
                                                                ]),
                                                              },
                                                            ),
                                                          });
                                                      // updateOrderDoc
                                                      logFirebaseEvent(
                                                          'Button_updateOrderDoc');

                                                      firestoreBatch.update(
                                                          widget.orderDocParam!
                                                              .reference,
                                                          createOrdersRecordData(
                                                            chasedDate:
                                                                getCurrentTimestamp,
                                                            chasedBy:
                                                                currentUserDisplayName,
                                                          ));
                                                      logFirebaseEvent(
                                                          'Button_alert_dialog');
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Notification Sent !'),
                                                            content: Text(
                                                                'We have notify the lead and volunteer to give priority to deliver order no. ${widget.orderDocParam?.orderNumber}.'),
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
                                                  }
                                                } finally {
                                                  await firestoreBatch.commit();
                                                }

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                              },
                                              text: 'Chase',
                                              options: FFButtonOptions(
                                                height: 30.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                textStyle: FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              if (((widget.orderDocParam?.orderStatus ==
                                          'processing') ||
                                      (widget.orderDocParam?.orderStatus ==
                                          'assigned')) &&
                                  ((valueOrDefault(
                                              currentUserDocument?.userRole,
                                              '') ==
                                          'admin') ||
                                      (valueOrDefault(
                                              currentUserDocument?.userRole,
                                              '') ==
                                          'lead') ||
                                      (valueOrDefault(
                                              currentUserDocument?.userRole,
                                              '') ==
                                          'support')))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Last Chased: ${valueOrDefault<String>(
                                              dateTimeFormat(
                                                "M/d H:mm",
                                                widget
                                                    .orderDocParam?.chasedDate,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              'Never',
                                            )} By ${widget.orderDocParam?.chasedBy}',
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
                                ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
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
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).placeholders,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Icon(
                                                Icons.delivery_dining_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                            Text(
                                              'Shipping Details',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              valueOrDefault<String>(
                                                '${widget.orderDocParam?.deliveryFirstname} ${widget.orderDocParam?.deliverySurname}',
                                                '-',
                                              ),
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
                                                        .secondary,
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
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.orderDocParam
                                                    ?.deliveryAddressline1,
                                                ' -',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
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
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              valueOrDefault<String>(
                                                widget.orderDocParam
                                                    ?.deliveryAddressline2,
                                                ' -',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  widget.orderDocParam
                                                      ?.deliveryPostcode,
                                                  ' -',
                                                ),
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
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  widget.orderDocParam
                                                      ?.deliveryCity,
                                                  ' -',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  widget.orderDocParam
                                                      ?.deliveryCounty,
                                                  ' -',
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.poppins(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
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
                                          0.0, 16.0, 0.0, 12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 8.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.mobileAlt,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  size: 20.0,
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  widget.orderDocParam
                                                      ?.deliveryContact,
                                                  ' -',
                                                ),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
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
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 20.0, 0.0),
                                                child: Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .cardBG4,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'ONLINE_ORDERS_DETAILS_Icon_6q2xtkh2_ON_T');
                                                      logFirebaseEvent(
                                                          'Icon_call_number');
                                                      await launchUrl(Uri(
                                                        scheme: 'tel',
                                                        path: widget
                                                            .orderDocParam!
                                                            .deliveryContact,
                                                      ));
                                                    },
                                                    child: Icon(
                                                      Icons.call,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 30.0,
                                                height: 30.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor3,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'ONLINE_ORDERS_DETAILS_Icon_el7zbshf_ON_T');
                                                    logFirebaseEvent(
                                                        'Icon_send_s_m_s');
                                                    if (isiOS) {
                                                      await launchUrl(Uri.parse(
                                                          "sms:${widget.orderDocParam!.deliveryContact}&body=${Uri.encodeComponent('The Date Project  Order Number  -  ${widget.orderDocParam?.orderNumber}.  This is to let you know we tried to deliver your order and were not successful- please contact to arrange pickup/redelivery.~ The Date Project Team ~')}"));
                                                    } else {
                                                      await launchUrl(Uri(
                                                        scheme: 'sms',
                                                        path: widget
                                                            .orderDocParam!
                                                            .deliveryContact,
                                                        queryParameters: <String,
                                                            String>{
                                                          'body':
                                                              'The Date Project  Order Number  -  ${widget.orderDocParam?.orderNumber}.  This is to let you know we tried to deliver your order and were not successful- please contact to arrange pickup/redelivery.~ The Date Project Team ~',
                                                        },
                                                      ));
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons.message_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 20.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Divider(
                                          color: FlutterFlowTheme.of(context)
                                              .placeholders,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Leave With Neighbors',
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
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    widget.orderDocParam
                                                        ?.leaveWithNeighbourMessage,
                                                    'No message provided by client.',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.poppins(
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Order Details',
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Item',
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
                                Text(
                                  'Quantity',
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
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: StreamBuilder<List<OrderItemsRecord>>(
                              stream: queryOrderItemsRecord(
                                queryBuilder: (orderItemsRecord) =>
                                    orderItemsRecord
                                        .where(
                                          'orderNumber',
                                          isEqualTo: widget
                                              .orderDocParam?.orderNumber,
                                        )
                                        .orderBy('productName'),
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
                                List<OrderItemsRecord>
                                    orderItemsListViewOrderItemsRecordList =
                                    snapshot.data!;
                                if (orderItemsListViewOrderItemsRecordList
                                    .isEmpty) {
                                  return NoDataCompWidget();
                                }

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      orderItemsListViewOrderItemsRecordList
                                          .length,
                                  itemBuilder:
                                      (context, orderItemsListViewIndex) {
                                    final orderItemsListViewOrderItemsRecord =
                                        orderItemsListViewOrderItemsRecordList[
                                            orderItemsListViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 6.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              orderItemsListViewOrderItemsRecord
                                                  .productName,
                                              '-',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              formatNumber(
                                                orderItemsListViewOrderItemsRecord
                                                    .quantity,
                                                formatType: FormatType.decimal,
                                                decimalType:
                                                    DecimalType.automatic,
                                              ),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 36.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 130.0,
                              decoration: BoxDecoration(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              -2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 4.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'ONLINE_ORDERS_DETAILS_Container_aabn6y1c');
                                        logFirebaseEvent(
                                            'Container_bottom_sheet');
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          useSafeArea: true,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.5,
                                                  child:
                                                      OrderByDetailsCompWidget(
                                                    orderDocParam:
                                                        widget.orderDocParam!,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Order By',
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
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
                                              Icon(
                                                Icons.person_outline,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 4.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'ONLINE_ORDERS_DETAILS_Container_7su7gk6n');
                                        logFirebaseEvent(
                                            'Container_bottom_sheet');
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          useSafeArea: true,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.75,
                                                  child: GiftCardCompWidget(
                                                    orderDocParam:
                                                        widget.orderDocParam!,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Gift Card',
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
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
                                              Icon(
                                                Icons.card_giftcard,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'ONLINE_ORDERS_DETAILS_Container_okwjytao');
                                        logFirebaseEvent(
                                            'Container_bottom_sheet');
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          useSafeArea: true,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () {
                                                FocusScope.of(context)
                                                    .unfocus();
                                                FocusManager
                                                    .instance.primaryFocus
                                                    ?.unfocus();
                                              },
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.5,
                                                  child:
                                                      OnlineOrderNotesCompWidget(
                                                    orderDocParam:
                                                        widget.orderDocParam!,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 4.0, 8.0, 4.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Order Notes',
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
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
                                              Icon(
                                                Icons.speaker_notes_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
