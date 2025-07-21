import '/backend/backend.dart';
import '/components/volunteer_list_item_with_orders/volunteer_list_item_with_orders_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'volunteer_list_widget.dart' show VolunteerListWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class VolunteerListModel extends FlutterFlowModel<VolunteerListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, UsersRecord>? listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for volunteer_listItem_withOrders dynamic component.
  late FlutterFlowDynamicModels<VolunteerListItemWithOrdersModel>
      volunteerListItemWithOrdersModels;

  @override
  void initState(BuildContext context) {
    volunteerListItemWithOrdersModels =
        FlutterFlowDynamicModels(() => VolunteerListItemWithOrdersModel());
  }

  @override
  void dispose() {
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    volunteerListItemWithOrdersModels.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, UsersRecord> setListViewController(
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

  PagingController<DocumentSnapshot?, UsersRecord> _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, UsersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUsersRecordPage(
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
