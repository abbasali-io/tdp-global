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
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer';

Future createVolunteer(
  String email,
  String password,
  String whKey,
  String displayName,
  String photoUrl,
  String phoneNumber,
) async {
  // Add your function code here!
  bool res = false;

  final firestore = FirebaseFirestore.instance;

  // Step 1: Get the first ‘warehouse’ document from ‘warehouses’ collection where ‘warehouseKey’ is equal to {whKey}.
  final whQueryRef = FirebaseFirestore.instance.collection('warehouses');
  final QuerySnapshot whSnapshot =
      await whQueryRef.where('warehouseKey', isEqualTo: whKey).limit(1).get();

  // Step 2: If no document is found, return the error with message ‘No Warehouse is Found’.
  if (whSnapshot.docs.isEmpty) {
    throw ('No Warehouse is Found');
  }

  final warehouseData = await whSnapshot.docs.first.data();

  final UserCredential userRecords = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password)
      .catchError((e) => throw Exception('Could not create user: $e'));

  // Step 4: set a new document at ‘users/{userId}’ with the following data.
  await FirebaseFirestore.instance.doc('users/${userRecords.user!.uid}').set({
    'uid': userRecords.user!.uid,
    'isAdmin': false,
    'isLead': false,
    'isVolunteer': true,
    'isActive': true,
    'assignedWarehouseName': whSnapshot.docs.first.get('display_name'),
    'assignedWarehouseRef': whSnapshot.docs.first.reference,
    'email': email,
    'display_name': displayName,
    'photo_url': photoUrl,
    'phone_number': phoneNumber,
    'created_time': FieldValue.serverTimestamp(),
    'warehouseKey': whKey,
    'total_allProductAvailableStock': 0,
    'total_assignedOnlineOrdersSla': 0,
    'total_assignedOnlineOrders': 0,
    'total_pendingDeliveryOnlineOrders': 0,
    'volunteerPostcodeList': [],
  });

  // Step 5: create a new document at ‘users/{uid}/volunteer_totals’ with the following values.
  await FirebaseFirestore.instance
      .collection('users/${userRecords.user!.uid}/volunteer_totals')
      .add({
    'value_outstandingAmount': 0,
    'value_offlineSales': 0,
    'total_deliveredOnlineOrders': 0,
    'total_productSoldOffline': 0,
    'total_damagedProducts': 0,
    'total_stockReservedForOnlineOrders': 0,
    'total_postcodeSelected': 0,
    'total_assignedTypeOfProducts': 0,
    'total_productDeliveredOnline': 0
  });

  // Step 6: get all the documents from the collection ‘warehouseRef/wh_postCodes’ and create new documents.
  final whPostCodesRef = FirebaseFirestore.instance
      .collection('warehouses')
      .doc(whSnapshot.docs.first.reference.id)
      .collection('wh_postCodes');

  final QuerySnapshot postCodesSnapshot = await whPostCodesRef.get();

  await Future.wait(postCodesSnapshot.docs.map((postCodeDoc) =>
      FirebaseFirestore.instance
          .collection('users')
          .doc(userRecords.user!.uid)
          .collection('volunteer_postCodes')
          .add({
        'postCode': postCodeDoc.get('postCode'),
        'isEnabled': false,
      })));

  // Step 7: get all the documents from the collection ‘products’ and create new documents.
  final QuerySnapshot productsSnapshot =
      await FirebaseFirestore.instance.collection('products').get();
  await Future.wait(productsSnapshot.docs.map((productDoc) =>
      FirebaseFirestore.instance
          .collection('users')
          .doc(userRecords.user!.uid)
          .collection('volunteer_assignedProducts')
          .doc(productDoc.get('productId'))
          // .doc(
          //     'users/${userRecords.user!.uid}/volunteer_assignedProducts/${productDoc.get('productId')}')
          .set({
        'productName': productDoc.get('productName'),
        'productId': productDoc.get('productId'),
        'productImageUrl': productDoc.get('productImageUrl'),
        'productPrice': productDoc.get('productPrice'),
        'isActive': productDoc.get('isActive'),
        'productAvailableStock': 0,
        'productReservedForOnlineOrders': 0,
        'productDamaged': 0,
        'productRequiredStock': 0,
        'productDescription': productDoc.get('productDescription'),
      })));

  res = true;

  return res;
}
