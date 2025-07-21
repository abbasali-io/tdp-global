// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<WarehousesRecord?> verifyWarehouseKey(String whKey) async {
  // Add your function code here!
  final warehouseRef = FirebaseFirestore.instance.collection('warehouses');
  final querySnapshot =
      await warehouseRef.where('warehouseKey', isEqualTo: whKey).get();
  if (querySnapshot.docs.isNotEmpty) {
    return querySnapshot.docs.first.data() as WarehousesRecord;
  } else {
    return null;
  }
}
