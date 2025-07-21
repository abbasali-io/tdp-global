import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_nav_bar/lead_nav_bar_widget.dart';
import 'lead_home_page_copy_widget.dart' show LeadHomePageCopyWidget;
import 'package:flutter/material.dart';

class LeadHomePageCopyModel extends FlutterFlowModel<LeadHomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for leadNavBar component.
  late LeadNavBarModel leadNavBarModel;

  @override
  void initState(BuildContext context) {
    leadNavBarModel = createModel(context, () => LeadNavBarModel());
  }

  @override
  void dispose() {
    leadNavBarModel.dispose();
  }
}
