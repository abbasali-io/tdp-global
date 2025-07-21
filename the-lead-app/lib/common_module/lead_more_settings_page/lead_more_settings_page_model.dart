import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_nav_bar/lead_nav_bar_widget.dart';
import '/index.dart';
import 'lead_more_settings_page_widget.dart' show LeadMoreSettingsPageWidget;
import 'package:flutter/material.dart';

class LeadMoreSettingsPageModel
    extends FlutterFlowModel<LeadMoreSettingsPageWidget> {
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
