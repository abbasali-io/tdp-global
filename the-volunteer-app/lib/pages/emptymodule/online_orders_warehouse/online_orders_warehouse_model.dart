import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_warehouse_widget.dart' show OnlineOrdersWarehouseWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OnlineOrdersWarehouseModel
    extends FlutterFlowModel<OnlineOrdersWarehouseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for ListViewWarehouse widget.

  PagingController<DocumentSnapshot?, OrdersRecord>?
      listViewWarehousePagingController1;
  Query? listViewWarehousePagingQuery1;
  List<StreamSubscription?> listViewWarehouseStreamSubscriptions1 = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    listViewWarehouseStreamSubscriptions1.forEach((s) => s?.cancel());
    listViewWarehousePagingController1?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, OrdersRecord>
      setListViewWarehouseController1(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewWarehousePagingController1 ??=
        _createListViewWarehouseController1(query, parent);
    if (listViewWarehousePagingQuery1 != query) {
      listViewWarehousePagingQuery1 = query;
      listViewWarehousePagingController1?.refresh();
    }
    return listViewWarehousePagingController1!;
  }

  PagingController<DocumentSnapshot?, OrdersRecord>
      _createListViewWarehouseController1(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, OrdersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryOrdersRecordPage(
          queryBuilder: (_) => listViewWarehousePagingQuery1 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewWarehouseStreamSubscriptions1,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
