import '/flutter_flow/flutter_flow_util.dart';
import 'online_order_details_tabbed_widget.dart'
    show OnlineOrderDetailsTabbedWidget;
import 'package:flutter/material.dart';

class OnlineOrderDetailsTabbedModel
    extends FlutterFlowModel<OnlineOrderDetailsTabbedWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for mainTabBar widget.
  TabController? mainTabBarController;
  int get mainTabBarCurrentIndex =>
      mainTabBarController != null ? mainTabBarController!.index : 0;
  int get mainTabBarPreviousIndex =>
      mainTabBarController != null ? mainTabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    mainTabBarController?.dispose();
  }
}
