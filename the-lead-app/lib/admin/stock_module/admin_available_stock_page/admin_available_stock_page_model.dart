import '/admin/nav_bars/admin_stock_nav_bar/admin_stock_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_available_stock_page_widget.dart'
    show AdminAvailableStockPageWidget;
import 'package:flutter/material.dart';

class AdminAvailableStockPageModel
    extends FlutterFlowModel<AdminAvailableStockPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for adminStockNavBar component.
  late AdminStockNavBarModel adminStockNavBarModel;

  @override
  void initState(BuildContext context) {
    adminStockNavBarModel = createModel(context, () => AdminStockNavBarModel());
  }

  @override
  void dispose() {
    adminStockNavBarModel.dispose();
  }
}
