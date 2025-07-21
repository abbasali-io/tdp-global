import '/components/delivery_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pend_deliveries_page_widget.dart' show PendDeliveriesPageWidget;
import 'package:flutter/material.dart';

class PendDeliveriesPageModel
    extends FlutterFlowModel<PendDeliveriesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for deliveryComp dynamic component.
  late FlutterFlowDynamicModels<DeliveryCompModel> deliveryCompModels;

  @override
  void initState(BuildContext context) {
    deliveryCompModels = FlutterFlowDynamicModels(() => DeliveryCompModel());
  }

  @override
  void dispose() {
    deliveryCompModels.dispose();
  }
}
