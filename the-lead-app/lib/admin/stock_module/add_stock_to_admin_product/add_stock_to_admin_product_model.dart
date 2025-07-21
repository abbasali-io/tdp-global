import '/admin/stock_module/add_admin_product_comp/add_admin_product_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'add_stock_to_admin_product_widget.dart'
    show AddStockToAdminProductWidget;
import 'package:flutter/material.dart';

class AddStockToAdminProductModel
    extends FlutterFlowModel<AddStockToAdminProductWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for addAdminProductComp dynamic component.
  late FlutterFlowDynamicModels<AddAdminProductCompModel>
      addAdminProductCompModels;

  @override
  void initState(BuildContext context) {
    addAdminProductCompModels =
        FlutterFlowDynamicModels(() => AddAdminProductCompModel());
  }

  @override
  void dispose() {
    addAdminProductCompModels.dispose();
  }
}
