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

Future<DocumentReference?> createDraftOfflineOrder(
  String orderNumber,
  String paymentMethod,
  String deliveryAddress1,
  String deliveryAddress2,
  String deliveryPhoneNumber,
  String deliveryFirstName,
  String deliverySurName,
  String billingEmail,
  String volunteerName,
  DocumentReference volunteerRef,
  DocumentReference warehouseRef,
  String warehouseName,
  String deliveryCity,
  String deliveryPostcode,
) async {
  // Add your function code here!

  final db = FirebaseFirestore.instance;
  final log = Logger();

  // create the draft order
  try {
    final newOrderPayload = {
      'orderNumber': orderNumber,
      'paymentMethod': paymentMethod,
      'totalOrderItems': 0,
      'createdDate': FieldValue.serverTimestamp(),
      'isActive': false,
      'isOffline': true,
      'isCashDue': false,
      'isCashPaid': false,
      'isPaidToLead': false,
      'assignedVolunteerRef': volunteerRef,
      'assignedVolunteerName': volunteerName,
      'assignedWarehouseRef': warehouseRef,
      'assignedWarehouseName': warehouseName,
      'deliveryAddressLine1': deliveryAddress1,
      'deliveryAddressLine2': deliveryAddress2,
      'deliveryCity': deliveryCity,
      'deliveryPostcode': deliveryPostcode,
      'deliveryPhoneNumber': deliveryPhoneNumber,
      'deliveryFirstName': deliveryFirstName,
      'deliverySurname': deliverySurName,
      'billingEmail': billingEmail,
      'offlineOrder_volunteerName': volunteerName,
      'total_qty': 0,
      'total_orderAmount': 0,
      'orderId': '',
      'orderItems': []
    };

    log.i(newOrderPayload);

    // add draft order
    final orderRef = db.collection('orders');
    final newOrderRef = await orderRef.add(newOrderPayload);

    log.d('Order Created with REef: ${orderRef.id}');
    // update draft order id
    await newOrderRef.update({'orderId': newOrderRef.id});

    return newOrderRef;
  } catch (e) {
    log.e(e);
    return null;
  }
}
