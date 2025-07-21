import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/lead/batch_module/comps/batch_delivery_comp/batch_delivery_comp_widget.dart';
import '/index.dart';
import 'batch_detail_page_widget.dart' show BatchDetailPageWidget;
import 'package:flutter/material.dart';

class BatchDetailPageModel extends FlutterFlowModel<BatchDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for batchDeliveryComp dynamic component.
  late FlutterFlowDynamicModels<BatchDeliveryCompModel> batchDeliveryCompModels;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? volDocQuery;

  @override
  void initState(BuildContext context) {
    batchDeliveryCompModels =
        FlutterFlowDynamicModels(() => BatchDeliveryCompModel());
  }

  @override
  void dispose() {
    batchDeliveryCompModels.dispose();
  }
}
