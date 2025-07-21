import '/flutter_flow/flutter_flow_util.dart';
import 'lead_search_batch_page_widget.dart' show LeadSearchBatchPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeadSearchBatchPageModel
    extends FlutterFlowModel<LeadSearchBatchPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();
  }
}
