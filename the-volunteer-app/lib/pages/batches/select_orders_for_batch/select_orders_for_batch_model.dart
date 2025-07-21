import '/backend/backend.dart';
import '/components/order_list_item_new_selectable/order_list_item_new_selectable_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_orders_for_batch_widget.dart' show SelectOrdersForBatchWidget;
import 'package:flutter/material.dart';

class SelectOrdersForBatchModel
    extends FlutterFlowModel<SelectOrdersForBatchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for orderSearchTextField widget.
  FocusNode? orderSearchTextFieldFocusNode;
  TextEditingController? orderSearchTextFieldTextController;
  String? Function(BuildContext, String?)?
      orderSearchTextFieldTextControllerValidator;
  List<OrdersRecord> simpleSearchResults = [];
  // Models for orderListItem_new_selectable dynamic component.
  late FlutterFlowDynamicModels<OrderListItemNewSelectableModel>
      orderListItemNewSelectableModels1;
  // Models for orderListItem_new_selectable dynamic component.
  late FlutterFlowDynamicModels<OrderListItemNewSelectableModel>
      orderListItemNewSelectableModels2;

  @override
  void initState(BuildContext context) {
    orderListItemNewSelectableModels1 =
        FlutterFlowDynamicModels(() => OrderListItemNewSelectableModel());
    orderListItemNewSelectableModels2 =
        FlutterFlowDynamicModels(() => OrderListItemNewSelectableModel());
  }

  @override
  void dispose() {
    orderSearchTextFieldFocusNode?.dispose();
    orderSearchTextFieldTextController?.dispose();

    orderListItemNewSelectableModels1.dispose();
    orderListItemNewSelectableModels2.dispose();
  }
}
