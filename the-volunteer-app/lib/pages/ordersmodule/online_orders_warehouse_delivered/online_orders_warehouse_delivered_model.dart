import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_warehouse_delivered_widget.dart'
    show OnlineOrdersWarehouseDeliveredWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OnlineOrdersWarehouseDeliveredModel
    extends FlutterFlowModel<OnlineOrdersWarehouseDeliveredWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for warehouse_online_orders_delivered_listview widget.

  PagingController<DocumentSnapshot?, OrdersRecord>?
      warehouseOnlineOrdersDeliveredListviewPagingController;
  Query? warehouseOnlineOrdersDeliveredListviewPagingQuery;
  List<StreamSubscription?>
      warehouseOnlineOrdersDeliveredListviewStreamSubscriptions = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    warehouseOnlineOrdersDeliveredListviewStreamSubscriptions
        .forEach((s) => s?.cancel());
    warehouseOnlineOrdersDeliveredListviewPagingController?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, OrdersRecord>
      setWarehouseOnlineOrdersDeliveredListviewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    warehouseOnlineOrdersDeliveredListviewPagingController ??=
        _createWarehouseOnlineOrdersDeliveredListviewController(query, parent);
    if (warehouseOnlineOrdersDeliveredListviewPagingQuery != query) {
      warehouseOnlineOrdersDeliveredListviewPagingQuery = query;
      warehouseOnlineOrdersDeliveredListviewPagingController?.refresh();
    }
    return warehouseOnlineOrdersDeliveredListviewPagingController!;
  }

  PagingController<DocumentSnapshot?, OrdersRecord>
      _createWarehouseOnlineOrdersDeliveredListviewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, OrdersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryOrdersRecordPage(
          queryBuilder: (_) =>
              warehouseOnlineOrdersDeliveredListviewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions:
              warehouseOnlineOrdersDeliveredListviewStreamSubscriptions,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
