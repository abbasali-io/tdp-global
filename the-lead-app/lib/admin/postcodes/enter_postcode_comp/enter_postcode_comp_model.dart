import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enter_postcode_comp_widget.dart' show EnterPostcodeCompWidget;
import 'package:flutter/material.dart';

class EnterPostcodeCompModel extends FlutterFlowModel<EnterPostcodeCompWidget> {
  ///  Local state fields for this component.

  int loop = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for postcodeTxt widget.
  FocusNode? postcodeTxtFocusNode;
  TextEditingController? postcodeTxtTextController;
  String? Function(BuildContext, String?)? postcodeTxtTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? whVolDocs;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VolunteerPostcodesRecord? newVolPostcodeDoc;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  WarehousePostcodesRecord? newWhPostcode;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  StockMovementTransactionsRecord? stockMovTran;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    postcodeTxtFocusNode?.dispose();
    postcodeTxtTextController?.dispose();
  }
}
