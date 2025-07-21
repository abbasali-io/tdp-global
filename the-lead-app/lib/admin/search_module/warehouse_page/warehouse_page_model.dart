import '/admin/nav_bars/admin_orders_nav_bar/admin_orders_nav_bar_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'warehouse_page_widget.dart' show WarehousePageWidget;
import 'package:flutter/material.dart';

class WarehousePageModel extends FlutterFlowModel<WarehousePageWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<WarehousesRecord> simpleSearchResults = [];
  // Model for adminOrdersNavBar component.
  late AdminOrdersNavBarModel adminOrdersNavBarModel;

  @override
  void initState(BuildContext context) {
    adminOrdersNavBarModel =
        createModel(context, () => AdminOrdersNavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    adminOrdersNavBarModel.dispose();
  }
}
