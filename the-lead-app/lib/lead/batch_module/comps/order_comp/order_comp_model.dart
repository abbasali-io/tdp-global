import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_comp_widget.dart' show OrderCompWidget;
import 'package:flutter/material.dart';

class OrderCompModel extends FlutterFlowModel<OrderCompWidget> {
  ///  Local state fields for this component.

  int loopCounter = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DeliveriesRecord? newDelivery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OrderItemsRecord>? onlineOrderItemsQuery;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DeliveryItemsRecord? delivertItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
