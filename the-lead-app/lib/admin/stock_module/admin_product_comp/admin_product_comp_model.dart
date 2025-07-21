import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_product_comp_widget.dart' show AdminProductCompWidget;
import 'package:flutter/material.dart';

class AdminProductCompModel extends FlutterFlowModel<AdminProductCompWidget> {
  ///  Local state fields for this component.

  int recentlyAssigned = 0;

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

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  WarehouseProductsRecord? whProductQuery;
  // Stores action output result for [Backend Call - API (Get a single product)] action in IconButton widget.
  ApiCallResponse? liveStock;
  // Stores action output result for [Backend Call - API (Update onlineStock)] action in IconButton widget.
  ApiCallResponse? apiResultp6u;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  StockMovementTransactionsRecord? stockMovementTran;

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
