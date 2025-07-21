import '/flutter_flow/flutter_flow_util.dart';
import 'offline_order_item_component2_widget.dart'
    show OfflineOrderItemComponent2Widget;
import 'package:flutter/material.dart';

class OfflineOrderItemComponent2Model
    extends FlutterFlowModel<OfflineOrderItemComponent2Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for qtyToUpdateTxtField widget.
  FocusNode? qtyToUpdateTxtFieldFocusNode;
  TextEditingController? qtyToUpdateTxtFieldTextController;
  String? Function(BuildContext, String?)?
      qtyToUpdateTxtFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    qtyToUpdateTxtFieldFocusNode?.dispose();
    qtyToUpdateTxtFieldTextController?.dispose();
  }
}
