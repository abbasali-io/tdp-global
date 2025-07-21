import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'batch_delivery_comp_widget.dart' show BatchDeliveryCompWidget;
import 'package:flutter/material.dart';

class BatchDeliveryCompModel extends FlutterFlowModel<BatchDeliveryCompWidget> {
  ///  Local state fields for this component.

  int reverseLoopCounter = 0;

  int loopCounter = 0;

  int noOfProductRequired = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in batchDeliveryComp widget.
  List<DeliveryItemsRecord>? deliveryItemsQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in batchDeliveryComp widget.
  VolunteerAssignedProductsRecord? volProdQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  OrdersRecord? onlineOrderQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<DeliveryItemsRecord>? deliveruItemsDocQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
