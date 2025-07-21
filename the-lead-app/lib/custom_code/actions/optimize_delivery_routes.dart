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

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<OptimisedDeliveriesStruct> optimizeDeliveryRoutes(
    List<DeliveriesRecord> deliveries) async {
  // Add your function code here!
  String mapbox_token =
      'sk.eyJ1IjoicG9taWZtIiwiYSI6ImNscjQ4aDV0bjBzNGEycXFqdWd2eDl6NzAifQ.B_57oh8LZY_dDdDvyAn7gg';
  OptimisedDeliveriesStruct delStruct = OptimisedDeliveriesStruct();
  delStruct.optimisedDeliveriesList = [];

  // create a string of longlats
  String coordinatesString = deliveries
      .map((e) => "${e.coordinates?.longitude},${e.coordinates?.latitude}")
      .join(';');

  // call mapbox api for the longlats and get optimzied deliveries
  String url =
      'https://api.mapbox.com/optimized-trips/v1/mapbox/driving/$coordinatesString?source=first&roundtrip=true&access_token=$mapbox_token';

  try {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      List<dynamic> waypoints = jsonData['waypoints'];
      List<dynamic> trips = jsonData['trips'];

      double totalDist = trips[0]['distance'];
      double totalDur = trips[0]['duration'];

      delStruct.totalDistance = (totalDist / 1609.344).toStringAsFixed(2);
      int tothrs = totalDur ~/ 3600;
      int totmns = (totalDur % 3600) ~/ 60;

      delStruct.totalDuration = "$tothrs:$totmns";

      // for each delivery document, create a delStruct document and add the original index
      for (int i = 0; i < deliveries.length; i++) {
        DeliveriesRecord del = deliveries[i];
        int wpi = waypoints[i]['waypoint_index'];
        int hours = trips[0]['legs'][i]['duration'] ~/ 3600;
        int minutes = (trips[0]['legs'][i]['duration'] % 3600) ~/ 60;
        String dur = "$hours:$minutes";
        String dist = (trips[0]['legs'][i]['distance'] / 1609.344)
            .toStringAsFixed(1); // convert meters to miles

        OptimisedDeliveryItemStruct delStructItem = OptimisedDeliveryItemStruct(
          orderNumber: del.orderNumber,
          deliveryAddressLine1: del.deliveryAddress1,
          deliveryAddressLine2: del.deliveryAddress2,
          deliveryPostcode: del.deliveryPostcode,
          deliveryFirstName: del.deliveryFirstName,
          deliveryLastName: del.deliverySurname,
          deliveryRef: del.reference,
          legDistance: dist,
          legDuration: dur,
          originalIndex: i,
          waypointIndex: wpi,
        );
        delStruct.optimisedDeliveriesList.add(delStructItem);
      }

      // sort the delStruct list on waypoint_index and return
      delStruct.optimisedDeliveriesList
          .sort((a, b) => a.waypointIndex.compareTo(b.waypointIndex));
    } else {
      delStruct.totalDistance = "0";
      delStruct.totalDuration = "0";
    }

    return delStruct;
  } catch (e) {
    delStruct.totalDistance = "0";
    delStruct.totalDuration = "0";

    return delStruct;
  }
}
