import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/lead/batch_module/comps/order_comp/order_comp_widget.dart';
import '/index.dart';
import 'create_batch_filter_orders_page_widget.dart'
    show CreateBatchFilterOrdersPageWidget;
import 'package:flutter/material.dart';

class CreateBatchFilterOrdersPageModel
    extends FlutterFlowModel<CreateBatchFilterOrdersPageWidget> {
  ///  Local state fields for this page.

  bool isBusy = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Models for orderComp dynamic component.
  late FlutterFlowDynamicModels<OrderCompModel> orderCompModels;

  @override
  void initState(BuildContext context) {
    orderCompModels = FlutterFlowDynamicModels(() => OrderCompModel());
  }

  @override
  void dispose() {
    orderCompModels.dispose();
  }
}
