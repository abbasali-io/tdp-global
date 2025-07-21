import '/components/offline_order_list_item_cash_due/offline_order_list_item_cash_due_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'offline_sales_in_payment_bottom_sheet_widget.dart'
    show OfflineSalesInPaymentBottomSheetWidget;
import 'package:flutter/material.dart';

class OfflineSalesInPaymentBottomSheetModel
    extends FlutterFlowModel<OfflineSalesInPaymentBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for offlineOrderListItem_cashDue component.
  late OfflineOrderListItemCashDueModel offlineOrderListItemCashDueModel;

  @override
  void initState(BuildContext context) {
    offlineOrderListItemCashDueModel =
        createModel(context, () => OfflineOrderListItemCashDueModel());
  }

  @override
  void dispose() {
    offlineOrderListItemCashDueModel.dispose();
  }
}
