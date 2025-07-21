import '/flutter_flow/flutter_flow_util.dart';
import 'lead_search_payments_page_widget.dart'
    show LeadSearchPaymentsPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeadSearchPaymentsPageModel
    extends FlutterFlowModel<LeadSearchPaymentsPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Switch widget.
  bool? switchValue;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for StartAmtTxt widget.
  FocusNode? startAmtTxtFocusNode;
  TextEditingController? startAmtTxtTextController;
  String? Function(BuildContext, String?)? startAmtTxtTextControllerValidator;
  // State field(s) for EndAmtTxt widget.
  FocusNode? endAmtTxtFocusNode;
  TextEditingController? endAmtTxtTextController;
  String? Function(BuildContext, String?)? endAmtTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();

    startAmtTxtFocusNode?.dispose();
    startAmtTxtTextController?.dispose();

    endAmtTxtFocusNode?.dispose();
    endAmtTxtTextController?.dispose();
  }
}
