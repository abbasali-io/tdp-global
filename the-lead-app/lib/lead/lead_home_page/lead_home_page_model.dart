import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_nav_bar/lead_nav_bar_widget.dart';
import '/index.dart';
import 'lead_home_page_widget.dart' show LeadHomePageWidget;
import 'package:flutter/material.dart';

class LeadHomePageModel extends FlutterFlowModel<LeadHomePageWidget> {
  ///  Local state fields for this page.

  bool isLoaded = false;

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
