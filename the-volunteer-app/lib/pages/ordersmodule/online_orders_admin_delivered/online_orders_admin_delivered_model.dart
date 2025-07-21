import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_admin_delivered_widget.dart'
    show OnlineOrdersAdminDeliveredWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OnlineOrdersAdminDeliveredModel
    extends FlutterFlowModel<OnlineOrdersAdminDeliveredWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for admin_online_orders_listview widget.

  PagingController<DocumentSnapshot?, OrdersRecord>?
      adminOnlineOrdersListviewPagingController;
  Query? adminOnlineOrdersListviewPagingQuery;
  List<StreamSubscription?> adminOnlineOrdersListviewStreamSubscriptions = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    adminOnlineOrdersListviewStreamSubscriptions.forEach((s) => s?.cancel());
    adminOnlineOrdersListviewPagingController?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, OrdersRecord>
      setAdminOnlineOrdersListviewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    adminOnlineOrdersListviewPagingController ??=
        _createAdminOnlineOrdersListviewController(query, parent);
    if (adminOnlineOrdersListviewPagingQuery != query) {
      adminOnlineOrdersListviewPagingQuery = query;
      adminOnlineOrdersListviewPagingController?.refresh();
    }
    return adminOnlineOrdersListviewPagingController!;
  }

  PagingController<DocumentSnapshot?, OrdersRecord>
      _createAdminOnlineOrdersListviewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, OrdersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryOrdersRecordPage(
          queryBuilder: (_) => adminOnlineOrdersListviewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: adminOnlineOrdersListviewStreamSubscriptions,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
