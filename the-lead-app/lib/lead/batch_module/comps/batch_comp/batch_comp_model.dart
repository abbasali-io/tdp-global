import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'batch_comp_widget.dart' show BatchCompWidget;
import 'package:flutter/material.dart';

class BatchCompModel extends FlutterFlowModel<BatchCompWidget> {
  ///  Local state fields for this component.

  int noOfProductRequired = 0;

  int loopCounter = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in batchComp widget.
  List<DeliveryItemsRecord>? deliveryItemsQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in batchComp widget.
  VolunteerAssignedProductsRecord? volProductQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
