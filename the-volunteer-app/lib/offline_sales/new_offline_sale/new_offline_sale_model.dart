import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_offline_sale_widget.dart' show NewOfflineSaleWidget;
import 'package:flutter/material.dart';

class NewOfflineSaleModel extends FlutterFlowModel<NewOfflineSaleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstNameTxt widget.
  FocusNode? firstNameTxtFocusNode;
  TextEditingController? firstNameTxtTextController;
  String? Function(BuildContext, String?)? firstNameTxtTextControllerValidator;
  // State field(s) for surNameTxt widget.
  FocusNode? surNameTxtFocusNode;
  TextEditingController? surNameTxtTextController;
  String? Function(BuildContext, String?)? surNameTxtTextControllerValidator;
  // State field(s) for addressLine1Txt widget.
  FocusNode? addressLine1TxtFocusNode;
  TextEditingController? addressLine1TxtTextController;
  String? Function(BuildContext, String?)?
      addressLine1TxtTextControllerValidator;
  // State field(s) for addressLine2Txt widget.
  FocusNode? addressLine2TxtFocusNode;
  TextEditingController? addressLine2TxtTextController;
  String? Function(BuildContext, String?)?
      addressLine2TxtTextControllerValidator;
  // State field(s) for customerEmailTxt widget.
  FocusNode? customerEmailTxtFocusNode;
  TextEditingController? customerEmailTxtTextController;
  String? Function(BuildContext, String?)?
      customerEmailTxtTextControllerValidator;
  // State field(s) for customerPhoneTxt widget.
  FocusNode? customerPhoneTxtFocusNode;
  TextEditingController? customerPhoneTxtTextController;
  String? Function(BuildContext, String?)?
      customerPhoneTxtTextControllerValidator;
  // State field(s) for customerCityTxt widget.
  FocusNode? customerCityTxtFocusNode;
  TextEditingController? customerCityTxtTextController;
  String? Function(BuildContext, String?)?
      customerCityTxtTextControllerValidator;
  // State field(s) for customerPostcodeTxt widget.
  FocusNode? customerPostcodeTxtFocusNode;
  TextEditingController? customerPostcodeTxtTextController;
  String? Function(BuildContext, String?)?
      customerPostcodeTxtTextControllerValidator;
  // Stores action output result for [Custom Action - createDraftOfflineOrder] action in Button widget.
  DocumentReference? draftOfflineOrderRef;
  // Stores action output result for [Custom Action - createDraftOfflineOrder] action in Button widget.
  DocumentReference? draftOfflineOrderAnonymous;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTxtFocusNode?.dispose();
    firstNameTxtTextController?.dispose();

    surNameTxtFocusNode?.dispose();
    surNameTxtTextController?.dispose();

    addressLine1TxtFocusNode?.dispose();
    addressLine1TxtTextController?.dispose();

    addressLine2TxtFocusNode?.dispose();
    addressLine2TxtTextController?.dispose();

    customerEmailTxtFocusNode?.dispose();
    customerEmailTxtTextController?.dispose();

    customerPhoneTxtFocusNode?.dispose();
    customerPhoneTxtTextController?.dispose();

    customerCityTxtFocusNode?.dispose();
    customerCityTxtTextController?.dispose();

    customerPostcodeTxtFocusNode?.dispose();
    customerPostcodeTxtTextController?.dispose();
  }
}
