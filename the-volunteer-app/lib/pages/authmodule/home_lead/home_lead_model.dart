import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_lead_widget.dart' show HomeLeadWidget;
import 'package:flutter/material.dart';

class HomeLeadModel extends FlutterFlowModel<HomeLeadWidget> {
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
