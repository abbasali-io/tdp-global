import '/admin/order_module/online_order_comp/online_order_comp_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'delet_order_page_widget.dart' show DeletOrderPageWidget;
import 'package:flutter/material.dart';

class DeletOrderPageModel extends FlutterFlowModel<DeletOrderPageWidget> {
  ///  Local state fields for this page.

  int orderItemsLoop = 0;

  ///  State fields for stateful widgets in this page.

  // Model for onlineOrderComp component.
  late OnlineOrderCompModel onlineOrderCompModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OrderItemsRecord>? orderItemDocs;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  WrongOrdersRecord? wrngOrderDoc;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ItemsRecord? wrongItem;

  @override
  void initState(BuildContext context) {
    onlineOrderCompModel = createModel(context, () => OnlineOrderCompModel());
  }

  @override
  void dispose() {
    onlineOrderCompModel.dispose();
  }
}
