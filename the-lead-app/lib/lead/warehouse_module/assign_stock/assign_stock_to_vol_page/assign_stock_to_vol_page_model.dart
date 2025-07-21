import '/flutter_flow/flutter_flow_util.dart';
import '/lead/warehouse_module/assign_stock/warehosue_product_comp/warehosue_product_comp_widget.dart';
import '/index.dart';
import 'assign_stock_to_vol_page_widget.dart' show AssignStockToVolPageWidget;
import 'package:flutter/material.dart';

class AssignStockToVolPageModel
    extends FlutterFlowModel<AssignStockToVolPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for warehosueProductComp dynamic component.
  late FlutterFlowDynamicModels<WarehosueProductCompModel>
      warehosueProductCompModels;

  @override
  void initState(BuildContext context) {
    warehosueProductCompModels =
        FlutterFlowDynamicModels(() => WarehosueProductCompModel());
  }

  @override
  void dispose() {
    warehosueProductCompModels.dispose();
  }
}
