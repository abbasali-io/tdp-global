import '/flutter_flow/flutter_flow_util.dart';
import 'lead_search_deliveries_page_widget.dart'
    show LeadSearchDeliveriesPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeadSearchDeliveriesPageModel
    extends FlutterFlowModel<LeadSearchDeliveriesPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  // State field(s) for volNameTxt widget.
  FocusNode? volNameTxtFocusNode;
  TextEditingController? volNameTxtTextController;
  String? Function(BuildContext, String?)? volNameTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();

    volNameTxtFocusNode?.dispose();
    volNameTxtTextController?.dispose();
  }
}
