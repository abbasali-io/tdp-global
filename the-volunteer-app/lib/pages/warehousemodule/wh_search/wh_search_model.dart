import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wh_search_widget.dart' show WhSearchWidget;
import 'package:flutter/material.dart';

class WhSearchModel extends FlutterFlowModel<WhSearchWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for warehouseSearchTxt widget.
  FocusNode? warehouseSearchTxtFocusNode;
  TextEditingController? warehouseSearchTxtTextController;
  String? Function(BuildContext, String?)?
      warehouseSearchTxtTextControllerValidator;
  // Algolia Search Results from action on IconButton
  List<WarehousesRecord>? algoliaSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    warehouseSearchTxtFocusNode?.dispose();
    warehouseSearchTxtTextController?.dispose();
  }
}
