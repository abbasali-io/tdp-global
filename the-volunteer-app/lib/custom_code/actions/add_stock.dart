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

Future addStock(
  String productId,
  int stockQty,
) async {
  // Add your function code here!
  final DocumentReference productRef =
      FirebaseFirestore.instance.doc('products/$productId');
  final DocumentSnapshot productSnapshot = await productRef.get();

  if (!productSnapshot.exists) {
    throw Exception('Product does not exist');
  }

  final Map<String, dynamic> productData =
      productSnapshot.data() as Map<String, dynamic>;
  final double productPrice = productData['productPrice'];
  final int availableStock = productData['availableStock'];

  final double newProductValue = productPrice * (availableStock + stockQty);
  final int newStock = availableStock + stockQty;

  await productRef.update({
    'availableStock': newStock,
    'value_availableStock': FieldValue.increment(newProductValue),
  });
}
