import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_online_orders_page_widget.dart'
    show SearchOnlineOrdersPageWidget;
import 'package:flutter/material.dart';

class SearchOnlineOrdersPageModel
    extends FlutterFlowModel<SearchOnlineOrdersPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (OrdersSearch)] action in Button widget.
  ApiCallResponse? searchResults;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();
  }
}
