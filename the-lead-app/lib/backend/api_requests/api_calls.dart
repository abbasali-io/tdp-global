import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TDPTwentyFive Group Code

class TDPTwentyFiveGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
  static CustomerOoGetSingleCall customerOoGetSingleCall =
      CustomerOoGetSingleCall();
  static OrderOoGetSingleCall orderOoGetSingleCall = OrderOoGetSingleCall();
}

class CustomerOoGetSingleCall {
  Future<ApiCallResponse> call({
    String? custId = '',
  }) async {
    final baseUrl = TDPTwentyFiveGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Customer oo Get Single',
      apiUrl: '${baseUrl}/customers/${custId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? customerId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.customerId''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? deliveryStreet(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deliveryAddress.street''',
      ));
  String? deliveryCity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deliveryAddress.city''',
      ));
  String? deliveryFullPostcode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.deliveryAddress.postcode''',
      ));
  String? deliveryCountry(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.deliveryAddress.country''',
      ));
}

class OrderOoGetSingleCall {
  Future<ApiCallResponse> call({
    String? orderId = '',
  }) async {
    final baseUrl = TDPTwentyFiveGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Order oo Get Single',
      apiUrl: '${baseUrl}/orders/${orderId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TDPTwentyFive Group Code

/// Start Customers Group Code

class CustomersGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api/customers';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
  static GetASingleCustomerCall getASingleCustomerCall =
      GetASingleCustomerCall();
}

class GetASingleCustomerCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final baseUrl = CustomersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a Single Customer',
      apiUrl: '${baseUrl}/${customerId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Customers Group Code

/// Start Orders Group Code

class OrdersGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
  static GetASingleOrderCall getASingleOrderCall = GetASingleOrderCall();
  static GetNotfreeDeliveryCall getNotfreeDeliveryCall =
      GetNotfreeDeliveryCall();
  static UpdateOrderStatusCall updateOrderStatusCall = UpdateOrderStatusCall();
  static UpdateDeliveryDetailsCall updateDeliveryDetailsCall =
      UpdateDeliveryDetailsCall();
  static GetASingleCustomerByOrderCall getASingleCustomerByOrderCall =
      GetASingleCustomerByOrderCall();
  static RefundRequestForASpecificOrderCall refundRequestForASpecificOrderCall =
      RefundRequestForASpecificOrderCall();
  static RefundAdminApprovedRequestCall refundAdminApprovedRequestCall =
      RefundAdminApprovedRequestCall();
}

class GetASingleOrderCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a single order',
      apiUrl: '${baseUrl}/orders/${orderNo}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetNotfreeDeliveryCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get notfree delivery',
      apiUrl: '${baseUrl}/orders/${orderNo}/delivery',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateOrderStatusCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
    String? status = '',
    String? updateTime = '',
    String? notes = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "status": "${escapeStringForJson(status)}",
  "updateTime": "${escapeStringForJson(updateTime)}",
  "notes": "${escapeStringForJson(notes)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Order Status',
      apiUrl: '${baseUrl}/orders/${orderNo}/status',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

class UpdateDeliveryDetailsCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
    String? actualDeliveryTime = '',
    String? deliveredBy = '',
    String? additionalNotes = '',
    String? proofOfDelivery = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "actualDeliveryTime": "${escapeStringForJson(actualDeliveryTime)}",
  "deliveredBy": "${escapeStringForJson(deliveredBy)}",
  "additionalNotes": "${escapeStringForJson(additionalNotes)}",
  "proofOfDelivery": "${escapeStringForJson(proofOfDelivery)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Delivery Details',
      apiUrl: '${baseUrl}/orders/${orderNo}/delivery',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

class GetASingleCustomerByOrderCall {
  Future<ApiCallResponse> call({
    String? customerId = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a single customer by order',
      apiUrl: '${baseUrl}/orders/${customerId}/customer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefundRequestForASpecificOrderCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Refund request for a specific order',
      apiUrl: '${baseUrl}/orders/${orderNo}/refund',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
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

class RefundAdminApprovedRequestCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
    bool? isAdminApproved,
  }) async {
    final baseUrl = OrdersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
    "isAdminApproved": 
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Refund admin approved request',
      apiUrl: '${baseUrl}/orders/${orderNo}/admin',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

/// End Orders Group Code

/// Start Products Group Code

class ProductsGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api/products';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
  static GetASingleProductCall getASingleProductCall = GetASingleProductCall();
  static GetProductsByWarehouseIDCall getProductsByWarehouseIDCall =
      GetProductsByWarehouseIDCall();
}

class GetASingleProductCall {
  Future<ApiCallResponse> call({
    String? productId = '',
    String? warehouseId = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a single product',
      apiUrl: '${baseUrl}/${productId}/warehouse/${warehouseId}/stock',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? onlineStock(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.product.onlineStock''',
      ));
}

