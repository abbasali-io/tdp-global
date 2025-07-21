import '/flutter_flow/flutter_flow_util.dart';
import '/lead/batch_module/comps/batch_comp/batch_comp_widget.dart';
import '/lead/lead_nav_bar/lead_order_nav_bar/lead_order_nav_bar_widget.dart';
import '/index.dart';
import 'batch_list_page_widget.dart' show BatchListPageWidget;
import 'package:flutter/material.dart';

class BatchListPageModel extends FlutterFlowModel<BatchListPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for batchComp dynamic component.
  late FlutterFlowDynamicModels<BatchCompModel> batchCompModels;
  // Model for leadOrderNavBar component.
  late LeadOrderNavBarModel leadOrderNavBarModel;

  @override
  void initState(BuildContext context) {
    batchCompModels = FlutterFlowDynamicModels(() => BatchCompModel());
    leadOrderNavBarModel = createModel(context, () => LeadOrderNavBarModel());
  }

  @override
  void dispose() {
    batchCompModels.dispose();
    leadOrderNavBarModel.dispose();
  }
}
