import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getVolunteerPostcodes(List<String>? postcodes) {
  if (postcodes != null) {
    return postcodes.join(',');
  } else {
    return '';
  }
}

String getDeliveryStatus(DeliveriesRecord deliveryDoc) {
  if (deliveryDoc.isDelivered == true) {
    return 'Delivered';
  } else {
    return 'Pending';
  }
}

LatLng changeCoordinateToGeoPoint(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

String getDateStringFromTimeStamp(double timestamp) {
  // return date in 'dd/mm/yy' format from linux timestamp in seconds
  final date = DateTime.fromMillisecondsSinceEpoch((timestamp * 1000).toInt());
  final formattedDate = DateFormat('dd-MM-yy').format(date);
  return formattedDate;
}

String getDateForSearchFromTimeStamp(int timestamp) {
  final date = DateTime.fromMillisecondsSinceEpoch((timestamp * 1000).toInt());
  final formattedDate = DateFormat('d MMM').format(date);
  return formattedDate;
}

String returnNormalTextFromCamelCase(String camCaseString) {
  // conver camel case in parameter to normal text and return
  String normalText = '';
  for (int i = 0; i < camCaseString.length; i++) {
    if (i == 0) {
      normalText += camCaseString[i].toUpperCase();
    } else if (camCaseString[i] == camCaseString[i].toUpperCase()) {
      normalText += ' ${camCaseString[i]}';
    } else {
      normalText += camCaseString[i];
    }
  }
  return normalText;
}

List<String> breakStringIntoComponents(String inputString) {
  return inputString.split('|').map((part) => part.trim()).toList();
}

dynamic convertJsonObjectToArray(dynamic searchResults) {
  if (searchResults is List) {
    return searchResults; // Already an array, return as is
  } else if (searchResults is Map) {
    return [searchResults]; // Convert object to a single-element array
  } else {
    // Handle other types if needed (e.g., throw an error or return an empty list)
    return []; // Or throw an exception:  throw ArgumentError('Invalid JSON type');
  }
}
