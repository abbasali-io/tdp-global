import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/searchmodule/delivery_list_item/delivery_list_item_widget.dart';
import '/index.dart';
import 'delivery_list_filter_volunteers_widget.dart'
    show DeliveryListFilterVolunteersWidget;
import 'package:flutter/material.dart';

class DeliveryListFilterVolunteersModel
    extends FlutterFlowModel<DeliveryListFilterVolunteersWidget> {
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
  // State field(s) for postcodeTxt widget.
  FocusNode? postcodeTxtFocusNode;
  TextEditingController? postcodeTxtTextController;
  String? Function(BuildContext, String?)? postcodeTxtTextControllerValidator;
  // State field(s) for orderStatusDropDown widget.
  String? orderStatusDropDownValue;
  FormFieldController<String>? orderStatusDropDownValueController;
  // Stores action output result for [Custom Action - searchDeliveriesForVolunteer] action in Button widget.
  List<DeliveriesRecord>? deliveriesSearchResultVolunteers;
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

    postcodeTxtFocusNode?.dispose();
    postcodeTxtTextController?.dispose();

    deliveryListItemModels.dispose();
  }
}
