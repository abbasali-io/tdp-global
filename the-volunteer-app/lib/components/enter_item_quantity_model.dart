import '/flutter_flow/flutter_flow_util.dart';
import 'enter_item_quantity_widget.dart' show EnterItemQuantityWidget;
import 'package:flutter/material.dart';

class EnterItemQuantityModel extends FlutterFlowModel<EnterItemQuantityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for deliveryNoteTxt widget.
  FocusNode? deliveryNoteTxtFocusNode;
  TextEditingController? deliveryNoteTxtTextController;
  String? Function(BuildContext, String?)?
      deliveryNoteTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    deliveryNoteTxtFocusNode?.dispose();
    deliveryNoteTxtTextController?.dispose();
  }
}
