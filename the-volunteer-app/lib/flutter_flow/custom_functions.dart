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
import '/auth/firebase_auth/auth_util.dart';

String getRoleFromUser(UsersRecord userDoc) {
// return 'Lead' if the 'isLead' property of the User document is true
// this is test line
  if (userDoc.isAdmin == true) {
    return 'Admin';
  } else if (userDoc.isLead == true) {
    return 'Lead';
  } else if (userDoc.isVolunteer == true) {
    return 'Volunteer';
  } else {
    return 'Unknown';
  }
}

String getOrderStatus(OrdersRecord orderDoc) {
// return "Paid" if "isCashPaid" is true in order documnet, return "Assigned" if "isAssigned" is true
  if (orderDoc.isCashPaid == true) {
    return 'Paid';
  } else if (orderDoc.isAssigned == true) {
    return 'Assigned';
  } else if (orderDoc.isNew == true) {
    return 'New';
  } else if (orderDoc.isDelivered == true) {
    return 'Delivered';
  } else if (orderDoc.isFailed == true) {
    return 'Failed';
  } else if (orderDoc.isCashDue == true) {
    return 'Cash Due';
  } else if (orderDoc.isOffline == true && orderDoc.isCashDue == true) {
    return 'Cash Due';
  } else if (orderDoc.isOffline == true && orderDoc.isCashPaid == true) {
    return 'Cash Paid';
  } else {
    return 'Active';
  }
}

String? getPostCodesFromUserPostcodeList(List<String>? postcodes) {
  if (postcodes != null) {
    return postcodes.join(',');
  } else {
    return '';
  }
}

bool verifyGivenRole(
  String role,
  bool isAdmin,
  bool isLead,
  bool isVolunteer,
) {
  if (isAdmin == true) {
    return role == "Admin" ? true : false;
  } else {
    if (isLead == true) {
      return role == "Lead" ? true : false;
    } else {
      return role == "Volnteer" ? true : false;
    }
  }
}

int getBalanceUndamagedStockAmount(
  int undamage,
  int damaged,
) {
  if (undamage <= damaged) {
    return damaged - undamage;
  } else {
    return damaged;
  }
  ;
}

String removeZeroFromPhone(String phone) {
  return phone.substring(1);
}

String getFirstPartOfOrderPostcode(String postcode) {
  return postcode.split(' ')[0];
}

String getDeliveryStatus(DeliveriesRecord deliveryDoc) {
  if (deliveryDoc.isDelivered == true) {
    return 'Delivered';
  } else {
    return 'Assigned';
  }
}
