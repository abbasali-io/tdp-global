import '/flutter_flow/flutter_flow_util.dart';
import '/lead/warehouse_vol_module/vol_stock_comp/vol_stock_comp_widget.dart';
import '/index.dart';
import 'volunteer_stock_page_widget.dart' show VolunteerStockPageWidget;
import 'package:flutter/material.dart';

class VolunteerStockPageModel
    extends FlutterFlowModel<VolunteerStockPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for volStockComp dynamic component.
  late FlutterFlowDynamicModels<VolStockCompModel> volStockCompModels;

  @override
  void initState(BuildContext context) {
    volStockCompModels = FlutterFlowDynamicModels(() => VolStockCompModel());
  }

  @override
  void dispose() {
    volStockCompModels.dispose();
  }
}
