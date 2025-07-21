import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_warehouse_new_widget.dart'
    show OnlineOrdersWarehouseNewWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OnlineOrdersWarehouseNewModel
    extends FlutterFlowModel<OnlineOrdersWarehouseNewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for warehouse_online_orders_new_listview widget.

  PagingController<DocumentSnapshot?, OrdersRecord>?
      warehouseOnlineOrdersNewListviewPagingController;
  Query? warehouseOnlineOrdersNewListviewPagingQuery;
  List<StreamSubscription?>
      warehouseOnlineOrdersNewListviewStreamSubscriptions = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    warehouseOnlineOrdersNewListviewStreamSubscriptions
        .forEach((s) => s?.cancel());
    warehouseOnlineOrdersNewListviewPagingController?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, OrdersRecord>
      setWarehouseOnlineOrdersNewListviewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    warehouseOnlineOrdersNewListviewPagingController ??=
        _createWarehouseOnlineOrdersNewListviewController(query, parent);
    if (warehouseOnlineOrdersNewListviewPagingQuery != query) {
      warehouseOnlineOrdersNewListviewPagingQuery = query;
      warehouseOnlineOrdersNewListviewPagingController?.refresh();
    }
    return warehouseOnlineOrdersNewListviewPagingController!;
  }

  PagingController<DocumentSnapshot?, OrdersRecord>
      _createWarehouseOnlineOrdersNewListviewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, OrdersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryOrdersRecordPage(
          queryBuilder: (_) =>
              warehouseOnlineOrdersNewListviewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions:
              warehouseOnlineOrdersNewListviewStreamSubscriptions,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
