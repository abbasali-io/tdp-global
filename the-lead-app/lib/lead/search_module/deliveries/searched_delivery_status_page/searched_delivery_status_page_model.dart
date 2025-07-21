import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'searched_delivery_status_page_widget.dart'
    show SearchedDeliveryStatusPageWidget;
import 'package:flutter/material.dart';

class SearchedDeliveryStatusPageModel
    extends FlutterFlowModel<SearchedDeliveryStatusPageWidget> {
  ///  Local state fields for this page.

  int loopCounter = 0;

  int noOfProductsRequireStock = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in searchedDeliveryStatusPage widget.
  List<DeliveryItemsRecord>? deliveryItemsDocsListQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in searchedDeliveryStatusPage widget.
  VolunteerAssignedProductsRecord? volProductDocQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
