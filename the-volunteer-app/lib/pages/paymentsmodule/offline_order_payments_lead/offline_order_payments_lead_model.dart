import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/components/offline_order_list_item_cash_due/offline_order_list_item_cash_due_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'offline_order_payments_lead_widget.dart'
    show OfflineOrderPaymentsLeadWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OfflineOrderPaymentsLeadModel
    extends FlutterFlowModel<OfflineOrderPaymentsLeadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for offlineOrderListItem_cashDue dynamic component.
  late FlutterFlowDynamicModels<OfflineOrderListItemCashDueModel>
      offlineOrderListItemCashDueModels;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, PaymentsRecord>?
      listViewPagingController3;
  Query? listViewPagingQuery3;
  List<StreamSubscription?> listViewStreamSubscriptions3 = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    offlineOrderListItemCashDueModels =
        FlutterFlowDynamicModels(() => OfflineOrderListItemCashDueModel());
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    offlineOrderListItemCashDueModels.dispose();
    listViewStreamSubscriptions3.forEach((s) => s?.cancel());
    listViewPagingController3?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, PaymentsRecord> setListViewController3(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController3 ??= _createListViewController3(query, parent);
    if (listViewPagingQuery3 != query) {
      listViewPagingQuery3 = query;
      listViewPagingController3?.refresh();
    }
    return listViewPagingController3!;
  }

  PagingController<DocumentSnapshot?, PaymentsRecord>
      _createListViewController3(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, PaymentsRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryPaymentsRecordPage(
          queryBuilder: (_) => listViewPagingQuery3 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions3,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
