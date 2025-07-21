import '/flutter_flow/flutter_flow_util.dart';
import 'volunteer_assigned_product_widget.dart'
    show VolunteerAssignedProductWidget;
import 'package:flutter/material.dart';

class VolunteerAssignedProductModel
    extends FlutterFlowModel<VolunteerAssignedProductWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for updateStock widget.
  FocusNode? updateStockFocusNode;
  TextEditingController? updateStockTextController;
  String? Function(BuildContext, String?)? updateStockTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    updateStockFocusNode?.dispose();
    updateStockTextController?.dispose();
  }
}
