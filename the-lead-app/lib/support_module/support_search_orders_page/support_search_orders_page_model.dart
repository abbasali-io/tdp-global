import '/flutter_flow/flutter_flow_util.dart';
import 'support_search_orders_page_widget.dart'
    show SupportSearchOrdersPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportSearchOrdersPageModel
    extends FlutterFlowModel<SupportSearchOrdersPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  // State field(s) for warehouseNameTxt widget.
  FocusNode? warehouseNameTxtFocusNode;
  TextEditingController? warehouseNameTxtTextController;
  String? Function(BuildContext, String?)?
      warehouseNameTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for Switch widget.
  bool? switchValue;
  DateTime? datePicked5;
  DateTime? datePicked6;
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

    warehouseNameTxtFocusNode?.dispose();
    warehouseNameTxtTextController?.dispose();

    startAmtTxtFocusNode?.dispose();
    startAmtTxtTextController?.dispose();

    endAmtTxtFocusNode?.dispose();
    endAmtTxtTextController?.dispose();
  }
}
