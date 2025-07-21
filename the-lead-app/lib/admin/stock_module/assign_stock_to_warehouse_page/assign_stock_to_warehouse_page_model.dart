import '/admin/stock_module/admin_product_comp/admin_product_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'assign_stock_to_warehouse_page_widget.dart'
    show AssignStockToWarehousePageWidget;
import 'package:flutter/material.dart';

class AssignStockToWarehousePageModel
    extends FlutterFlowModel<AssignStockToWarehousePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for adminProductComp dynamic component.
  late FlutterFlowDynamicModels<AdminProductCompModel> adminProductCompModels;

  @override
  void initState(BuildContext context) {
    adminProductCompModels =
        FlutterFlowDynamicModels(() => AdminProductCompModel());
  }

  @override
  void dispose() {
    adminProductCompModels.dispose();
  }
}
