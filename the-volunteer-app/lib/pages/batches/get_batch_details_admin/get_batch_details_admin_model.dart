import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'get_batch_details_admin_widget.dart' show GetBatchDetailsAdminWidget;
import 'package:flutter/material.dart';

class GetBatchDetailsAdminModel
    extends FlutterFlowModel<GetBatchDetailsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for batchNumberTxt widget.
  FocusNode? batchNumberTxtFocusNode;
  TextEditingController? batchNumberTxtTextController;
  String? Function(BuildContext, String?)?
      batchNumberTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    batchNumberTxtFocusNode?.dispose();
    batchNumberTxtTextController?.dispose();
  }
}
