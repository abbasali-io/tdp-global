import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_details_page_widget.dart'
    show OnlineOrdersDetailsPageWidget;
import 'package:flutter/material.dart';

class OnlineOrdersDetailsPageModel
    extends FlutterFlowModel<OnlineOrdersDetailsPageWidget> {
  ///  Local state fields for this page.

  int loop = 0;

  int deliveryLoop = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DeletedOrdersRecord? deletedOrderDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OrderItemsRecord>? processingOrderItemQueryDocs;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OrderItemsRecord>? assignedOrderItemQueryDocs;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DeliveriesRecord? deliveryDocQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  BatchesRecord? batchDocQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DeliveryItemsRecord>? deliveryItemsQuery;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DeletedOrdersRecord? deletedOrderDocForAssigned;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? leadQueryDocForProcessingOrder;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? leadQueryDocForAssignedOrder;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  DeliveriesRecord? deliveryQueryForChasing;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? volForDeliveryChaseAsigned;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? volForChaseOrder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
