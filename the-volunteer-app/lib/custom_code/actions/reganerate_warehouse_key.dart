// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

Future<String> reganerateWarehouseKey() async {
  // Add your function code here!
  String res = '';
  final String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';

  Random random = Random();

  for (int i = 0; i < 6; i++) {
    int index = random.nextInt(chars.length);
    res += chars[index];
  }
  ;

  return res;
}
