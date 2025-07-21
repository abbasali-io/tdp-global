import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_list_item_new_selectable_widget.dart'
    show OrderListItemNewSelectableWidget;
import 'package:flutter/material.dart';

class OrderListItemNewSelectableModel
    extends FlutterFlowModel<OrderListItemNewSelectableWidget> {
  ///  Local state fields for this component.

  bool? hideButton;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Stores action output result for [Bottom Sheet - confirm_prompt] action in Button widget.
  bool? deliveryOk;
  // Stores action output result for [Backend Call - API (createDeliveryForOnlineOrders)] action in Button widget.
  ApiCallResponse? deliveryApiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
