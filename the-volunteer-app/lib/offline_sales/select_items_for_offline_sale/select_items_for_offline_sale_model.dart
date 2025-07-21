import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'select_items_for_offline_sale_widget.dart'
    show SelectItemsForOfflineSaleWidget;
import 'package:flutter/material.dart';

class SelectItemsForOfflineSaleModel
    extends FlutterFlowModel<SelectItemsForOfflineSaleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxListTile widget.
  Map<VolunteerAssignedProductsRecord, bool> checkboxListTileValueMap = {};
  List<VolunteerAssignedProductsRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
