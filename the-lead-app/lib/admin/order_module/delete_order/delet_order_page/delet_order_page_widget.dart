import '/admin/order_module/online_order_comp/online_order_comp_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delet_order_page_model.dart';
export 'delet_order_page_model.dart';

class DeletOrderPageWidget extends StatefulWidget {
  const DeletOrderPageWidget({
    super.key,
    required this.orderDocParam,
  });

  final OrdersRecord? orderDocParam;

  static String routeName = 'deletOrderPage';
  static String routePath = 'deletOrderPage';

  @override
  State<DeletOrderPageWidget> createState() => _DeletOrderPageWidgetState();
}

class _DeletOrderPageWidgetState extends State<DeletOrderPageWidget> {
  late DeletOrderPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeletOrderPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'deletOrderPage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DELET_ORDER_deletOrderPage_ON_INIT_STATE');
      logFirebaseEvent('deletOrderPage_update_app_state');
      FFAppState().activePage = 'delete';
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
                                    'DELET_ORDER_arrow_back_rounded_ICN_ON_TA');
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
                          'Delete Online Orders',
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
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x26FF002A),
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 16.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  '**Please perform this action carefully. Once the order is deleted it cannot be recovered.',
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
                                            FlutterFlowTheme.of(context).error,
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
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Click the delete button to remove this order permanently',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: wrapWithModel(
                          model: _model.onlineOrderCompModel,
                          updateCallback: () => safeSetState(() {}),
                          child: OnlineOrderCompWidget(
                            orderDocParam: widget.orderDocParam!,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 36.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: FFButtonWidget(
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'DELET_ORDER_DELETE_ORDER_BTN_ON_TAP');
                                  var _shouldSetState = false;
                                  final firestoreBatch =
                                      FirebaseFirestore.instance.batch();
                                  try {
                                    logFirebaseEvent('Button_alert_dialog');
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Delete Order ?'),
                                                  content: Text(
                                                      'This will permanently delete the order and cannot be undone.'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text('Cancel'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child:
                                                          Text('I Understand'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;
                                    if (confirmDialogResponse) {
                                      // queryOrderItems
                                      logFirebaseEvent(
                                          'Button_queryOrderItems');
                                      _model.orderItemDocs =
                                          await queryOrderItemsRecordOnce(
                                        queryBuilder: (orderItemsRecord) =>
                                            orderItemsRecord.where(
                                          'orderNumber',
                                          isEqualTo: widget
                                              .orderDocParam?.orderNumber,
                                        ),
                                      );
                                      _shouldSetState = true;
                                      // createWrongOrderDoc
                                      logFirebaseEvent(
                                          'Button_createWrongOrderDoc');

                                      var wrongOrdersRecordReference =
                                          WrongOrdersRecord.collection.doc();
                                      firestoreBatch.set(
                                          wrongOrdersRecordReference,
                                          createWrongOrdersRecordData(
                                            assignedWarehouse: widget
                                                .orderDocParam
                                                ?.assignedWarehouse,
                                            billingFirstname: widget
                                                .orderDocParam
                                                ?.billingFirstname,
                                            billingSurname: widget
                                                .orderDocParam?.billingSurname,
                                            customerEmail: widget
                                                .orderDocParam?.customerEmail,
                                            customerPhone: widget
                                                .orderDocParam?.customerPhone,
                                            deliveryAddressline1: widget
                                                .orderDocParam
                                                ?.deliveryAddressline1,
                                            deliveryAddressline2: widget
                                                .orderDocParam
                                                ?.deliveryAddressline2,
                                            deliveryCity: widget
                                                .orderDocParam?.deliveryCity,
                                            deliveryContact: widget
                                                .orderDocParam?.deliveryContact,
                                            deliveryCounty: widget
                                                .orderDocParam?.deliveryCounty,
                                            deliveryFirstname: widget
                                                .orderDocParam
                                                ?.deliveryFirstname,
                                            deliveryNote: widget
                                                .orderDocParam?.deliveryNote,
                                            deliveryPostcode: widget
                                                .orderDocParam
                                                ?.deliveryPostcode,
                                            deliverySurname: widget
                                                .orderDocParam?.deliverySurname,
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
                                                .orderDocParam?.orderAmount,
                                            orderId:
                                                widget.orderDocParam?.orderId,
                                            orderNumber: widget
                                                .orderDocParam?.orderNumber,
                                            orderPlaced: widget
                                                .orderDocParam?.orderPlaced,
                                            orderStatus: widget
                                                .orderDocParam?.orderStatus,
                                            targetDeliveryDate: widget
                                                .orderDocParam
                                                ?.targetDeliveryDate,
                                            isPickUp:
                                                widget.orderDocParam?.isPickUp,
                                            chasedDate: widget
                                                .orderDocParam?.chasedDate,
                                            chasedBy:
                                                widget.orderDocParam?.chasedBy,
                                            isActive:
                                                widget.orderDocParam?.isActive,
                                            createdBy: widget
                                                .orderDocParam?.createdBy,
                                            createdDate: widget
                                                .orderDocParam?.createdDate,
                                            updatedBy: widget
                                                .orderDocParam?.updatedBy,
                                            updateDate: widget
                                                .orderDocParam?.updateDate,
                                            notes: widget.orderDocParam?.notes,
                                            warehouseId: widget
                                                .orderDocParam?.warehouseId,
                                            isImported: widget
                                                .orderDocParam?.isImported,
                                            deletedDate: getCurrentTimestamp,
                                            deletedBy: currentUserUid,
                                          ));
                                      _model.wrngOrderDoc =
                                          WrongOrdersRecord.getDocumentFromData(
                                              createWrongOrdersRecordData(
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
                                                    .orderDocParam?.orderAmount,
                                                orderId: widget
                                                    .orderDocParam?.orderId,
                                                orderNumber: widget
                                                    .orderDocParam?.orderNumber,
                                                orderPlaced: widget
                                                    .orderDocParam?.orderPlaced,
                                                orderStatus: widget
                                                    .orderDocParam?.orderStatus,
                                                targetDeliveryDate: widget
                                                    .orderDocParam
                                                    ?.targetDeliveryDate,
                                                isPickUp: widget
                                                    .orderDocParam?.isPickUp,
                                                chasedDate: widget
                                                    .orderDocParam?.chasedDate,
                                                chasedBy: widget
                                                    .orderDocParam?.chasedBy,
                                                isActive: widget
                                                    .orderDocParam?.isActive,
                                                createdBy: widget
                                                    .orderDocParam?.createdBy,
                                                createdDate: widget
                                                    .orderDocParam?.createdDate,
                                                updatedBy: widget
                                                    .orderDocParam?.updatedBy,
                                                updateDate: widget
                                                    .orderDocParam?.updateDate,
                                                notes: widget
                                                    .orderDocParam?.notes,
                                                warehouseId: widget
                                                    .orderDocParam?.warehouseId,
                                                isImported: widget
                                                    .orderDocParam?.isImported,
                                                deletedDate:
                                                    getCurrentTimestamp,
                                                deletedBy: currentUserUid,
                                              ),
                                              wrongOrdersRecordReference);
                                      _shouldSetState = true;
                                      while (_model.orderItemsLoop <
                                          _model.orderItemDocs!.length) {
                                        // createWrongItem
                                        logFirebaseEvent(
                                            'Button_createWrongItem');

                                        var itemsRecordReference =
                                            ItemsRecord.createDoc(
                                                _model.wrngOrderDoc!.reference);
                                        firestoreBatch.set(
                                            itemsRecordReference,
                                            createItemsRecordData(
                                              cost: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.cost,
                                              orderItemId: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.orderItemId,
                                              orderNumber: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.orderNumber,
                                              productImageUrl: _model
                                                  .orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.productImageUrl,
                                              productName: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.productName,
                                              productPortalId: _model
                                                  .orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.productPortalId,
                                              productSku: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.productSku,
                                              quantity: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.quantity,
                                              assignedWarehouse: _model
                                                  .orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.assignedWarehouse,
                                              isWarehouseAdded: _model
                                                  .orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.isWarehouseAdded,
                                              orderId: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.orderId,
                                              warehouseId: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.warehouseId,
                                              isActive: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.isActive,
                                              createdBy: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.createdBy,
                                              createdDate: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.createdDate,
                                              updatedBy: currentUserUid,
                                              updateDate: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.updateDate,
                                              status: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.status,
                                              notes: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.notes,
                                              isDelivered: _model.orderItemDocs
                                                  ?.elementAtOrNull(
                                                      _model.orderItemsLoop)
                                                  ?.isDelivered,
                                            ));
                                        _model.wrongItem =
                                            ItemsRecord.getDocumentFromData(
                                                createItemsRecordData(
                                                  cost: _model.orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.cost,
                                                  orderItemId: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.orderItemId,
                                                  orderNumber: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.orderNumber,
                                                  productImageUrl: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.productImageUrl,
                                                  productName: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.productName,
                                                  productPortalId: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.productPortalId,
                                                  productSku: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.productSku,
                                                  quantity: _model.orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.quantity,
                                                  assignedWarehouse: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.assignedWarehouse,
                                                  isWarehouseAdded: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.isWarehouseAdded,
                                                  orderId: _model.orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.orderId,
                                                  warehouseId: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.warehouseId,
                                                  isActive: _model.orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.isActive,
                                                  createdBy: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.createdBy,
                                                  createdDate: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.createdDate,
                                                  updatedBy: currentUserUid,
                                                  updateDate: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.updateDate,
                                                  status: _model.orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.status,
                                                  notes: _model.orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.notes,
                                                  isDelivered: _model
                                                      .orderItemDocs
                                                      ?.elementAtOrNull(
                                                          _model.orderItemsLoop)
                                                      ?.isDelivered,
                                                ),
                                                itemsRecordReference);
                                        _shouldSetState = true;
                                        // deleteOrderItem
                                        logFirebaseEvent(
                                            'Button_deleteOrderItem');
                                        firestoreBatch.delete(_model
                                            .orderItemDocs!
                                            .elementAtOrNull(
                                                _model.orderItemsLoop)!
                                            .reference);
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.orderItemsLoop =
                                            _model.orderItemsLoop + 1;
                                        safeSetState(() {});
                                      }
                                      // deleteOrderDoc
                                      logFirebaseEvent('Button_deleteOrderDoc');
                                      firestoreBatch.delete(
                                          widget.orderDocParam!.reference);
                                      logFirebaseEvent('Button_show_snack_bar');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Order deleted successfully...',
                                            style: TextStyle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                        ),
                                      );
                                      logFirebaseEvent('Button_navigate_to');

                                      context.goNamed(
                                          GetOrderPageWidget.routeName);
                                    } else {
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  } finally {
                                    await firestoreBatch.commit();
                                  }

                                  if (_shouldSetState) safeSetState(() {});
                                },
                                text: 'Delete Order',
                                icon: Icon(
                                  Icons.delete_outline,
                                  size: 24.0,
                                ),
                                options: FFButtonOptions(
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
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
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].addToEnd(SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
