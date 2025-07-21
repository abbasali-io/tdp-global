// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<OrdersRecord>?> searchOrdersAdmins(
  String? customerName,
  String? orderNumber,
  String? postCode,
  String? orderStatus,
  DateTime? startDate,
  DateTime? endDate,
  String? orderType,
  String? warehouseName,
) async {
  // Add your function code here!

  final db = FirebaseFirestore.instance;
  try {
    // search 'orders' in order collection by all non-nullable parameters
    Query<Map<String, dynamic>> orderQuery =
        db.collection('orders').where('isActive', isEqualTo: true);

    // orderQuery = orderQuery.where('orderNumber', isEqualTo: '74063');

    // check orderNumber
    if (orderNumber != null && orderNumber.isNotEmpty) {
      if (orderNumber != "All") {
        orderQuery = orderQuery.where('orderNumber', isEqualTo: orderNumber);
      }
    }

    // check customerName
    if (customerName != null && customerName.isNotEmpty) {
      if (customerName != "All") {
        orderQuery =
            orderQuery.where('deliveryFirstName', isEqualTo: customerName);
      }
    }

    // check postCode
    if (postCode != null && postCode.isNotEmpty) {
      if (postCode != "All") {
        orderQuery = orderQuery.where('firstPostCode', isEqualTo: postCode);
      }
    }

    // check orderType
    if (orderType != null && orderType.isNotEmpty) {
      switch (orderType) {
        case "Online":
          orderQuery = orderQuery.where('isOnline', isEqualTo: true);
          break;
        case "Offline":
          orderQuery = orderQuery.where('isOffline', isEqualTo: true);
          break;
        default:
      }
    }

    // check orderStatus : New, Delivered, Cash Paid, Cash Due, Order Assigned,
    if (orderStatus != null && orderStatus.isNotEmpty) {
      switch (orderStatus) {
        case "All":
          break;
        case "New":
          orderQuery = orderQuery.where('isNew', isEqualTo: true);
          break;

        case "Delivered":
          orderQuery = orderQuery.where('isDelivered', isEqualTo: true);
          break;

        case "Pending":
          orderQuery = orderQuery.where('isAssigned', isEqualTo: true);
          break;
        case "Cash Due":
          orderQuery = orderQuery.where('isCashDue', isEqualTo: true);
          break;

        case "Paid":
          orderQuery = orderQuery.where('isCashPaid', isEqualTo: true);
          break;

        default:
      }
    }

    // check warehouseName
    if (warehouseName != null && warehouseName.isNotEmpty) {
      if (warehouseName != "All") {
        orderQuery =
            orderQuery.where('assignedWarehousName', isEqualTo: warehouseName);
      }
    }
    // check startDate
    if (startDate != null) {
      orderQuery =
          orderQuery.where('createdDate', isGreaterThanOrEqualTo: startDate);
    }
    // check endDate
    if (endDate != null) {
      orderQuery =
          orderQuery.where('createdDate', isLessThanOrEqualTo: endDate);
    }

    // set limit
    orderQuery = orderQuery.limit(100);

    final orders = await orderQuery.get();

    final res = orders.docs
        .map((e) => OrdersRecord.getDocumentFromData(e.data(), e.reference))
        .toList();

    return res;
  } catch (e) {
    return null;
  }
}
