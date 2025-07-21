// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> countObjectsInJsonArray(List<dynamic> jsonResults) async {
  // return a count for the number of objects in the provided json array
  int count = 0;
  for (var i = 0; i < jsonResults.length; i++) {
    if (jsonResults[i] is Map<String, dynamic>) {
      count++;
    }
  }
  return count;
}
