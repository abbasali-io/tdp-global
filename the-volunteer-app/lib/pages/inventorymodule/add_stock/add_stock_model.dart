import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_stock_widget.dart' show AddStockWidget;
import 'package:flutter/material.dart';

class AddStockModel extends FlutterFlowModel<AddStockWidget> {
  ///  Local state fields for this page.

  int? newStockBalance;

  ///  State fields for stateful widgets in this page.

  // State field(s) for currentBalTxt widget.
  FocusNode? currentBalTxtFocusNode;
  TextEditingController? currentBalTxtTextController;
  String? Function(BuildContext, String?)? currentBalTxtTextControllerValidator;
  // State field(s) for updateQtyTxt widget.
  FocusNode? updateQtyTxtFocusNode;
  TextEditingController? updateQtyTxtTextController;
  String? Function(BuildContext, String?)? updateQtyTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    currentBalTxtFocusNode?.dispose();
    currentBalTxtTextController?.dispose();

    updateQtyTxtFocusNode?.dispose();
    updateQtyTxtTextController?.dispose();
  }
}
