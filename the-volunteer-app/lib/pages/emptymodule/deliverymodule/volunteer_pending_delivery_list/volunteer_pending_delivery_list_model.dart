import '/backend/backend.dart';
import '/components/volunteer_list_item_with_orders/volunteer_list_item_with_orders_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'volunteer_pending_delivery_list_widget.dart'
    show VolunteerPendingDeliveryListWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class VolunteerPendingDeliveryListModel
    extends FlutterFlowModel<VolunteerPendingDeliveryListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for volunteer_listItem_withOrders component.
  late VolunteerListItemWithOrdersModel volunteerListItemWithOrdersModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, DeliveriesRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {
    volunteerListItemWithOrdersModel =
        createModel(context, () => VolunteerListItemWithOrdersModel());
  }

  @override
  void dispose() {
    volunteerListItemWithOrdersModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, DeliveriesRecord> setListViewController(
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

  PagingController<DocumentSnapshot?, DeliveriesRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, DeliveriesRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryDeliveriesRecordPage(
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
