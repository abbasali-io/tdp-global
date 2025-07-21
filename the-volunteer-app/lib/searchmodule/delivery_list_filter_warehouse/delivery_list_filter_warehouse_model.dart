import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/searchmodule/delivery_list_item/delivery_list_item_widget.dart';
import '/index.dart';
import 'delivery_list_filter_warehouse_widget.dart'
    show DeliveryListFilterWarehouseWidget;
import 'package:flutter/material.dart';

class DeliveryListFilterWarehouseModel
    extends FlutterFlowModel<DeliveryListFilterWarehouseWidget> {
  ///  State fields for stateful widgets in this page.

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
  // State field(s) for assignedVolunteerNameTxt widget.
  FocusNode? assignedVolunteerNameTxtFocusNode;
  TextEditingController? assignedVolunteerNameTxtTextController;
  String? Function(BuildContext, String?)?
      assignedVolunteerNameTxtTextControllerValidator;
  // State field(s) for postcodeTxt widget.
  FocusNode? postcodeTxtFocusNode;
  TextEditingController? postcodeTxtTextController;
  String? Function(BuildContext, String?)? postcodeTxtTextControllerValidator;
  // State field(s) for orderStatusDropDown widget.
  String? orderStatusDropDownValue;
  FormFieldController<String>? orderStatusDropDownValueController;
  // Stores action output result for [Custom Action - searchDeliveriesByParameters] action in Button widget.
  List<DeliveriesRecord>? deliveriesSearchListLead;
  // Models for delivery_list_item dynamic component.
  late FlutterFlowDynamicModels<DeliveryListItemModel> deliveryListItemModels;

  @override
  void initState(BuildContext context) {
    deliveryListItemModels =
        FlutterFlowDynamicModels(() => DeliveryListItemModel());
  }

  @override
  void dispose() {
    customerNameTxtFocusNode?.dispose();
    customerNameTxtTextController?.dispose();

    orderNumberTxtFocusNode?.dispose();
    orderNumberTxtTextController?.dispose();

    assignedVolunteerNameTxtFocusNode?.dispose();
    assignedVolunteerNameTxtTextController?.dispose();

    postcodeTxtFocusNode?.dispose();
    postcodeTxtTextController?.dispose();

    deliveryListItemModels.dispose();
  }
}
