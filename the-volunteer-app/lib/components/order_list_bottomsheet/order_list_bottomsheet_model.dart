import '/components/order_list_item_new/order_list_item_new_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_list_bottomsheet_widget.dart' show OrderListBottomsheetWidget;
import 'package:flutter/material.dart';

class OrderListBottomsheetModel
    extends FlutterFlowModel<OrderListBottomsheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for orderListItem_new dynamic component.
  late FlutterFlowDynamicModels<OrderListItemNewModel> orderListItemNewModels;

  @override
  void initState(BuildContext context) {
    orderListItemNewModels =
        FlutterFlowDynamicModels(() => OrderListItemNewModel());
  }

  @override
  void dispose() {
    orderListItemNewModels.dispose();
  }
}
