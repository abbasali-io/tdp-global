import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_admin_product_comp_widget.dart' show AddAdminProductCompWidget;
import 'package:flutter/material.dart';

class AddAdminProductCompModel
    extends FlutterFlowModel<AddAdminProductCompWidget> {
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

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 4) {
      return 'Maximum 4 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  StockMovementTransactionsRecord? newStockTran;

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
