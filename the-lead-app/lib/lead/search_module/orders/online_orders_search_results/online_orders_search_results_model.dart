import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_search_results_widget.dart'
    show OnlineOrdersSearchResultsWidget;
import 'package:flutter/material.dart';

class OnlineOrdersSearchResultsModel
    extends FlutterFlowModel<OnlineOrdersSearchResultsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Firestore Query - Query a collection] action in orderItemContainer widget.
  OrdersRecord? searchedOrderDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in orderItemContainer widget.
  DeliveriesRecord? deliveryDocQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in orderItemContainer widget.
  BatchesRecord? batchDocQuery;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
