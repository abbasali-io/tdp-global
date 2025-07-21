import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
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
