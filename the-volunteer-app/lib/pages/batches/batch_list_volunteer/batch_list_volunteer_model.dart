import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'batch_list_volunteer_widget.dart' show BatchListVolunteerWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BatchListVolunteerModel
    extends FlutterFlowModel<BatchListVolunteerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for batchList_warehouse widget.

  PagingController<DocumentSnapshot?, BatchesRecord>?
      batchListWarehousePagingController;
  Query? batchListWarehousePagingQuery;
  List<StreamSubscription?> batchListWarehouseStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    batchListWarehouseStreamSubscriptions.forEach((s) => s?.cancel());
    batchListWarehousePagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, BatchesRecord>
      setBatchListWarehouseController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    batchListWarehousePagingController ??=
        _createBatchListWarehouseController(query, parent);
    if (batchListWarehousePagingQuery != query) {
      batchListWarehousePagingQuery = query;
      batchListWarehousePagingController?.refresh();
    }
    return batchListWarehousePagingController!;
  }

  PagingController<DocumentSnapshot?, BatchesRecord>
      _createBatchListWarehouseController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, BatchesRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryBatchesRecordPage(
          queryBuilder: (_) => batchListWarehousePagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: batchListWarehouseStreamSubscriptions,
          controller: controller,
          pageSize: 10,
          isStream: true,
        ),
      );
  }
}
