import '/flutter_flow/flutter_flow_util.dart';
import 'search_users_warehouse_widget.dart' show SearchUsersWarehouseWidget;
import 'package:flutter/material.dart';

class SearchUsersWarehouseModel
    extends FlutterFlowModel<SearchUsersWarehouseWidget> {
  ///  Local state fields for this page.

  bool? showListResutls;

  ///  State fields for stateful widgets in this page.

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
