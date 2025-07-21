import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_inventory_nav_bar/lead_inventory_nav_bar_widget.dart';
import '/index.dart';
import 'stock_deatls_page_widget.dart' show StockDeatlsPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class StockDeatlsPageModel extends FlutterFlowModel<StockDeatlsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, WarehouseProductsRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Model for leadInventoryNavBar component.
  late LeadInventoryNavBarModel leadInventoryNavBarModel;

  @override
  void initState(BuildContext context) {
    leadInventoryNavBarModel =
        createModel(context, () => LeadInventoryNavBarModel());
  }

  @override
  void dispose() {
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    leadInventoryNavBarModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, WarehouseProductsRecord>
      setListViewController(
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

  PagingController<DocumentSnapshot?, WarehouseProductsRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, WarehouseProductsRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryWarehouseProductsRecordPage(
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
