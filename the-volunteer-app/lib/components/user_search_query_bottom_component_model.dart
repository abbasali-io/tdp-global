import '/flutter_flow/flutter_flow_util.dart';
import 'user_search_query_bottom_component_widget.dart'
    show UserSearchQueryBottomComponentWidget;
import 'package:flutter/material.dart';

class UserSearchQueryBottomComponentModel
    extends FlutterFlowModel<UserSearchQueryBottomComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for firstNameText widget.
  FocusNode? firstNameTextFocusNode1;
  TextEditingController? firstNameTextTextController1;
  String? Function(BuildContext, String?)?
      firstNameTextTextController1Validator;
  // State field(s) for firstNameText widget.
  FocusNode? firstNameTextFocusNode2;
  TextEditingController? firstNameTextTextController2;
  String? Function(BuildContext, String?)?
      firstNameTextTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameTextFocusNode1?.dispose();
    firstNameTextTextController1?.dispose();

    firstNameTextFocusNode2?.dispose();
    firstNameTextTextController2?.dispose();
  }
}
