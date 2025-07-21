import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_notes_bottom_sheet_widget.dart'
    show DeliveryNotesBottomSheetWidget;
import 'package:flutter/material.dart';

class DeliveryNotesBottomSheetModel
    extends FlutterFlowModel<DeliveryNotesBottomSheetWidget> {
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