class GetProductsByWarehouseIDCall {
  Future<ApiCallResponse> call({
    String? productId = '',
  }) async {
    final baseUrl = ProductsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get products by warehouseID',
      apiUrl: '${baseUrl}/warehouse/${productId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Products Group Code

/// Start Shippings Group Code

class ShippingsGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
  static GetLocationCall getLocationCall = GetLocationCall();
}

class GetLocationCall {
  Future<ApiCallResponse> call({
    String? postCode = '',
  }) async {
    final baseUrl = ShippingsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "postCode": "${escapeStringForJson(postCode)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Location',
      apiUrl: '${baseUrl}/shippings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

/// End Shippings Group Code

/// Start Stockists Group Code

class StockistsGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api/stockists';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
}

/// End Stockists Group Code

/// Start Warehouses Group Code

class WarehousesGroup {
  static String getBaseUrl() => 'https://api.thedateproject.org/api';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
  };
  static GetAllWarehouseCall getAllWarehouseCall = GetAllWarehouseCall();
  static GetASingleWarehouseCall getASingleWarehouseCall =
      GetASingleWarehouseCall();
  static UpdateOnlineStockCall updateOnlineStockCall = UpdateOnlineStockCall();
  static GetPostCodesCall getPostCodesCall = GetPostCodesCall();
  static UpdatePostCodesCall updatePostCodesCall = UpdatePostCodesCall();
  static OnlinetoOfflineCall onlinetoOfflineCall = OnlinetoOfflineCall();
  static OfflinetoOnlineCall offlinetoOnlineCall = OfflinetoOnlineCall();
  static DamagedStockCall damagedStockCall = DamagedStockCall();
}

class GetAllWarehouseCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get all warehouse',
      apiUrl: '${baseUrl}/warehouses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetASingleWarehouseCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get a single warehouse',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/stock',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateOnlineStockCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
    String? stockId = '',
    int? newQuantity,
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "newQuantity": ${newQuantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update onlineStock',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/products/${stockId}/stock',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

class GetPostCodesCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get post codes',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/postcodes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePostCodesCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
    List<String>? postcodesList,
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();
    final postcodes = _serializeList(postcodesList);

    final ffApiRequestBody = '''
{
  "postcodes": ${postcodes}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update post codes',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/postcodes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

class OnlinetoOfflineCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
    String? productId = '',
    int? quantity,
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productId": "${escapeStringForJson(productId)}",
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OnlinetoOffline',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/stock/online-to-offline',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

class OfflinetoOnlineCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
    String? productId = '',
    int? quantity,
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productId": "${escapeStringForJson(productId)}",
  "quantity": ${quantity}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OfflinetoOnline',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/stock/offline-to-online',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

class DamagedStockCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
    String? productId = '',
    int? quantity,
    String? reason = '',
  }) async {
    final baseUrl = WarehousesGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productId": "${escapeStringForJson(productId)}",
  "quantity": ${quantity},
  "reason": "${escapeStringForJson(reason)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Damaged Stock',
      apiUrl: '${baseUrl}/warehouses/${warehouseId}/stock/damaged',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ck_8ef17343c7f7b879932a3e396d0b8af6b2a4ba4b',
      },
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

/// End Warehouses Group Code

/// Start Query Aggregate Functions Group Code

class QueryAggregateFunctionsGroup {
  static String getBaseUrl() => 'https://';
  static Map<String, String> headers = {};
  static GetDeliveryitemsForWHQtySumCall getDeliveryitemsForWHQtySumCall =
      GetDeliveryitemsForWHQtySumCall();
  static GetSumOfWarehouseMovementTransactionsCall
      getSumOfWarehouseMovementTransactionsCall =
      GetSumOfWarehouseMovementTransactionsCall();
  static GetSumOfAllDeliveryItemsWItStatusCall
      getSumOfAllDeliveryItemsWItStatusCall =
      GetSumOfAllDeliveryItemsWItStatusCall();
  static GetSumOfAllDeliveryItemsCall getSumOfAllDeliveryItemsCall =
      GetSumOfAllDeliveryItemsCall();
  static GetSumOfOfflineSaleItemsCall getSumOfOfflineSaleItemsCall =
      GetSumOfOfflineSaleItemsCall();
  static GetSumOfTransferredStockCall getSumOfTransferredStockCall =
      GetSumOfTransferredStockCall();
  static GetSumOfVolAssignedProductsCall getSumOfVolAssignedProductsCall =
      GetSumOfVolAssignedProductsCall();
  static GetSumOfVolMovementTransCall getSumOfVolMovementTransCall =
      GetSumOfVolMovementTransCall();
  static GetSumOrderItemsQtyCall getSumOrderItemsQtyCall =
      GetSumOrderItemsQtyCall();
}

class GetDeliveryitemsForWHQtySumCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? warehouseId = '',
    bool? isDelivered,
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "warehouseId": "${escapeStringForJson(warehouseId)}",
  "isDelivered": ${isDelivered}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getDeliveryitemsForWHQtySum',
      apiUrl: '${baseUrl}getdeliveryitemsforwhqtysum-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfWarehouseMovementTransactionsCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? warehouseId = '',
    String? movementType = '',
    String? stockType = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "warehouseId": "${escapeStringForJson(warehouseId)}",
  "movementType": "${escapeStringForJson(movementType)}",
  "stockType": "${escapeStringForJson(stockType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfWarehouseMovementTransactions',
      apiUrl:
          '${baseUrl}getsumofwarehousemovementtransactions-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfAllDeliveryItemsWItStatusCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? volunteerId = '',
    bool? isDelivered,
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "volunteerId": "${escapeStringForJson(volunteerId)}",
  "isDelivered": ${isDelivered}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfAllDeliveryItemsWItStatus',
      apiUrl:
          '${baseUrl}getsumofallvolunteerdeliveryitemswithstatus-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfAllDeliveryItemsCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? volunteerId = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "volunteerId": "${escapeStringForJson(volunteerId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfAllDeliveryItems',
      apiUrl:
          '${baseUrl}getsumofallvolunteerdeliveryitems-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfOfflineSaleItemsCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? volunteerId = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "volunteerId": "${escapeStringForJson(volunteerId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfOfflineSaleItems',
      apiUrl: '${baseUrl}getsumofofflinesaleitems-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfTransferredStockCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? warehouseId = '',
    String? movementType = '',
    String? stockTransferType = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "warehouseId": "${escapeStringForJson(warehouseId)}",
  "movementType": "${escapeStringForJson(movementType)}",
  "stockTransferType": "${escapeStringForJson(stockTransferType)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfTransferredStock',
      apiUrl: '${baseUrl}getsumoftransferredstock-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfVolAssignedProductsCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? warehouseId = '',
    String? movementType = '',
    String? stockType = '',
    String? toId = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "warehouseId": "${escapeStringForJson(warehouseId)}",
  "movementType": "${escapeStringForJson(movementType)}",
  "stockType": "${escapeStringForJson(stockType)}",
  "toId": "${escapeStringForJson(toId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfVolAssignedProducts',
      apiUrl:
          '${baseUrl}getsumofvolunteerassignedproducts-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOfVolMovementTransCall {
  Future<ApiCallResponse> call({
    String? productPortalId = '',
    String? warehouseId = '',
    String? movementType = '',
    String? stockType = '',
    String? byUserId = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "productPortalId": "${escapeStringForJson(productPortalId)}",
  "warehouseId": "${escapeStringForJson(warehouseId)}",
  "movementType": "${escapeStringForJson(movementType)}",
  "stockType": "${escapeStringForJson(stockType)}",
  "byUserId": "${escapeStringForJson(byUserId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOfVolMovementTrans',
      apiUrl:
          '${baseUrl}getsumofvolunteermovementtransaction-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

class GetSumOrderItemsQtyCall {
  Future<ApiCallResponse> call({
    String? warehouseId = '',
    String? productPortalId = '',
  }) async {
    final baseUrl = QueryAggregateFunctionsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "warehouseId": "${escapeStringForJson(warehouseId)}",
  "productPortalId": "${escapeStringForJson(productPortalId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getSumOrderItemsQty',
      apiUrl: '${baseUrl}getsumoforderitemqty-meaaouy2eq-uc.a.run.app',
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

  int? totalQty(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalQty''',
      ));
}

