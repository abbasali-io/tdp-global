import '/backend/backend.dart';
import '/components/order_list_item_delivered/order_list_item_delivered_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_testing_widget.dart' show SearchTestingWidget;
import 'package:flutter/material.dart';

class SearchTestingModel extends FlutterFlowModel<SearchTestingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<OrdersRecord> simpleSearchResults = [];
  // Models for orderListItem_delivered dynamic component.
  late FlutterFlowDynamicModels<OrderListItemDeliveredModel>
      orderListItemDeliveredModels1;
  // Models for orderListItem_delivered dynamic component.
  late FlutterFlowDynamicModels<OrderListItemDeliveredModel>
      orderListItemDeliveredModels2;

  @override
  void initState(BuildContext context) {
    orderListItemDeliveredModels1 =
        FlutterFlowDynamicModels(() => OrderListItemDeliveredModel());
    orderListItemDeliveredModels2 =
        FlutterFlowDynamicModels(() => OrderListItemDeliveredModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    orderListItemDeliveredModels1.dispose();
    orderListItemDeliveredModels2.dispose();
  }
}
