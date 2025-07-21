import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'wh_post_codes_page_widget.dart' show WhPostCodesPageWidget;
import 'package:flutter/material.dart';

class WhPostCodesPageModel extends FlutterFlowModel<WhPostCodesPageWidget> {
  ///  Local state fields for this page.

  int loop = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<VolunteerPostcodesRecord>? volPostcodesList;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  StockMovementTransactionsRecord? stockMovTran;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
