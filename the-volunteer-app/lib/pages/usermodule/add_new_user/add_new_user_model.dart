import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_new_user_widget.dart' show AddNewUserWidget;
import 'package:flutter/material.dart';

class AddNewUserModel extends FlutterFlowModel<AddNewUserWidget> {
  ///  Local state fields for this page.

  String? initialPassword = '@dm!n\$\$';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameTxt widget.
  FocusNode? nameTxtFocusNode;
  TextEditingController? nameTxtTextController;
  String? Function(BuildContext, String?)? nameTxtTextControllerValidator;
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  // State field(s) for phoneTxt widget.
  FocusNode? phoneTxtFocusNode;
  TextEditingController? phoneTxtTextController;
  String? Function(BuildContext, String?)? phoneTxtTextControllerValidator;
  // Stores action output result for [Backend Call - API (createAdmin)] action in Button widget.
  ApiCallResponse? adminSucess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTxtFocusNode?.dispose();
    nameTxtTextController?.dispose();

    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    phoneTxtFocusNode?.dispose();
    phoneTxtTextController?.dispose();
  }
}
