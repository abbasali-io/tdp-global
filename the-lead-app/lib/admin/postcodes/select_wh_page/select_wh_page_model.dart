import '/admin/nav_bars/admin_leads_nav_bar/admin_leads_nav_bar_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'select_wh_page_widget.dart' show SelectWhPageWidget;
import 'package:flutter/material.dart';

class SelectWhPageModel extends FlutterFlowModel<SelectWhPageWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<WarehousesRecord> simpleSearchResults = [];
  // Model for adminLeadsNavBar component.
  late AdminLeadsNavBarModel adminLeadsNavBarModel;

  @override
  void initState(BuildContext context) {
    adminLeadsNavBarModel = createModel(context, () => AdminLeadsNavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    adminLeadsNavBarModel.dispose();
  }
}
