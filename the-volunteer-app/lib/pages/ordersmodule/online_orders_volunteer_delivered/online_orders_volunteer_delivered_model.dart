import '/components/navigation_drawer/navigation_drawer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'online_orders_volunteer_delivered_widget.dart'
    show OnlineOrdersVolunteerDeliveredWidget;
import 'package:flutter/material.dart';

class OnlineOrdersVolunteerDeliveredModel
    extends FlutterFlowModel<OnlineOrdersVolunteerDeliveredWidget> {
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
