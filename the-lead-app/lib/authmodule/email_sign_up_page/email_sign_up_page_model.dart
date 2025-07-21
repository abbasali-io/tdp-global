import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_sign_up_page_widget.dart' show EmailSignUpPageWidget;
import 'package:flutter/material.dart';

class EmailSignUpPageModel extends FlutterFlowModel<EmailSignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTxt widget.
  FocusNode? nameTxtFocusNode;
  TextEditingController? nameTxtTextController;
  String? Function(BuildContext, String?)? nameTxtTextControllerValidator;
  String? _nameTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Display Name is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  String? _emailTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email Address is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
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
      return 'Password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for confirmPasswordTxt widget.
  FocusNode? confirmPasswordTxtFocusNode;
  TextEditingController? confirmPasswordTxtTextController;
  late bool confirmPasswordTxtVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTxtTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    nameTxtTextControllerValidator = _nameTxtTextControllerValidator;
    emailTxtTextControllerValidator = _emailTxtTextControllerValidator;
    passwordTxtVisibility = false;
    passwordTxtTextControllerValidator = _passwordTxtTextControllerValidator;
    confirmPasswordTxtVisibility = false;
  }

  @override
  void dispose() {
    nameTxtFocusNode?.dispose();
    nameTxtTextController?.dispose();

    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    passwordTxtFocusNode?.dispose();
    passwordTxtTextController?.dispose();

    confirmPasswordTxtFocusNode?.dispose();
    confirmPasswordTxtTextController?.dispose();
  }
}
