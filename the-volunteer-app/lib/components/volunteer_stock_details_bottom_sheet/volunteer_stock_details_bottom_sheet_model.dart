import '/backend/backend.dart';
import '/components/product_list_item/product_list_item_widget.dart';
import '/components/volunteer_list_item_with_orders/volunteer_list_item_with_orders_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'volunteer_stock_details_bottom_sheet_widget.dart'
    show VolunteerStockDetailsBottomSheetWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class VolunteerStockDetailsBottomSheetModel
    extends FlutterFlowModel<VolunteerStockDetailsBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for volunteer_listItem_withOrders component.
  late VolunteerListItemWithOrdersModel volunteerListItemWithOrdersModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, VolunteerAssignedProductsRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for productListItem dynamic component.
  late FlutterFlowDynamicModels<ProductListItemModel> productListItemModels;

  @override
  void initState(BuildContext context) {
    volunteerListItemWithOrdersModel =
        createModel(context, () => VolunteerListItemWithOrdersModel());
    productListItemModels =
        FlutterFlowDynamicModels(() => ProductListItemModel());
  }

  @override
  void dispose() {
    volunteerListItemWithOrdersModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    productListItemModels.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, VolunteerAssignedProductsRecord>
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

  PagingController<DocumentSnapshot?, VolunteerAssignedProductsRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, VolunteerAssignedProductsRecord>(
            firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryVolunteerAssignedProductsRecordPage(
          parent: parent,
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
