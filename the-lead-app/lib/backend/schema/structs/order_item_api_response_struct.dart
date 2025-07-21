// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrderItemApiResponseStruct extends FFFirebaseStruct {
  OrderItemApiResponseStruct({
    String? productName,
    String? productId,
    double? cost,
    int? quantity,
    String? productSku,
    String? productImageUrl,
    String? orderNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productName = productName,
        _productId = productId,
        _cost = cost,
        _quantity = quantity,
        _productSku = productSku,
        _productImageUrl = productImageUrl,
        _orderNumber = orderNumber,
        super(firestoreUtilData);

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;

  bool hasProductId() => _productId != null;

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  set cost(double? val) => _cost = val;

  void incrementCost(double amount) => cost = cost + amount;

  bool hasCost() => _cost != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "productSku" field.
  String? _productSku;
  String get productSku => _productSku ?? '';
  set productSku(String? val) => _productSku = val;

  bool hasProductSku() => _productSku != null;

  // "productImage_url" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  set productImageUrl(String? val) => _productImageUrl = val;

  bool hasProductImageUrl() => _productImageUrl != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  set orderNumber(String? val) => _orderNumber = val;

  bool hasOrderNumber() => _orderNumber != null;

  static OrderItemApiResponseStruct fromMap(Map<String, dynamic> data) =>
      OrderItemApiResponseStruct(
        productName: data['productName'] as String?,
        productId: data['productId'] as String?,
        cost: castToType<double>(data['cost']),
        quantity: castToType<int>(data['quantity']),
        productSku: data['productSku'] as String?,
        productImageUrl: data['productImage_url'] as String?,
        orderNumber: data['orderNumber'] as String?,
      );

  static OrderItemApiResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderItemApiResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'productName': _productName,
        'productId': _productId,
        'cost': _cost,
        'quantity': _quantity,
        'productSku': _productSku,
        'productImage_url': _productImageUrl,
        'orderNumber': _orderNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'productId': serializeParam(
          _productId,
          ParamType.String,
        ),
        'cost': serializeParam(
          _cost,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'productSku': serializeParam(
          _productSku,
          ParamType.String,
        ),
        'productImage_url': serializeParam(
          _productImageUrl,
          ParamType.String,
        ),
        'orderNumber': serializeParam(
          _orderNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderItemApiResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderItemApiResponseStruct(
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        productId: deserializeParam(
          data['productId'],
          ParamType.String,
          false,
        ),
        cost: deserializeParam(
          data['cost'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        productSku: deserializeParam(
          data['productSku'],
          ParamType.String,
          false,
        ),
        productImageUrl: deserializeParam(
          data['productImage_url'],
          ParamType.String,
          false,
        ),
        orderNumber: deserializeParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
      );

  static OrderItemApiResponseStruct fromAlgoliaData(
          Map<String, dynamic> data) =>
      OrderItemApiResponseStruct(
        productName: convertAlgoliaParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        productId: convertAlgoliaParam(
          data['productId'],
          ParamType.String,
          false,
        ),
        cost: convertAlgoliaParam(
          data['cost'],
          ParamType.double,
          false,
        ),
        quantity: convertAlgoliaParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        productSku: convertAlgoliaParam(
          data['productSku'],
          ParamType.String,
          false,
        ),
        productImageUrl: convertAlgoliaParam(
          data['productImage_url'],
          ParamType.String,
          false,
        ),
        orderNumber: convertAlgoliaParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OrderItemApiResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderItemApiResponseStruct &&
        productName == other.productName &&
        productId == other.productId &&
        cost == other.cost &&
        quantity == other.quantity &&
        productSku == other.productSku &&
        productImageUrl == other.productImageUrl &&
        orderNumber == other.orderNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productName,
        productId,
        cost,
        quantity,
        productSku,
        productImageUrl,
        orderNumber
      ]);
}

OrderItemApiResponseStruct createOrderItemApiResponseStruct({
  String? productName,
  String? productId,
  double? cost,
  int? quantity,
  String? productSku,
  String? productImageUrl,
  String? orderNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderItemApiResponseStruct(
      productName: productName,
      productId: productId,
      cost: cost,
      quantity: quantity,
      productSku: productSku,
      productImageUrl: productImageUrl,
      orderNumber: orderNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderItemApiResponseStruct? updateOrderItemApiResponseStruct(
  OrderItemApiResponseStruct? orderItemApiResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderItemApiResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderItemApiResponseStructData(
  Map<String, dynamic> firestoreData,
  OrderItemApiResponseStruct? orderItemApiResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderItemApiResponse == null) {
    return;
  }
  if (orderItemApiResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderItemApiResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderItemApiResponseData =
      getOrderItemApiResponseFirestoreData(orderItemApiResponse, forFieldValue);
  final nestedData =
      orderItemApiResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      orderItemApiResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderItemApiResponseFirestoreData(
  OrderItemApiResponseStruct? orderItemApiResponse, [
  bool forFieldValue = false,
]) {
  if (orderItemApiResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderItemApiResponse.toMap());

  // Add any Firestore field values
  orderItemApiResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderItemApiResponseListFirestoreData(
  List<OrderItemApiResponseStruct>? orderItemApiResponses,
) =>
    orderItemApiResponses
        ?.map((e) => getOrderItemApiResponseFirestoreData(e, true))
        .toList() ??
    [];
