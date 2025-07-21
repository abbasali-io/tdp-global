import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_stock_nav_bar/lead_stock_nav_bar_widget.dart';
import '/lead/warehouse_module/inventory/warehouse_stock_comp/warehouse_stock_comp_widget.dart';
import 'warehouse_current_stock_page_widget.dart'
    show WarehouseCurrentStockPageWidget;
import 'package:flutter/material.dart';

class WarehouseCurrentStockPageModel
    extends FlutterFlowModel<WarehouseCurrentStockPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for warehouseStockComp dynamic component.
  late FlutterFlowDynamicModels<WarehouseStockCompModel>
      warehouseStockCompModels;
  // Model for leadStockNavBar component.
  late LeadStockNavBarModel leadStockNavBarModel;

  @override
  void initState(BuildContext context) {
    warehouseStockCompModels =
        FlutterFlowDynamicModels(() => WarehouseStockCompModel());
    leadStockNavBarModel = createModel(context, () => LeadStockNavBarModel());
  }

  @override
  void dispose() {
    warehouseStockCompModels.dispose();
    leadStockNavBarModel.dispose();
  }
}
