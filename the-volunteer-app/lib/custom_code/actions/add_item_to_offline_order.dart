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
import 'package:logger/logger.dart';

Future<bool> addItemToOfflineOrder(
  DocumentReference offlineOrderRef,
  VolunteerAssignedProductsRecord itemDoc,
) async {
  // Add your function code here!
  try {
    final db = FirebaseFirestore.instance;
    final batch = db.batch();

    final orderItemPayload = {
      'imageUrl': itemDoc.productImageUrl,
      'quantity': 0,
      'productName': itemDoc.productName,
      'totalValue': 0,
      'orderRef': offlineOrderRef,
      'orderItemId': '',
      'productPrice': itemDoc.productPrice,
      'productRef': itemDoc.reference,
      'createdDate': DateTime.now().toString(),
    };

    // add order item
    final orderItemsRef = db.collection('orderItems').doc();

    // orderItemsRef.add(orderItemPayload);

    batch.set(orderItemsRef, orderItemPayload);

    // update the order reference in orderItems
    batch.update(offlineOrderRef, {
      'orderItems': FieldValue.arrayUnion([orderItemsRef]),
      'totalOrderItems': FieldValue.increment(1),
    });

    await batch.commit();

    return true;
  } catch (e) {
    return false;
  }
}
