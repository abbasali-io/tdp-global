import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTxt widget.
  FocusNode? nameTxtFocusNode;
  TextEditingController? nameTxtTextController;
  String? Function(BuildContext, String?)? nameTxtTextControllerValidator;
  String? _nameTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  String? _emailTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for contactNumberTxt widget.
  FocusNode? contactNumberTxtFocusNode;
  TextEditingController? contactNumberTxtTextController;
  String? Function(BuildContext, String?)?
      contactNumberTxtTextControllerValidator;
  String? _contactNumberTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for userKeyTxt widget.
  FocusNode? userKeyTxtFocusNode;
  TextEditingController? userKeyTxtTextController;
  late bool userKeyTxtVisibility;
  String? Function(BuildContext, String?)? userKeyTxtTextControllerValidator;
  String? _userKeyTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for passwordTxt widget.
  FocusNode? passwordTxtFocusNode;
  TextEditingController? passwordTxtTextController;
  late bool passwordTxtVisibility;
  String? Function(BuildContext, String?)? passwordTxtTextControllerValidator;
  String? _passwordTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for confirmPasswordTxt widget.
  FocusNode? confirmPasswordTxtFocusNode;
  TextEditingController? confirmPasswordTxtTextController;
  late bool confirmPasswordTxtVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTxtTextControllerValidator;
  String? _confirmPasswordTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    nameTxtTextControllerValidator = _nameTxtTextControllerValidator;
    emailTxtTextControllerValidator = _emailTxtTextControllerValidator;
    contactNumberTxtTextControllerValidator =
        _contactNumberTxtTextControllerValidator;
    userKeyTxtVisibility = false;
    userKeyTxtTextControllerValidator = _userKeyTxtTextControllerValidator;
    passwordTxtVisibility = false;
    passwordTxtTextControllerValidator = _passwordTxtTextControllerValidator;
    confirmPasswordTxtVisibility = false;
    confirmPasswordTxtTextControllerValidator =
        _confirmPasswordTxtTextControllerValidator;
  }

  @override
  void dispose() {
    nameTxtFocusNode?.dispose();
    nameTxtTextController?.dispose();

    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    contactNumberTxtFocusNode?.dispose();
    contactNumberTxtTextController?.dispose();

    userKeyTxtFocusNode?.dispose();
    userKeyTxtTextController?.dispose();

    passwordTxtFocusNode?.dispose();
    passwordTxtTextController?.dispose();

    confirmPasswordTxtFocusNode?.dispose();
    confirmPasswordTxtTextController?.dispose();
  }
}