/// End Query Aggregate Functions Group Code

/// Start TDPSearch Group Code

class TDPSearchGroup {
  static String getBaseUrl() =>
      'https://tdp-search.kiwitech.global/collections';
  static Map<String, String> headers = {
    'x-typesense-api-key': 'SxPuBmuztxIyOcjSDGPTy2bCM4MpyiPR',
  };
  static OrdersSearchCall ordersSearchCall = OrdersSearchCall();
  static OflineSalesSearchCall oflineSalesSearchCall = OflineSalesSearchCall();
}

class OrdersSearchCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? filter = '',
  }) async {
    final baseUrl = TDPSearchGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'OrdersSearch',
      apiUrl: '${baseUrl}/orders/documents/search',
      callType: ApiCallType.GET,
      headers: {
        'x-typesense-api-key': 'SxPuBmuztxIyOcjSDGPTy2bCM4MpyiPR',
      },
      params: {
        'q': query,
        'query_by':
            "assignedWarehouse,billingFirstname,billingSurname,customerEmail,customerPhone,deliveryCity,deliveryCounty,deliveryPostcode,orderNumber,orderStatus,status,warehouseId,orderId,deliveryfirstPostcode",
        'filter_by': filter,
        'sort_by': "targetDeliveryDate:desc",
        'facet_by':
            "deliveryfirstPostcode,orderStatus,deliveryCounty,deliveryCity,assignedWarehouse",
        'per_page': 250,
        'num_types': "1,2,2,2,2,1,1,1,0,1,1,0,0,1",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic resultDocumentsList(dynamic response) => getJsonField(
        response,
        r'''$.hits[:].document''',
      );
  int? recordsFoundForSearch(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.found''',
      ));
  List? facetCounts(dynamic response) => getJsonField(
        response,
        r'''$.facet_counts[:].counts''',
        true,
      ) as List?;
  List? facetArray(dynamic response) => getJsonField(
        response,
        r'''$.facet_counts''',
        true,
      ) as List?;
}

class OflineSalesSearchCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? filter = '',
  }) async {
    final baseUrl = TDPSearchGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'OflineSalesSearch',
      apiUrl: '${baseUrl}offlineSales/documents/search',
      callType: ApiCallType.GET,
      headers: {
        'x-typesense-api-key': 'SxPuBmuztxIyOcjSDGPTy2bCM4MpyiPR',
      },
      params: {
        'q': query,
        'query_by':
            "createdBy,offlineSaleId,saleNo,,volunteerId,volunteerName,volunteerNumber,warehouseId,warehouseName",
        'filter_by': filter,
        'sort_by': "offlineSaleDate:desc",
        'per_page': 250,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TDPSearch Group Code

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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
