import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_comp_widget.dart' show DeliveryCompWidget;
import 'package:flutter/material.dart';

class DeliveryCompModel extends FlutterFlowModel<DeliveryCompWidget> {
  ///  Local state fields for this component.

  int loopCounter = 0;

  int noOfProductsRequireStock = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in deliveryComp widget.
  List<DeliveryItemsRecord>? deliveryItemsDocsListQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in deliveryComp widget.
  VolunteerAssignedProductsRecord? volProductDocQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
