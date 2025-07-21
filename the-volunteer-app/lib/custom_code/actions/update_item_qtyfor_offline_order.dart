// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> updateItemQtyforOfflineOrder(
  DocumentReference offlineOrderRef,
  int newQty,
  OrderItemsRecord? item,
) async {
  // Add your function code here!
  try {
    // update the amount in the order item
    final price = item?.productPrice ?? 0; //10

    final total = newQty.toDouble() * price; // 1x10 = 10

    await item?.reference.update({
      'quantity': newQty, // 1
      'totalValue': total, // 10
    });

    // update the total and quantity in the order
    // -- if the value is increased
    final oldQty = item?.quantity ?? 0; // 0

    if (newQty > oldQty) {
      // 5 > 2 = increase in the quantity
      final incrementalTotal = (newQty - oldQty) * price; // (5-2) = 3 * 10 = 30
      final incrementalQty = newQty - oldQty; // 5 - 2 = 3

      await offlineOrderRef.update({
        'total_qty': FieldValue.increment(incrementalQty), // 5
        'total_orderAmount': FieldValue.increment(incrementalTotal) // 50
      });
    }

    if (newQty < oldQty) {
      // 3 < 4 = true

      final incrementalTotal = (newQty - oldQty) * price; // 3-4 = -1 * 10 = -10
      final incrementalQty = newQty - oldQty; // 3 - 4 = -1

      await offlineOrderRef.update({
        'total_qty': FieldValue.increment(incrementalQty),
        'total_orderAmount': FieldValue.increment(incrementalTotal)
      });
    }
    return true;
  } catch (e) {
    return false;
  }
}
