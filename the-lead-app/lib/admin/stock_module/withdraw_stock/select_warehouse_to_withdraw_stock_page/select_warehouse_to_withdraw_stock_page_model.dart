import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_warehouse_to_withdraw_stock_page_widget.dart'
    show SelectWarehouseToWithdrawStockPageWidget;
import 'package:flutter/material.dart';

class SelectWarehouseToWithdrawStockPageModel
    extends FlutterFlowModel<SelectWarehouseToWithdrawStockPageWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<WarehousesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
