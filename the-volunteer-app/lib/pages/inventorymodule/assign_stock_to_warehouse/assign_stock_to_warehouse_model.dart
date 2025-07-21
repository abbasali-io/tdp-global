import '/backend/backend.dart';
import '/components/warehouse_assign_stock_component/warehouse_assign_stock_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assign_stock_to_warehouse_widget.dart'
    show AssignStockToWarehouseWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AssignStockToWarehouseModel
    extends FlutterFlowModel<AssignStockToWarehouseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, WarehousesRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for warehouseAssignStockComponent dynamic component.
  late FlutterFlowDynamicModels<WarehouseAssignStockComponentModel>
      warehouseAssignStockComponentModels;

  @override
  void initState(BuildContext context) {
    warehouseAssignStockComponentModels =
        FlutterFlowDynamicModels(() => WarehouseAssignStockComponentModel());
  }

  @override
  void dispose() {
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    warehouseAssignStockComponentModels.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, WarehousesRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, WarehousesRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, WarehousesRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryWarehousesRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
