import '/flutter_flow/flutter_flow_util.dart';
import 'local_searchbar_widget.dart' show LocalSearchbarWidget;
import 'package:flutter/material.dart';

class LocalSearchbarModel extends FlutterFlowModel<LocalSearchbarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
