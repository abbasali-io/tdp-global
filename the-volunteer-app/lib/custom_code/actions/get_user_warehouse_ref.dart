// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DocumentReference?> getUserWarehouseRef(String warehouseKey) async {
  // Add your function code here!
  final db = FirebaseFirestore.instance;

  var warehouseRef = await db
      .collection('warehouses')
      .where('warehouseKey', isEqualTo: warehouseKey)
      .get();

  if (warehouseRef.docs.isNotEmpty) {
    var firstWarehosue = warehouseRef.docs.first;
    return firstWarehosue.reference;
  } else {
    return null;
  }
}
