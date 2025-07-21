import '/admin/nav_bars/admin_leads_nav_bar/admin_leads_nav_bar_widget.dart';
import '/admin/users/lead_comp/lead_comp_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'assign_warehouse_page_widget.dart' show AssignWarehousePageWidget;
import 'package:flutter/material.dart';

class AssignWarehousePageModel
    extends FlutterFlowModel<AssignWarehousePageWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Models for leadComp dynamic component.
  late FlutterFlowDynamicModels<LeadCompModel> leadCompModels;
  // Model for adminLeadsNavBar component.
  late AdminLeadsNavBarModel adminLeadsNavBarModel;

  @override
  void initState(BuildContext context) {
    leadCompModels = FlutterFlowDynamicModels(() => LeadCompModel());
    adminLeadsNavBarModel = createModel(context, () => AdminLeadsNavBarModel());
  }

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();

    leadCompModels.dispose();
    adminLeadsNavBarModel.dispose();
  }
}
