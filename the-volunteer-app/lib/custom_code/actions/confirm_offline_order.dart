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

Future<bool> confirmOfflineOrder(DocumentReference offlineOrderRef) async {
  // Add your function code here!
  try {
    // get orderDocument from the reference
    final db = FirebaseFirestore.instance;
    final batch = db.batch();

    final orderSnap = await offlineOrderRef.get();
    final totalQty = orderSnap.get('total_qty');
    final totalOrderAmount = orderSnap.get('total_orderAmount');

    // update order
    batch.update(offlineOrderRef, {
      'isActive': true,
      'isCashDue': true,
    });

    // update volunteer

    final volunteerRef = orderSnap.get('assignedVolunteerRef');
    batch.update(volunteerRef, {
      'total_allProductAvailableStock': FieldValue.increment(-totalQty),
    });

// update volunteer totals
    final volunteerTotalsSnap = await db
        .collection('users')
        .doc(volunteerRef.id)
        .collection('volunteer_totals')
        .limit(1)
        .get();
    final volunteerTotalRef = volunteerTotalsSnap.docs.first.reference;

    batch.update(volunteerTotalRef, {
      'value_outstandingAmount': FieldValue.increment(totalOrderAmount),
      'value_offlineSales': FieldValue.increment(totalOrderAmount),
      'total_productSoldOffline': FieldValue.increment(totalQty),
    });

// update warehouse
    final warehouseRef = orderSnap.get('assignedWarehouseRef');
    batch.update(warehouseRef, {
      'total_stockWithVolunteers': FieldValue.increment(-totalQty), //-525
    });

// update core_totals
    final coreTotalsSnap = await db.collection('coreTotals').limit(1).get();
    final coreTotalRef = coreTotalsSnap.docs.first.reference;
    batch.update(coreTotalRef, {
      'admin_total_offlineOrders': FieldValue.increment(1),
      'admin_value_offlineOrders': FieldValue.increment(totalOrderAmount),
      'admin_value_outstandingAmount': FieldValue.increment(totalOrderAmount),
    });

// update volunteer assigned products
//-- get all the products for this order
    final orderItemsSnap = await db
        .collection('orderItems')
        .where('orderRef', isEqualTo: offlineOrderRef)
        .get();

    orderItemsSnap.docs.forEach((itm) {
      final itemQty = itm.get('quantity');
      final volunteerId = orderSnap.get('assignedVolunteerRef').id;
      final productId = itm.get('productRef').id;

      final volunteerProductRef = db
          .collection('users')
          .doc(volunteerId)
          .collection('volunteer_assignedProducts')
          .doc(productId);

      batch.update(volunteerProductRef, {
        'productAvailableStock': FieldValue.increment(-itemQty),
      });
    });

    await batch.commit();
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}
