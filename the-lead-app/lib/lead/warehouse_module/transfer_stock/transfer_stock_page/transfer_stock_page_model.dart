import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_inventory_nav_bar/lead_inventory_nav_bar_widget.dart';
import '/index.dart';
import 'transfer_stock_page_widget.dart' show TransferStockPageWidget;
import 'package:flutter/material.dart';

class TransferStockPageModel extends FlutterFlowModel<TransferStockPageWidget> {
  ///  Local state fields for this page.

  int? onlineAvailableToTransfer = 0;

  int issuedOnline = 0;

  int orderReceived = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (getSumOfWarehouseMovementTransactions)] action in transferStockPage widget.
  ApiCallResponse? apiOnlineStockIssued;
  // Stores action output result for [Backend Call - API (getSumOrderItemsQty)] action in transferStockPage widget.
  ApiCallResponse? apiOrderItemsCount;
  // State field(s) for qtyTxt widget.
  FocusNode? qtyTxtFocusNode;
  TextEditingController? qtyTxtTextController;
  String? Function(BuildContext, String?)? qtyTxtTextControllerValidator;
  String? _qtyTxtTextControllerValidator(BuildContext context, String? val) {
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

  // Stores action output result for [Backend Call - API (Get a single product)] action in Button widget.
  ApiCallResponse? liveStock;
  // Stores action output result for [Backend Call - API (Update onlineStock)] action in Button widget.
  ApiCallResponse? apiResultbkk;
  // Stores action output result for [Backend Call - API (Update onlineStock)] action in Button widget.
  ApiCallResponse? apiResultdod;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StockMovementTransactionsRecord? transferStockTran;
  // Model for leadInventoryNavBar component.
  late LeadInventoryNavBarModel leadInventoryNavBarModel;

  @override
  void initState(BuildContext context) {
    qtyTxtTextControllerValidator = _qtyTxtTextControllerValidator;
    leadInventoryNavBarModel =
        createModel(context, () => LeadInventoryNavBarModel());
  }

  @override
  void dispose() {
    qtyTxtFocusNode?.dispose();
    qtyTxtTextController?.dispose();

    leadInventoryNavBarModel.dispose();
  }
}
