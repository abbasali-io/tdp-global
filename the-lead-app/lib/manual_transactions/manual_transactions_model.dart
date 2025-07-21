import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'manual_transactions_widget.dart' show ManualTransactionsWidget;
import 'package:flutter/material.dart';

class ManualTransactionsModel
    extends FlutterFlowModel<ManualTransactionsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for productIDTxt widget.
  FocusNode? productIDTxtFocusNode;
  TextEditingController? productIDTxtTextController;
  String? Function(BuildContext, String?)? productIDTxtTextControllerValidator;
  // State field(s) for WhIDTxt widget.
  FocusNode? whIDTxtFocusNode;
  TextEditingController? whIDTxtTextController;
  String? Function(BuildContext, String?)? whIDTxtTextControllerValidator;
  // State field(s) for qtyTxt widget.
  FocusNode? qtyTxtFocusNode;
  TextEditingController? qtyTxtTextController;
  String? Function(BuildContext, String?)? qtyTxtTextControllerValidator;
  // State field(s) for stockType widget.
  String? stockTypeValue;
  FormFieldController<String>? stockTypeValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  WarehousesRecord? whDocQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  WarehouseProductsRecord? whProductsDoc;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StockMovementTransactionsRecord? newStockTransDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productIDTxtFocusNode?.dispose();
    productIDTxtTextController?.dispose();

    whIDTxtFocusNode?.dispose();
    whIDTxtTextController?.dispose();

    qtyTxtFocusNode?.dispose();
    qtyTxtTextController?.dispose();
  }
}
