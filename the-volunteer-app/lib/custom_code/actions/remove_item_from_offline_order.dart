// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> removeItemFromOfflineOrder(
  DocumentReference offlineOrderRef,
  VolunteerAssignedProductsRecord itemDoc,
) async {
  // Add your function code here!
  try {
    final db = FirebaseFirestore.instance;
    final batch = db.batch();

    // from the itemDoc get the 'productName'
    // find the orderItem where productName and orderRef match
    final orderItemsRef = await db
        .collection('orderItems')
        .where('productName', isEqualTo: itemDoc.productName)
        .where('orderRef', isEqualTo: offlineOrderRef)
        .limit(1)
        .get();

    final orderItemSnap = orderItemsRef.docs.first;
    final itemQty = orderItemSnap.get('quantity') ?? 0;
    final totalAmount = orderItemSnap.get('totalValue') ?? 0;

    // remove the item reference from order
    // adjust the totalOrderItems, total_qty and total_orderAmount from order
    batch.update(offlineOrderRef, {
      'orderItems': FieldValue.arrayRemove([orderItemSnap.reference]),
      'total_qty': FieldValue.increment(-itemQty),
      'totalOrderItems': FieldValue.increment(-1),
      'total_orderAmount': FieldValue.increment(-totalAmount),
    });

    // remove the orderItem
    batch.delete(orderItemSnap.reference);

    await batch.commit();

    return true;
  } catch (e) {
    return false;
  }
}
