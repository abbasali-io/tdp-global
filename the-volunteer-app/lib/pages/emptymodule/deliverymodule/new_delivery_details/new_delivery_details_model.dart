import '/backend/api_requests/api_calls.dart';
import '/components/delivery_items/delivery_items_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_delivery_details_widget.dart' show NewDeliveryDetailsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class NewDeliveryDetailsModel
    extends FlutterFlowModel<NewDeliveryDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Models for deliveryItems dynamic component.
  late FlutterFlowDynamicModels<DeliveryItemsModel> deliveryItemsModels;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  bool isDataUploading_uploadMediaIt5 = false;
  FFUploadedFile uploadedLocalFile_uploadMediaIt5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadMediaIt5 = '';

  bool isDataUploading_uploadMediaLmh = false;
  FFUploadedFile uploadedLocalFile_uploadMediaLmh =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadMediaLmh = '';

  // State field(s) for Signature widget.
  SignatureController? signatureController;
  String uploadedSignatureUrl = '';
  // Stores action output result for [Backend Call - API (updateDeliveryStatus)] action in Button widget.
  ApiCallResponse? apiDeliveryStatusUpdate;

  @override
  void initState(BuildContext context) {
    deliveryItemsModels = FlutterFlowDynamicModels(() => DeliveryItemsModel());
  }

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    deliveryItemsModels.dispose();
    signatureController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
