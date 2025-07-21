import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'select_order_to_deposite_widget.dart' show SelectOrderToDepositeWidget;
import 'package:flutter/material.dart';

class SelectOrderToDepositeModel
    extends FlutterFlowModel<SelectOrderToDepositeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<OrdersRecord, bool> checkboxValueMap = {};
  List<OrdersRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
