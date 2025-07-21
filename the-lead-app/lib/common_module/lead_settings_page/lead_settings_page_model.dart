import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_nav_bar/lead_nav_bar_widget.dart';
import '/index.dart';
import 'lead_settings_page_widget.dart' show LeadSettingsPageWidget;
import 'package:flutter/material.dart';

class LeadSettingsPageModel extends FlutterFlowModel<LeadSettingsPageWidget> {
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
