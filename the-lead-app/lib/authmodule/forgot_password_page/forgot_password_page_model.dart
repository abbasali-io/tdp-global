import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_page_widget.dart' show ForgotPasswordPageWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPageModel
    extends FlutterFlowModel<ForgotPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emaiTxt widget.
  FocusNode? emaiTxtFocusNode;
  TextEditingController? emaiTxtTextController;
  String? Function(BuildContext, String?)? emaiTxtTextControllerValidator;
  String? _emaiTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (val.length < 4) {
      return 'Requires at least 4 characters.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Please enter a valid email.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emaiTxtTextControllerValidator = _emaiTxtTextControllerValidator;
  }

  @override
  void dispose() {
    emaiTxtFocusNode?.dispose();
    emaiTxtTextController?.dispose();
  }
}
