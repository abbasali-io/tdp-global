import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'warehouse_stock_comp_widget.dart' show WarehouseStockCompWidget;
import 'package:flutter/material.dart';

class WarehouseStockCompModel
    extends FlutterFlowModel<WarehouseStockCompWidget> {
  ///  Local state fields for this component.

  int onlineReceived = 0;

  int offlineReceived = 0;

  int onlineIssued = 0;

  int offlineIssued = 0;

  int onlineDamaged = 0;

  int offlineDamaged = 0;

  int orderReceived = 0;

  int liveStock = 0;

  int transferredToOffline = 0;

  int transferredToOnline = 0;

  int onlineReturnedByVol = 0;

  int offlineReturnedByVol = 0;

  int? onlineWithDrawn = 0;

  int? offlineWithDrawn = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getSumOrderItemsQty)] action in warehouseStockComp widget.
  ApiCallResponse? apiOrderItemsCount;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOnlineStockReceived;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOfflineStockReceived;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOnlineStockIssued;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOfflineStockIssued;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOnlineStockDamaged;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOfflineStockDamaged;
  // Stores action output result for [Backend Call - API (getSumOfTransferredStock)] action in warehouseStockComp widget.
  ApiCallResponse? apiOnlineToOffline;
  // Stores action output result for [Backend Call - API (getSumOfTransferredStock)] action in warehouseStockComp widget.
  ApiCallResponse? apiOfflineToOnline;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOnlineReturned;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOfflineReturned;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOnlineWithdrawn;
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in warehouseStockComp widget.
  ApiCallResponse? apiOfflineWithdrawn;
  // Stores action output result for [Backend Call - API (Get a single product)] action in warehouseStockComp widget.
  ApiCallResponse? onloadLiveStockUpdate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
