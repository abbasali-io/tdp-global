import '/admin/order_module/online_order_comp/online_order_comp_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_order_nav_bar/lead_order_nav_bar_widget.dart';
import '/index.dart';
import 'new_online_orders_page_widget.dart' show NewOnlineOrdersPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class NewOnlineOrdersPageModel
    extends FlutterFlowModel<NewOnlineOrdersPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ordersListView widget.

  PagingController<DocumentSnapshot?, OrdersRecord>?
      ordersListViewPagingController;
  Query? ordersListViewPagingQuery;
  List<StreamSubscription?> ordersListViewStreamSubscriptions = [];

  // Models for onlineOrderComp dynamic component.
  late FlutterFlowDynamicModels<OnlineOrderCompModel> onlineOrderCompModels;
  // Model for leadOrderNavBar component.
  late LeadOrderNavBarModel leadOrderNavBarModel;

  @override
  void initState(BuildContext context) {
    onlineOrderCompModels =
        FlutterFlowDynamicModels(() => OnlineOrderCompModel());
    leadOrderNavBarModel = createModel(context, () => LeadOrderNavBarModel());
  }

  @override
  void dispose() {
    ordersListViewStreamSubscriptions.forEach((s) => s?.cancel());
    ordersListViewPagingController?.dispose();

    onlineOrderCompModels.dispose();
    leadOrderNavBarModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, OrdersRecord> setOrdersListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    ordersListViewPagingController ??=
        _createOrdersListViewController(query, parent);
    if (ordersListViewPagingQuery != query) {
      ordersListViewPagingQuery = query;
      ordersListViewPagingController?.refresh();
    }
    return ordersListViewPagingController!;
  }

  PagingController<DocumentSnapshot?, OrdersRecord>
      _createOrdersListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, OrdersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryOrdersRecordPage(
          queryBuilder: (_) => ordersListViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: ordersListViewStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
