import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'select_payments_to_deposite_widget.dart'
    show SelectPaymentsToDepositeWidget;
import 'package:flutter/material.dart';

class SelectPaymentsToDepositeModel
    extends FlutterFlowModel<SelectPaymentsToDepositeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<PaymentsRecord, bool> checkboxValueMap = {};
  List<PaymentsRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
