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

Future warehouseStockAssignedToVolunteer(
  DocumentReference userRef,
  DocumentReference warehouseRef,
  DocumentReference volunteerAssignedProductRef,
  DocumentReference warehouseProductRef,
  int itemsToUpdate,
) async {
  // Add your function code here!
  // Add your function code here!
  await volunteerAssignedProductRef.update({
    'productAvailableStock': FieldValue.increment(itemsToUpdate),
    'productRequiredStock': FieldValue.increment(-itemsToUpdate),
  });

  // increase 'total_allProductAvailableStock' in the userRef by itemsToUpdate
  await userRef.update({
    'total_allProductAvailableStock': FieldValue.increment(itemsToUpdate),
  });

  // in the 'warehouseRef' increase the 'total_stockWithVolunteers' by itemsToUpdate
  // and decrease the 'total_availableStockAllProducts' by itemsToUpdate
  await warehouseRef.update({
    'total_stockWithVolunteers': FieldValue.increment(itemsToUpdate),
    'total_availableStockAllProducts': FieldValue.increment(-itemsToUpdate),
  });

  // decrease 'productAvailableStock' by itemsToUpdate in warehouseProductRef
  await warehouseProductRef.update({
    'productAvailableStock': FieldValue.increment(-itemsToUpdate),
  });
}
