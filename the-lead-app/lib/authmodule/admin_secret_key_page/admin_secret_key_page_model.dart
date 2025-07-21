import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_secret_key_page_widget.dart' show AdminSecretKeyPageWidget;
import 'package:flutter/material.dart';

class AdminSecretKeyPageModel
    extends FlutterFlowModel<AdminSecretKeyPageWidget> {
  ///  Local state fields for this page.

  int volPostcodeLoopCounter = 0;

  int volProductLoopCounter = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for secretKeyTxt widget.
  FocusNode? secretKeyTxtFocusNode;
  TextEditingController? secretKeyTxtTextController;
  late bool secretKeyTxtVisibility;
  String? Function(BuildContext, String?)? secretKeyTxtTextControllerValidator;
  String? _secretKeyTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 8) {
      return 'Maximum 8 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  GlobalSettingsRecord? globalSettingDoc;

  @override
  void initState(BuildContext context) {
    secretKeyTxtVisibility = false;
    secretKeyTxtTextControllerValidator = _secretKeyTxtTextControllerValidator;
  }

  @override
  void dispose() {
    secretKeyTxtFocusNode?.dispose();
    secretKeyTxtTextController?.dispose();
  }
}
