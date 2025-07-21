import '/admin/nav_bars/admin_leads_nav_bar/admin_leads_nav_bar_widget.dart';
import '/admin/users/active_leads/active_leads_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'leads_list_page_widget.dart' show LeadsListPageWidget;
import 'package:flutter/material.dart';

class LeadsListPageModel extends FlutterFlowModel<LeadsListPageWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Models for activeLeads dynamic component.
  late FlutterFlowDynamicModels<ActiveLeadsModel> activeLeadsModels1;
  // Models for activeLeads dynamic component.
  late FlutterFlowDynamicModels<ActiveLeadsModel> activeLeadsModels2;
  // Model for adminLeadsNavBar component.
  late AdminLeadsNavBarModel adminLeadsNavBarModel;

  @override
  void initState(BuildContext context) {
    activeLeadsModels1 = FlutterFlowDynamicModels(() => ActiveLeadsModel());
    activeLeadsModels2 = FlutterFlowDynamicModels(() => ActiveLeadsModel());
    adminLeadsNavBarModel = createModel(context, () => AdminLeadsNavBarModel());
  }

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();

    activeLeadsModels1.dispose();
    activeLeadsModels2.dispose();
    adminLeadsNavBarModel.dispose();
  }
}
