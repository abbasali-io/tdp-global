import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_volunteer_widget.dart' show HomeVolunteerWidget;
import 'package:flutter/material.dart';

class HomeVolunteerModel extends FlutterFlowModel<HomeVolunteerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navigation_drawer component.
  late NavigationDrawerModel navigationDrawerModel;

  @override
  void initState(BuildContext context) {
    navigationDrawerModel = createModel(context, () => NavigationDrawerModel());
  }

  @override
  void dispose() {
    navigationDrawerModel.dispose();
  }
}
