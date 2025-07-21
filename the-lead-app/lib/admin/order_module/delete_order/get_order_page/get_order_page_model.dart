import '/admin/nav_bars/admin_orders_nav_bar/admin_orders_nav_bar_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'get_order_page_widget.dart' show GetOrderPageWidget;
import 'package:flutter/material.dart';

class GetOrderPageModel extends FlutterFlowModel<GetOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for orderNoTxt widget.
  FocusNode? orderNoTxtFocusNode;
  TextEditingController? orderNoTxtTextController;
  String? Function(BuildContext, String?)? orderNoTxtTextControllerValidator;
  String? _orderNoTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Order Number is required';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  OrdersRecord? orderDocQuery;
  // Model for adminOrdersNavBar component.
  late AdminOrdersNavBarModel adminOrdersNavBarModel;

  @override
  void initState(BuildContext context) {
    orderNoTxtTextControllerValidator = _orderNoTxtTextControllerValidator;
    adminOrdersNavBarModel =
        createModel(context, () => AdminOrdersNavBarModel());
  }

  @override
  void dispose() {
    orderNoTxtFocusNode?.dispose();
    orderNoTxtTextController?.dispose();

    adminOrdersNavBarModel.dispose();
  }
}
