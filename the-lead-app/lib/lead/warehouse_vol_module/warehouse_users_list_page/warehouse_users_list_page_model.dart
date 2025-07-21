import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_stock_nav_bar/lead_stock_nav_bar_widget.dart';
import '/index.dart';
import 'warehouse_users_list_page_widget.dart'
    show WarehouseUsersListPageWidget;
import 'package:flutter/material.dart';

class WarehouseUsersListPageModel
    extends FlutterFlowModel<WarehouseUsersListPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for leadStockNavBar component.
  late LeadStockNavBarModel leadStockNavBarModel;

  @override
  void initState(BuildContext context) {
    leadStockNavBarModel = createModel(context, () => LeadStockNavBarModel());
  }

  @override
  void dispose() {
    leadStockNavBarModel.dispose();
  }
}
