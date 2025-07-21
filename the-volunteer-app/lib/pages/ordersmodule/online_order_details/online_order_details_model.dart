import '/components/online_order_items/online_order_items_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_order_details_widget.dart' show OnlineOrderDetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class OnlineOrderDetailsModel
    extends FlutterFlowModel<OnlineOrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Models for onlineOrderItems dynamic component.
  late FlutterFlowDynamicModels<OnlineOrderItemsModel> onlineOrderItemsModels;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    onlineOrderItemsModels =
        FlutterFlowDynamicModels(() => OnlineOrderItemsModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    onlineOrderItemsModels.dispose();
    expandableExpandableController4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
