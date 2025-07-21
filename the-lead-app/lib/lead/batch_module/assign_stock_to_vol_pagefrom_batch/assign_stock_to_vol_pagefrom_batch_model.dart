import '/flutter_flow/flutter_flow_util.dart';
import '/lead/batch_module/warehosue_product_comp_copy/warehosue_product_comp_copy_widget.dart';
import '/index.dart';
import 'assign_stock_to_vol_pagefrom_batch_widget.dart'
    show AssignStockToVolPagefromBatchWidget;
import 'package:flutter/material.dart';

class AssignStockToVolPagefromBatchModel
    extends FlutterFlowModel<AssignStockToVolPagefromBatchWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for warehosueProductCompCopy dynamic component.
  late FlutterFlowDynamicModels<WarehosueProductCompCopyModel>
      warehosueProductCompCopyModels;

  @override
  void initState(BuildContext context) {
    warehosueProductCompCopyModels =
        FlutterFlowDynamicModels(() => WarehosueProductCompCopyModel());
  }

  @override
  void dispose() {
    warehosueProductCompCopyModels.dispose();
  }
}
