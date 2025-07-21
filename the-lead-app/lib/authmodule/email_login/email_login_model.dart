import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_login_widget.dart' show EmailLoginWidget;
import 'package:flutter/material.dart';

class EmailLoginModel extends FlutterFlowModel<EmailLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  String? _emailTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
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
      return 'Field is required';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 40) {
      return 'Maximum 40 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    emailTxtTextControllerValidator = _emailTxtTextControllerValidator;
    passwordTxtVisibility = false;
    passwordTxtTextControllerValidator = _passwordTxtTextControllerValidator;
  }

  @override
  void dispose() {
    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    passwordTxtFocusNode?.dispose();
    passwordTxtTextController?.dispose();
  }
}
