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

Future<bool> removeDeliveryFromBatch(
  DocumentReference volunteerRef,
  DocumentReference warehouseRef,
  DocumentReference orderRef,
  DocumentReference batchRef,
  DocumentReference deliveryRef,
  DocumentReference deleteByUserRef,
) async {
  // Add your function code here!
  bool res = false;
  final log = Logger();
  final db = FirebaseFirestore.instance;
  final dbBatch = db.batch();

  num qty = 0;

  // for each product in this delivery
  final orderItemsSnap = await db
      .collection('orderItems')
      .where('orderRef', isEqualTo: orderRef)
      .get();

  log.wtf(orderRef);

  log.w('For Each Product in the Order .....');
  for (var orderItemSnap in orderItemsSnap.docs) {
    if (orderItemSnap.get('productName') !=
        "1 X brick to build a Quran School") {
      final productId = (orderItemSnap.get('productRef')).id;
      final productQty = orderItemSnap.get('quantity');
      qty = qty + productQty;

      // update volunteer assigned products
      final voluteerProductRef = db
          .collection('users')
          .doc(volunteerRef.id)
          .collection('volunteer_assignedProducts')
          .doc(productId);

      dbBatch.update(voluteerProductRef, {
        'productReservedForOnlineOrders': FieldValue.increment(-productQty),
        'productAvailableStock': FieldValue.increment(productQty),
        'productRequiredStock': FieldValue.increment(-productQty),
      });

      log.d('---- Volunteer Product ---- || $voluteerProductRef');
      log.i('productReservedForOnlineOrders - decrease - $productQty');
      log.i('productAvailableStock - increase - $productQty');

      // update warehouse products
      final warehouseProductRef = db
          .collection('warehouses')
          .doc(warehouseRef.id)
          .collection('warehouseProducts')
          .doc(productId);
      dbBatch.update(warehouseProductRef, {
        'productReservedForOnlineOrders': FieldValue.increment(productQty),
        'productAvailableStock': FieldValue.increment(-productQty),
      });

      log.d('---- Warehouse Product ---- || $warehouseProductRef');
      log.i('productReservedForOnlineOrders - increase - $productQty');
      log.i('productAvailableStock - decrease - $productQty');
    }
  }

  // decrease the total assigned online orders from user
  dbBatch.update(volunteerRef, {
    'total_assignedOnlineOrders': FieldValue.increment(-1),
    'total_pendingDeliveryOnlineOrders': FieldValue.increment(-1),
    'total_allProductAvailableStock': FieldValue.increment(qty),
  });
  log.d('---- Volunteer ---- || $volunteerRef');
  log.i('total_assignedOnlineOrders - decrease - 1');
  log.i('total_pendingDeliveryOnlineOrders - decrease - 1');
  log.i('total_allProductAvailableStock - increase - $qty');

  // decrease the volunteer total
  final volunteersTotalSnap = await db
      .collection('users')
      .doc(volunteerRef.id)
      .collection('volunteer_totals')
      .limit(1)
      .get();
  // if (volunteersTotalSnap.docs.isNotEmpty) {
  final volunteerTotalRef = volunteersTotalSnap.docs.first.reference;
  dbBatch.update(volunteerTotalRef, {
    'total_stockReservedForOnlineOrders': FieldValue.increment(-qty),
  });

  log.d('---- Volunteer Totals ---- || $volunteerTotalRef');
  log.i('total_stockReservedForOnlineOrders - decrease - $qty');
  // }

  // update warehouse
  dbBatch.update(warehouseRef, {
    'total_availableStockAllProducts': FieldValue.increment(-qty),
    'total_reservdForOnlineOrders': FieldValue.increment(qty),
    'total_stockWithVolunteers': FieldValue.increment(qty),
  });

  log.d('---- warehouse ---- || $warehouseRef');
  log.i('total_availableStockAllProducts - decrease - $qty');
  log.i('total_reservdForOnlineOrders - increase - $qty');
  log.i('total_stockWithVolunteers - increase - $qty');

  // update order
  dbBatch.update(orderRef, {
    'assignedVolunteerName': null,
    'assignedVolunteerRef': null,
    'isAssigned': false,
    'isNew': true,
    'assignedForDelivery': false,
    'isFailed': false,
    'orderDeliveryReferences': FieldValue.arrayRemove([deliveryRef]),
  });

  log.d('---- Order ---- || $orderRef');
  log.i('assignedVolunteerName - equals - NULL');
  log.i('assignedVolunteerRef - equals - NULL');
  log.i('isAssigned - equals - FALSE');
  log.i('isNew - equals - TRUE');
  log.i('assignedForDelivery - equals - FALSE');
  log.i('isFailed - equals - FALSE');
  log.i('orderDeliveryReferences - remove from array - $deliveryRef');

  // get the batch values and either update or delete the batch
  final delBatchSnap = await batchRef.get();

  log.d('---- Batch ---- || $batchRef');
  if (delBatchSnap.get('deliveryReferences').length < 1) {
    dbBatch.delete(batchRef);

    log.i('Deleting Batch --- $batchRef');
  } else {
    dbBatch.update(batchRef, {
      'noOfOrders': FieldValue.increment(-1),
      'deliveryReferences': FieldValue.arrayRemove([deliveryRef]),
    });

    log.i('noOfOrders - decrease - 1');
    log.i('deliveryReferences - remove reference - $deliveryRef');
  }

  // mark delivery as inactive
  dbBatch.update(deliveryRef, {
    'isActive': false,
    'isDeleted': true,
    'deleteDate': FieldValue.serverTimestamp(),
    'deletedBy': deleteByUserRef,
  });

  await dbBatch.commit();
  res = true; // turn result to true
  return res;
}
