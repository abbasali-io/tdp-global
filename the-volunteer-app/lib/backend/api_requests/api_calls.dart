import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TestCallCall {
  static Future<ApiCallResponse> call({
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TestCall',
      apiUrl:
          'https://us-central1-the-date-projec-app.cloudfunctions.net/sample',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAdminCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? displayName = '',
    String? photoUrl = '',
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "displayName": "${displayName}",
  "photoUrl": "${photoUrl}",
  "phoneNumber": "${phoneNumber}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAdmin',
      apiUrl:
          'https://europe-west1-the-date-projec-app.cloudfunctions.net/user_creteAdmin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateLeadCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? displayName = '',
    String? photoUrl = '',
    String? phoneNumber = '',
    String? warehouseName = '',
    String? warehouseId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "displayName": "${displayName}",
  "photoUrl": "${photoUrl}",
  "phoneNumber": "${phoneNumber}",
  "warehouseId": "${warehouseId}",
  "warehouseName": "${warehouseName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createLead',
      apiUrl:
          'https://europe-west1-the-date-projec-app.cloudfunctions.net/user_createLead',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateDeliveryForOnlineOrdersCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? orderId = '',
    String? batchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "orderId": "${orderId}",
  "batchId": "${batchId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createDeliveryForOnlineOrders',
      apiUrl:
          'https://europe-west1-the-date-projec-app.cloudfunctions.net/create_delivery',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MarkDamagedStockForVolunteersCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? volunteerAssignedProductsId = '',
    String? productId = '',
    int? totalDamagedProduct,
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${productId}",
  "volunteer_assignedProductsId": "${volunteerAssignedProductsId}",
  "productId": "${productId}",
  "totalDamagedProduct": "${totalDamagedProduct}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'markDamagedStockForVolunteers',
      apiUrl:
          'https://us-central1-the-date-projec-app.cloudfunctions.net/warehouse_stockMarkDamaged',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateDeliveryStatusCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? orderId = '',
    String? deliveryId = '',
    bool? isDeliverySuccessful,
    int? totalDeliveredQty,
    String? signaturePath = '',
    String? deliveryProofPath = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "orderId": "${orderId}",
  "deliveryId": "${deliveryId}",
  "isDeliverySuccessful": "${isDeliverySuccessful}",
  "totalDeliveredQty": ${totalDeliveredQty}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateDeliveryStatus',
      apiUrl:
          'https://europe-west1-the-date-projec-app.cloudfunctions.net/update_deliveryAsDelivered',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddStockToProductCall {
  static Future<ApiCallResponse> call({
    String? productId = '',
    int? stockQty = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "productId": "${productId}",
  "stockQty": ${stockQty}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addStockToProduct',
      apiUrl:
          'https://europe-west1-the-date-projec-app.cloudfunctions.net/addStockToProduct',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BringMissingOrdersCall {
  static Future<ApiCallResponse> call({
    String? portalOrderNo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "portalOrderNo": "${portalOrderNo}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'bringMissingOrders',
      apiUrl:
          'https://europe-west1-the-date-projec-app.cloudfunctions.net/create_single_order_from_portal',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
