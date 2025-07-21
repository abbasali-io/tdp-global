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

Future assignStockToWarehouse(
  DocumentReference warehouseRef,
  DocumentReference productRef,
  DocumentReference warehouseProductRef,
  int totalStockToAssign,
) async {
  bool res = false;
  // Add your function code here!
  // Decrease 'availableStock' in the 'products' collection by 'totalStockToAssign'
  await productRef
      .update({'availableStock': FieldValue.increment(-totalStockToAssign)});

  // Increase 'total_availableStockAllProducts' in the 'warehouses' collection by 'totalStockToAssign'
  await warehouseRef.update({
    'total_availableStockAllProducts': FieldValue.increment(totalStockToAssign)
  });

  // Increase 'productAvailableStock' in the 'warehouse_products' collection by 'totalStockToAssign'
  await warehouseProductRef.update(
      {'productAvailableStock': FieldValue.increment(totalStockToAssign)});
  res = true;
  return res;
}
