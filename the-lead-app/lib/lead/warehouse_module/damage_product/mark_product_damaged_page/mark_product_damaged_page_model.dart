import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mark_product_damaged_page_widget.dart'
    show MarkProductDamagedPageWidget;
import 'package:flutter/material.dart';

class MarkProductDamagedPageModel
    extends FlutterFlowModel<MarkProductDamagedPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for dmgQty widget.
  FocusNode? dmgQtyFocusNode;
  TextEditingController? dmgQtyTextController;
  String? Function(BuildContext, String?)? dmgQtyTextControllerValidator;
  String? _dmgQtyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 3) {
      return 'Maximum 3 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 150) {
      return 'Maximum 150 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Damaged Stock)] action in Button widget.
  ApiCallResponse? apiResult69u;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DamagedProductsRecord? newDamagedProduct;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StockMovementTransactionsRecord? damageStockTran;

  @override
  void initState(BuildContext context) {
    dmgQtyTextControllerValidator = _dmgQtyTextControllerValidator;
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    dmgQtyFocusNode?.dispose();
    dmgQtyTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
