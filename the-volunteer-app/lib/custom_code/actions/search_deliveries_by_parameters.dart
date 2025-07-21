// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<DeliveriesRecord>?> searchDeliveriesByParameters(
  String? customerName,
  String? postCode,
  DateTime? startTargetDeliveryDate,
  DateTime? endTargetDeliveryDate,
  String? volunteerName,
  String? deliveryStatus, //Pending, Delivered
  String? orderNumber,
  DocumentReference warehouseRef,
) async {
  // Add your function code here!
  final db = FirebaseFirestore.instance;
  try {
    // search 'orders' in order collection by all non-nullable parameters
    Query<Map<String, dynamic>> deliveryQuery = db
        .collection('deliveries')
        .where('isActive', isEqualTo: true)
        .where('warehouseRef', isEqualTo: warehouseRef);

    // orderQuery = orderQuery.where('orderNumber', isEqualTo: '74063');

    // check deliveryNumber
    if (orderNumber != null && orderNumber.isNotEmpty) {
      if (orderNumber != "All") {
        deliveryQuery =
            deliveryQuery.where('orderNumber', isEqualTo: orderNumber);
      }
    }

    // check customerName
    if (customerName != null && customerName.isNotEmpty) {
      if (customerName != "All") {
        deliveryQuery =
            deliveryQuery.where('deliveryFirstName', isEqualTo: customerName);
      }
    }

    // check postCode
    if (postCode != null && postCode.isNotEmpty) {
      if (postCode != "All") {
        deliveryQuery =
            deliveryQuery.where('deliveryPostcode', isEqualTo: postCode);
      }
    }

    // check orderType
    if (deliveryStatus != null && deliveryStatus.isNotEmpty) {
      switch (deliveryStatus) {
        case "Pending":
          deliveryQuery = deliveryQuery.where('isDelivered', isEqualTo: false);
          break;
        case "Delivered":
          deliveryQuery = deliveryQuery.where('isDelivered', isEqualTo: true);
          break;
        default:
      }
    }

    // check volunteerName
    if (volunteerName != null && volunteerName.isNotEmpty) {
      if (volunteerName != "All") {
        deliveryQuery =
            deliveryQuery.where('volunteerName', isEqualTo: volunteerName);
      }
    }
    // check startDate
    if (startTargetDeliveryDate != null) {
      deliveryQuery = deliveryQuery.where('targetDeliveryDate',
          isGreaterThanOrEqualTo: startTargetDeliveryDate);
    }
    // check endDate
    if (endTargetDeliveryDate != null) {
      deliveryQuery = deliveryQuery.where('targetDeliveryDate',
          isLessThanOrEqualTo: endTargetDeliveryDate);
    }
    final orders = await deliveryQuery.get();

    final res = orders.docs
        .map((e) => DeliveriesRecord.getDocumentFromData(e.data(), e.reference))
        .toList();

    return res;
  } catch (e) {
    return null;
  }
}
