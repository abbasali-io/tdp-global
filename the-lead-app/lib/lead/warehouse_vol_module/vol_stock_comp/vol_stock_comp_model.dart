import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vol_stock_comp_widget.dart' show VolStockCompWidget;
import 'package:flutter/material.dart';

class VolStockCompModel extends FlutterFlowModel<VolStockCompWidget> {
  ///  Local state fields for this component.

  int onlineReceived = 0;

  int offlineReceived = 0;

  int orderDelivered = 0;

  int onlineDamaged = 0;

  int offlineDamaged = 0;

  int orderReceived = 0;

  int onlineReturned = 0;

  int offLineReturned = 0;

  int offLineSold = 0;

  int pending = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getSumOfVolAssignedProducts)] action in volStockComp widget.
  ApiCallResponse? apiVolOnlineReceived;
  // Stores action output result for [Backend Call - API (getSumOfVolAssignedProducts)] action in volStockComp widget.
  ApiCallResponse? apiVolOfflineReceived;
  // Stores action output result for [Backend Call - API (getSumOfAllDeliveryItemsWItStatus)] action in volStockComp widget.
  ApiCallResponse? apiPendingItems;
  // Stores action output result for [Backend Call - API (getSumOfAllDeliveryItemsWItStatus)] action in volStockComp widget.
  ApiCallResponse? apiDeliveredItems;
  // Stores action output result for [Backend Call - API (getSumOfVolMovementTrans)] action in volStockComp widget.
  ApiCallResponse? apiOnlineReturnedToWh;
  // Stores action output result for [Backend Call - API (getSumOfVolMovementTrans)] action in volStockComp widget.
  ApiCallResponse? apiOfflineReturnedToWh;
  // Stores action output result for [Backend Call - API (getSumOfAllDeliveryItems)] action in volStockComp widget.
  ApiCallResponse? apiAllOrdersReceived;
  // Stores action output result for [Backend Call - API (getSumOfOfflineSaleItems)] action in volStockComp widget.
  ApiCallResponse? apiOfflineSold;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
