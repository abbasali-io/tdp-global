import '/admin/nav_bars/admin_nav_bar/admin_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_more_settings_page_widget.dart' show AdminMoreSettingsPageWidget;
import 'package:flutter/material.dart';

class AdminMoreSettingsPageModel
    extends FlutterFlowModel<AdminMoreSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for adminNavBar component.
  late AdminNavBarModel adminNavBarModel;

  @override
  void initState(BuildContext context) {
    adminNavBarModel = createModel(context, () => AdminNavBarModel());
  }

  @override
  void dispose() {
    adminNavBarModel.dispose();
  }
}
