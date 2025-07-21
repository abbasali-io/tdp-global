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

Future<bool> deleteDraftOfflineOrder(DocumentReference offlineOrderRef) async {
  // Add your function code here!
  try {
    final db = FirebaseFirestore.instance;
    final batch = db.batch();

    // get order
    final orderSnap = await offlineOrderRef.get();

    if (orderSnap.get('isActive') == false &&
        orderSnap.get('isOffline') == true) {
      print('about to remove the orders');
      // remove all the order items
      final orderItemsSnap = await db
          .collection('orderItems')
          .where('orderRef', isEqualTo: offlineOrderRef)
          .get();
      orderItemsSnap.docs.forEach((itm) {
        print('deleting the order item ${itm.id}');
        batch.delete(itm.reference);
      });

      // remove the order
      batch.delete(offlineOrderRef);
    }

    // await batch.commit();
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}
