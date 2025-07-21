import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_online_orders_search_results_widget.dart'
    show AdminOnlineOrdersSearchResultsWidget;
import 'package:flutter/material.dart';

class AdminOnlineOrdersSearchResultsModel
    extends FlutterFlowModel<AdminOnlineOrdersSearchResultsWidget> {
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
