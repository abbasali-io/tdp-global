import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_stock_nav_bar/lead_stock_nav_bar_widget.dart';
import '/index.dart';
import 'warehouse_damaged_products_page_widget.dart'
    show WarehouseDamagedProductsPageWidget;
import 'package:flutter/material.dart';

class WarehouseDamagedProductsPageModel
    extends FlutterFlowModel<WarehouseDamagedProductsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for leadStockNavBar component.
  late LeadStockNavBarModel leadStockNavBarModel;

  @override
  void initState(BuildContext context) {
    leadStockNavBarModel = createModel(context, () => LeadStockNavBarModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    leadStockNavBarModel.dispose();
  }
}
