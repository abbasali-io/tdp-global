import '/backend/backend.dart';
import '/components/volunteer_assigned_product/volunteer_assigned_product_widget.dart';
import '/components/volunteer_list_item_with_orders/volunteer_list_item_with_orders_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assign_stock_to_volunteer_widget.dart'
    show AssignStockToVolunteerWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AssignStockToVolunteerModel
    extends FlutterFlowModel<AssignStockToVolunteerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for volunteer_listItem_withOrders component.
  late VolunteerListItemWithOrdersModel volunteerListItemWithOrdersModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, VolunteerAssignedProductsRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for volunteerAssignedProduct dynamic component.
  late FlutterFlowDynamicModels<VolunteerAssignedProductModel>
      volunteerAssignedProductModels;

  @override
  void initState(BuildContext context) {
    volunteerListItemWithOrdersModel =
        createModel(context, () => VolunteerListItemWithOrdersModel());
    volunteerAssignedProductModels =
        FlutterFlowDynamicModels(() => VolunteerAssignedProductModel());
  }

  @override
  void dispose() {
    volunteerListItemWithOrdersModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    volunteerAssignedProductModels.dispose();
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
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
