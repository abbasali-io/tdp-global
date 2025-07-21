import '/flutter_flow/flutter_flow_util.dart';
import 'support_search_deliveries_page_widget.dart'
    show SupportSearchDeliveriesPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportSearchDeliveriesPageModel
    extends FlutterFlowModel<SupportSearchDeliveriesPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  // State field(s) for whNameTxt widget.
  FocusNode? whNameTxtFocusNode;
  TextEditingController? whNameTxtTextController;
  String? Function(BuildContext, String?)? whNameTxtTextControllerValidator;
  // State field(s) for volNameTxt widget.
  FocusNode? volNameTxtFocusNode;
  TextEditingController? volNameTxtTextController;
  String? Function(BuildContext, String?)? volNameTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();

    whNameTxtFocusNode?.dispose();
    whNameTxtTextController?.dispose();

    volNameTxtFocusNode?.dispose();
    volNameTxtTextController?.dispose();
  }
}
