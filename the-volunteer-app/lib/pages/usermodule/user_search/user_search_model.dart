import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_search_widget.dart' show UserSearchWidget;
import 'package:flutter/material.dart';

class UserSearchModel extends FlutterFlowModel<UserSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userSearchTxt widget.
  FocusNode? userSearchTxtFocusNode;
  TextEditingController? userSearchTxtTextController;
  String? Function(BuildContext, String?)? userSearchTxtTextControllerValidator;
  // Algolia Search Results from action on userSearchTxt
  List<UsersRecord>? algoliaSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userSearchTxtFocusNode?.dispose();
    userSearchTxtTextController?.dispose();
  }
}
