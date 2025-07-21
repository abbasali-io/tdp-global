// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> getBalanceStockValue(
  int originalValue,
  int changeValue,
) async {
  // Add your function code here!
  if (changeValue > originalValue) {
    return 0;
  } else {
    return originalValue - changeValue;
  }
}
