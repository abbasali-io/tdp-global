import '/admin/nav_bars/admin_orders_nav_bar/admin_orders_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_search_payments_page_widget.dart'
    show AdminSearchPaymentsPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminSearchPaymentsPageModel
    extends FlutterFlowModel<AdminSearchPaymentsPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for StartAmtTxt widget.
  FocusNode? startAmtTxtFocusNode;
  TextEditingController? startAmtTxtTextController;
  String? Function(BuildContext, String?)? startAmtTxtTextControllerValidator;
  // State field(s) for EndAmtTxt widget.
  FocusNode? endAmtTxtFocusNode;
  TextEditingController? endAmtTxtTextController;
  String? Function(BuildContext, String?)? endAmtTxtTextControllerValidator;
  // Model for adminOrdersNavBar component.
  late AdminOrdersNavBarModel adminOrdersNavBarModel;

  @override
  void initState(BuildContext context) {
    adminOrdersNavBarModel =
        createModel(context, () => AdminOrdersNavBarModel());
  }

  @override
  void dispose() {
    searchTxtFocusNode?.dispose();
    searchTxtTextController?.dispose();

    startAmtTxtFocusNode?.dispose();
    startAmtTxtTextController?.dispose();

    endAmtTxtFocusNode?.dispose();
    endAmtTxtTextController?.dispose();

    adminOrdersNavBarModel.dispose();
  }
}
