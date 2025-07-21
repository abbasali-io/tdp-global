import '/flutter_flow/flutter_flow_util.dart';
import '/lead/lead_nav_bar/lead_inventory_nav_bar/lead_inventory_nav_bar_widget.dart';
import '/index.dart';
import 'stock_transfer_type_page_widget.dart' show StockTransferTypePageWidget;
import 'package:flutter/material.dart';

class StockTransferTypePageModel
    extends FlutterFlowModel<StockTransferTypePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for leadInventoryNavBar component.
  late LeadInventoryNavBarModel leadInventoryNavBarModel;

  @override
  void initState(BuildContext context) {
    leadInventoryNavBarModel =
        createModel(context, () => LeadInventoryNavBarModel());
  }

  @override
  void dispose() {
    leadInventoryNavBarModel.dispose();
  }
}
