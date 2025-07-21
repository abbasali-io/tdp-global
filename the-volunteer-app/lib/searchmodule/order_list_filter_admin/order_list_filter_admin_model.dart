import '/backend/backend.dart';
import '/components/order_list_item_delivered/order_list_item_delivered_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'order_list_filter_admin_widget.dart' show OrderListFilterAdminWidget;
import 'package:flutter/material.dart';

class OrderListFilterAdminModel
    extends FlutterFlowModel<OrderListFilterAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for warehouseNameTxt widget.
  FocusNode? warehouseNameTxtFocusNode;
  TextEditingController? warehouseNameTxtTextController;
  String? Function(BuildContext, String?)?
      warehouseNameTxtTextControllerValidator;
  // State field(s) for orderTypeDropDown widget.
  String? orderTypeDropDownValue;
  FormFieldController<String>? orderTypeDropDownValueController;
  // State field(s) for postcodeTxt widget.
  FocusNode? postcodeTxtFocusNode;
  TextEditingController? postcodeTxtTextController;
  String? Function(BuildContext, String?)? postcodeTxtTextControllerValidator;
  // State field(s) for orderStatusDropDown widget.
  String? orderStatusDropDownValue;
  FormFieldController<String>? orderStatusDropDownValueController;
  // State field(s) for customerNameTxt widget.
  FocusNode? customerNameTxtFocusNode;
  TextEditingController? customerNameTxtTextController;
  String? Function(BuildContext, String?)?
      customerNameTxtTextControllerValidator;
  // State field(s) for orderNumberTxt widget.
  FocusNode? orderNumberTxtFocusNode;
  TextEditingController? orderNumberTxtTextController;
  String? Function(BuildContext, String?)?
      orderNumberTxtTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Custom Action - searchOrdersAdmins] action in Button widget.
  List<OrdersRecord>? orderSearchListAdmin;
  // Models for orderListItem_delivered dynamic component.
  late FlutterFlowDynamicModels<OrderListItemDeliveredModel>
      orderListItemDeliveredModels;

  @override
  void initState(BuildContext context) {
    orderListItemDeliveredModels =
        FlutterFlowDynamicModels(() => OrderListItemDeliveredModel());
  }

  @override
  void dispose() {
    warehouseNameTxtFocusNode?.dispose();
    warehouseNameTxtTextController?.dispose();

    postcodeTxtFocusNode?.dispose();
    postcodeTxtTextController?.dispose();

    customerNameTxtFocusNode?.dispose();
    customerNameTxtTextController?.dispose();

    orderNumberTxtFocusNode?.dispose();
    orderNumberTxtTextController?.dispose();

    orderListItemDeliveredModels.dispose();
  }
}
