import '/backend/backend.dart';
import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_volunteers_widget.dart' show OnlineOrdersVolunteersWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class OnlineOrdersVolunteersModel
    extends FlutterFlowModel<OnlineOrdersVolunteersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for ListViewVolunteer widget.

  PagingController<DocumentSnapshot?, DeliveriesRecord>?
      listViewVolunteerPagingController2;
  Query? listViewVolunteerPagingQuery2;
  List<StreamSubscription?> listViewVolunteerStreamSubscriptions2 = [];

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    listViewVolunteerStreamSubscriptions2.forEach((s) => s?.cancel());
    listViewVolunteerPagingController2?.dispose();

    navigationDrawerModel.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, DeliveriesRecord>
      setListViewVolunteerController2(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewVolunteerPagingController2 ??=
        _createListViewVolunteerController2(query, parent);
    if (listViewVolunteerPagingQuery2 != query) {
      listViewVolunteerPagingQuery2 = query;
      listViewVolunteerPagingController2?.refresh();
    }
    return listViewVolunteerPagingController2!;
  }

  PagingController<DocumentSnapshot?, DeliveriesRecord>
      _createListViewVolunteerController2(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, DeliveriesRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryDeliveriesRecordPage(
          queryBuilder: (_) => listViewVolunteerPagingQuery2 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewVolunteerStreamSubscriptions2,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
