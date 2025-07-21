import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_warehouse_assigned_widget.dart'
    show OnlineOrdersWarehouseAssignedWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OnlineOrdersWarehouseAssignedModel
    extends FlutterFlowModel<OnlineOrdersWarehouseAssignedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for warehouse_online_orders_assigned_listview widget.

  PagingController<DocumentSnapshot?, OrdersRecord>?
      warehouseOnlineOrdersAssignedListviewPagingController;
  Query? warehouseOnlineOrdersAssignedListviewPagingQuery;
  List<StreamSubscription?>
      warehouseOnlineOrdersAssignedListviewStreamSubscriptions = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    warehouseOnlineOrdersAssignedListviewStreamSubscriptions
        .forEach((s) => s?.cancel());
    warehouseOnlineOrdersAssignedListviewPagingController?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, OrdersRecord>
      setWarehouseOnlineOrdersAssignedListviewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    warehouseOnlineOrdersAssignedListviewPagingController ??=
        _createWarehouseOnlineOrdersAssignedListviewController(query, parent);
    if (warehouseOnlineOrdersAssignedListviewPagingQuery != query) {
      warehouseOnlineOrdersAssignedListviewPagingQuery = query;
      warehouseOnlineOrdersAssignedListviewPagingController?.refresh();
    }
    return warehouseOnlineOrdersAssignedListviewPagingController!;
  }

  PagingController<DocumentSnapshot?, OrdersRecord>
      _createWarehouseOnlineOrdersAssignedListviewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, OrdersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryOrdersRecordPage(
          queryBuilder: (_) =>
              warehouseOnlineOrdersAssignedListviewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions:
              warehouseOnlineOrdersAssignedListviewStreamSubscriptions,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
