import '/flutter_flow/flutter_flow_util.dart';
import 'warehouse_assign_stock_component_widget.dart'
    show WarehouseAssignStockComponentWidget;
import 'package:flutter/material.dart';

class WarehouseAssignStockComponentModel
    extends FlutterFlowModel<WarehouseAssignStockComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for assignStockTxt widget.
  FocusNode? assignStockTxtFocusNode;
  TextEditingController? assignStockTxtTextController;
  String? Function(BuildContext, String?)?
      assignStockTxtTextControllerValidator;
  String? _assignStockTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    assignStockTxtTextControllerValidator =
        _assignStockTxtTextControllerValidator;
  }

  @override
  void dispose() {
    assignStockTxtFocusNode?.dispose();
    assignStockTxtTextController?.dispose();
  }
}
