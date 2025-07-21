import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mark_damaged_goods_widget.dart' show MarkDamagedGoodsWidget;
import 'package:flutter/material.dart';

class MarkDamagedGoodsModel extends FlutterFlowModel<MarkDamagedGoodsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for damagedGoodsTxt widget.
  FocusNode? damagedGoodsTxtFocusNode;
  TextEditingController? damagedGoodsTxtTextController;
  String? Function(BuildContext, String?)?
      damagedGoodsTxtTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  bool isDataUploading_uploadMediaTdb = false;
  FFUploadedFile uploadedLocalFile_uploadMediaTdb =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadMedia5fk = false;
  FFUploadedFile uploadedLocalFile_uploadMedia5fk =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (markDamagedStockForVolunteers)] action in Button widget.
  ApiCallResponse? apiResulti6d;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    damagedGoodsTxtFocusNode?.dispose();
    damagedGoodsTxtTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
