import '/admin/nav_bars/admin_orders_nav_bar/admin_orders_nav_bar_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_search_online_orders_page_widget.dart'
    show AdminSearchOnlineOrdersPageWidget;
import 'package:flutter/material.dart';

class AdminSearchOnlineOrdersPageModel
    extends FlutterFlowModel<AdminSearchOnlineOrdersPageWidget> {
  ///  Local state fields for this page.

  bool isApproved = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchTxt widget.
  FocusNode? searchTxtFocusNode;
  TextEditingController? searchTxtTextController;
  String? Function(BuildContext, String?)? searchTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (OrdersSearch)] action in Button widget.
  ApiCallResponse? orderSearch;
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

    adminOrdersNavBarModel.dispose();
  }
}
