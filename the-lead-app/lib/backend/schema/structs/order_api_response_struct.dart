// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrderApiResponseStruct extends FFFirebaseStruct {
  OrderApiResponseStruct({
    String? assignedWarehouse,
    String? billingFirstname,
    String? billingSurname,
    String? customerEmail,
    String? customerPhone,
    String? deliveryAddressline1,
    String? deliveryAddressline2,
    String? deliveryCity,
    String? deliveryContact,
    String? deliveryCounty,
    String? deliveryFirstname,
    String? deliveryNote,
    String? deliveryPostcode,
    String? deliveryfirstPostcode,
    String? deliverySurname,
    String? giftCardFromMessage,
    String? giftCardToMessage,
    bool? noContactDelivery,
    double? orderAmount,
    String? orderNumber,
    String? orderPlaced,
    String? orderStatus,
    String? targetDeliveryDate,
    bool? leaveWithNeighbour,
    String? leaveWithNeighbourMessage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _assignedWarehouse = assignedWarehouse,
        _billingFirstname = billingFirstname,
        _billingSurname = billingSurname,
        _customerEmail = customerEmail,
        _customerPhone = customerPhone,
        _deliveryAddressline1 = deliveryAddressline1,
        _deliveryAddressline2 = deliveryAddressline2,
        _deliveryCity = deliveryCity,
        _deliveryContact = deliveryContact,
        _deliveryCounty = deliveryCounty,
        _deliveryFirstname = deliveryFirstname,
        _deliveryNote = deliveryNote,
        _deliveryPostcode = deliveryPostcode,
        _deliveryfirstPostcode = deliveryfirstPostcode,
        _deliverySurname = deliverySurname,
        _giftCardFromMessage = giftCardFromMessage,
        _giftCardToMessage = giftCardToMessage,
        _noContactDelivery = noContactDelivery,
        _orderAmount = orderAmount,
        _orderNumber = orderNumber,
        _orderPlaced = orderPlaced,
        _orderStatus = orderStatus,
        _targetDeliveryDate = targetDeliveryDate,
        _leaveWithNeighbour = leaveWithNeighbour,
        _leaveWithNeighbourMessage = leaveWithNeighbourMessage,
        super(firestoreUtilData);

  // "assignedWarehouse" field.
  String? _assignedWarehouse;
  String get assignedWarehouse => _assignedWarehouse ?? '';
  set assignedWarehouse(String? val) => _assignedWarehouse = val;

  bool hasAssignedWarehouse() => _assignedWarehouse != null;

  // "billingFirstname" field.
  String? _billingFirstname;
  String get billingFirstname => _billingFirstname ?? '';
  set billingFirstname(String? val) => _billingFirstname = val;

  bool hasBillingFirstname() => _billingFirstname != null;

  // "billingSurname" field.
  String? _billingSurname;
  String get billingSurname => _billingSurname ?? '';
  set billingSurname(String? val) => _billingSurname = val;

  bool hasBillingSurname() => _billingSurname != null;

  // "customerEmail" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  set customerEmail(String? val) => _customerEmail = val;

  bool hasCustomerEmail() => _customerEmail != null;

  // "customerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  set customerPhone(String? val) => _customerPhone = val;

  bool hasCustomerPhone() => _customerPhone != null;

  // "deliveryAddressline1" field.
  String? _deliveryAddressline1;
  String get deliveryAddressline1 => _deliveryAddressline1 ?? '';
  set deliveryAddressline1(String? val) => _deliveryAddressline1 = val;

  bool hasDeliveryAddressline1() => _deliveryAddressline1 != null;

  // "deliveryAddressline2" field.
  String? _deliveryAddressline2;
  String get deliveryAddressline2 => _deliveryAddressline2 ?? '';
  set deliveryAddressline2(String? val) => _deliveryAddressline2 = val;

  bool hasDeliveryAddressline2() => _deliveryAddressline2 != null;

  // "deliveryCity" field.
  String? _deliveryCity;
  String get deliveryCity => _deliveryCity ?? '';
  set deliveryCity(String? val) => _deliveryCity = val;

  bool hasDeliveryCity() => _deliveryCity != null;

  // "deliveryContact" field.
  String? _deliveryContact;
  String get deliveryContact => _deliveryContact ?? '';
  set deliveryContact(String? val) => _deliveryContact = val;

  bool hasDeliveryContact() => _deliveryContact != null;

  // "deliveryCounty" field.
  String? _deliveryCounty;
  String get deliveryCounty => _deliveryCounty ?? '';
  set deliveryCounty(String? val) => _deliveryCounty = val;

  bool hasDeliveryCounty() => _deliveryCounty != null;

  // "deliveryFirstname" field.
  String? _deliveryFirstname;
  String get deliveryFirstname => _deliveryFirstname ?? '';
  set deliveryFirstname(String? val) => _deliveryFirstname = val;

  bool hasDeliveryFirstname() => _deliveryFirstname != null;

  // "deliveryNote" field.
  String? _deliveryNote;
  String get deliveryNote => _deliveryNote ?? '';
  set deliveryNote(String? val) => _deliveryNote = val;

  bool hasDeliveryNote() => _deliveryNote != null;

  // "deliveryPostcode" field.
  String? _deliveryPostcode;
  String get deliveryPostcode => _deliveryPostcode ?? '';
  set deliveryPostcode(String? val) => _deliveryPostcode = val;

  bool hasDeliveryPostcode() => _deliveryPostcode != null;

  // "deliveryfirstPostcode" field.
  String? _deliveryfirstPostcode;
  String get deliveryfirstPostcode => _deliveryfirstPostcode ?? '';
  set deliveryfirstPostcode(String? val) => _deliveryfirstPostcode = val;

  bool hasDeliveryfirstPostcode() => _deliveryfirstPostcode != null;

  // "deliverySurname" field.
  String? _deliverySurname;
  String get deliverySurname => _deliverySurname ?? '';
  set deliverySurname(String? val) => _deliverySurname = val;

  bool hasDeliverySurname() => _deliverySurname != null;

  // "giftCardFromMessage" field.
  String? _giftCardFromMessage;
  String get giftCardFromMessage => _giftCardFromMessage ?? '';
  set giftCardFromMessage(String? val) => _giftCardFromMessage = val;

  bool hasGiftCardFromMessage() => _giftCardFromMessage != null;

  // "giftCardToMessage" field.
  String? _giftCardToMessage;
  String get giftCardToMessage => _giftCardToMessage ?? '';
  set giftCardToMessage(String? val) => _giftCardToMessage = val;

  bool hasGiftCardToMessage() => _giftCardToMessage != null;

  // "noContactDelivery" field.
  bool? _noContactDelivery;
  bool get noContactDelivery => _noContactDelivery ?? false;
  set noContactDelivery(bool? val) => _noContactDelivery = val;

  bool hasNoContactDelivery() => _noContactDelivery != null;

  // "orderAmount" field.
  double? _orderAmount;
  double get orderAmount => _orderAmount ?? 0.0;
  set orderAmount(double? val) => _orderAmount = val;

  void incrementOrderAmount(double amount) =>
      orderAmount = orderAmount + amount;

  bool hasOrderAmount() => _orderAmount != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  set orderNumber(String? val) => _orderNumber = val;

  bool hasOrderNumber() => _orderNumber != null;

  // "orderPlaced" field.
  String? _orderPlaced;
  String get orderPlaced => _orderPlaced ?? '';
  set orderPlaced(String? val) => _orderPlaced = val;

  bool hasOrderPlaced() => _orderPlaced != null;

  // "orderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  set orderStatus(String? val) => _orderStatus = val;

  bool hasOrderStatus() => _orderStatus != null;

  // "targetDeliveryDate" field.
  String? _targetDeliveryDate;
  String get targetDeliveryDate => _targetDeliveryDate ?? '';
  set targetDeliveryDate(String? val) => _targetDeliveryDate = val;

  bool hasTargetDeliveryDate() => _targetDeliveryDate != null;

  // "leaveWithNeighbour" field.
  bool? _leaveWithNeighbour;
  bool get leaveWithNeighbour => _leaveWithNeighbour ?? false;
  set leaveWithNeighbour(bool? val) => _leaveWithNeighbour = val;

  bool hasLeaveWithNeighbour() => _leaveWithNeighbour != null;

  // "leaveWithNeighbourMessage" field.
  String? _leaveWithNeighbourMessage;
  String get leaveWithNeighbourMessage => _leaveWithNeighbourMessage ?? '';
  set leaveWithNeighbourMessage(String? val) =>
      _leaveWithNeighbourMessage = val;

  bool hasLeaveWithNeighbourMessage() => _leaveWithNeighbourMessage != null;

  static OrderApiResponseStruct fromMap(Map<String, dynamic> data) =>
      OrderApiResponseStruct(
        assignedWarehouse: data['assignedWarehouse'] as String?,
        billingFirstname: data['billingFirstname'] as String?,
        billingSurname: data['billingSurname'] as String?,
        customerEmail: data['customerEmail'] as String?,
        customerPhone: data['customerPhone'] as String?,
        deliveryAddressline1: data['deliveryAddressline1'] as String?,
        deliveryAddressline2: data['deliveryAddressline2'] as String?,
        deliveryCity: data['deliveryCity'] as String?,
        deliveryContact: data['deliveryContact'] as String?,
        deliveryCounty: data['deliveryCounty'] as String?,
        deliveryFirstname: data['deliveryFirstname'] as String?,
        deliveryNote: data['deliveryNote'] as String?,
        deliveryPostcode: data['deliveryPostcode'] as String?,
        deliveryfirstPostcode: data['deliveryfirstPostcode'] as String?,
        deliverySurname: data['deliverySurname'] as String?,
        giftCardFromMessage: data['giftCardFromMessage'] as String?,
        giftCardToMessage: data['giftCardToMessage'] as String?,
        noContactDelivery: data['noContactDelivery'] as bool?,
        orderAmount: castToType<double>(data['orderAmount']),
        orderNumber: data['orderNumber'] as String?,
        orderPlaced: data['orderPlaced'] as String?,
        orderStatus: data['orderStatus'] as String?,
        targetDeliveryDate: data['targetDeliveryDate'] as String?,
        leaveWithNeighbour: data['leaveWithNeighbour'] as bool?,
        leaveWithNeighbourMessage: data['leaveWithNeighbourMessage'] as String?,
      );

  static OrderApiResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? OrderApiResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'assignedWarehouse': _assignedWarehouse,
        'billingFirstname': _billingFirstname,
        'billingSurname': _billingSurname,
        'customerEmail': _customerEmail,
        'customerPhone': _customerPhone,
        'deliveryAddressline1': _deliveryAddressline1,
        'deliveryAddressline2': _deliveryAddressline2,
        'deliveryCity': _deliveryCity,
        'deliveryContact': _deliveryContact,
        'deliveryCounty': _deliveryCounty,
        'deliveryFirstname': _deliveryFirstname,
        'deliveryNote': _deliveryNote,
        'deliveryPostcode': _deliveryPostcode,
        'deliveryfirstPostcode': _deliveryfirstPostcode,
        'deliverySurname': _deliverySurname,
        'giftCardFromMessage': _giftCardFromMessage,
        'giftCardToMessage': _giftCardToMessage,
        'noContactDelivery': _noContactDelivery,
        'orderAmount': _orderAmount,
        'orderNumber': _orderNumber,
        'orderPlaced': _orderPlaced,
        'orderStatus': _orderStatus,
        'targetDeliveryDate': _targetDeliveryDate,
        'leaveWithNeighbour': _leaveWithNeighbour,
        'leaveWithNeighbourMessage': _leaveWithNeighbourMessage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'assignedWarehouse': serializeParam(
          _assignedWarehouse,
          ParamType.String,
        ),
        'billingFirstname': serializeParam(
          _billingFirstname,
          ParamType.String,
        ),
        'billingSurname': serializeParam(
          _billingSurname,
          ParamType.String,
        ),
        'customerEmail': serializeParam(
          _customerEmail,
          ParamType.String,
        ),
        'customerPhone': serializeParam(
          _customerPhone,
          ParamType.String,
        ),
        'deliveryAddressline1': serializeParam(
          _deliveryAddressline1,
          ParamType.String,
        ),
        'deliveryAddressline2': serializeParam(
          _deliveryAddressline2,
          ParamType.String,
        ),
        'deliveryCity': serializeParam(
          _deliveryCity,
          ParamType.String,
        ),
        'deliveryContact': serializeParam(
          _deliveryContact,
          ParamType.String,
        ),
        'deliveryCounty': serializeParam(
          _deliveryCounty,
          ParamType.String,
        ),
        'deliveryFirstname': serializeParam(
          _deliveryFirstname,
          ParamType.String,
        ),
        'deliveryNote': serializeParam(
          _deliveryNote,
          ParamType.String,
        ),
        'deliveryPostcode': serializeParam(
          _deliveryPostcode,
          ParamType.String,
        ),
        'deliveryfirstPostcode': serializeParam(
          _deliveryfirstPostcode,
          ParamType.String,
        ),
        'deliverySurname': serializeParam(
          _deliverySurname,
          ParamType.String,
        ),
        'giftCardFromMessage': serializeParam(
          _giftCardFromMessage,
          ParamType.String,
        ),
        'giftCardToMessage': serializeParam(
          _giftCardToMessage,
          ParamType.String,
        ),
        'noContactDelivery': serializeParam(
          _noContactDelivery,
          ParamType.bool,
        ),
        'orderAmount': serializeParam(
          _orderAmount,
          ParamType.double,
        ),
        'orderNumber': serializeParam(
          _orderNumber,
          ParamType.String,
        ),
        'orderPlaced': serializeParam(
          _orderPlaced,
          ParamType.String,
        ),
        'orderStatus': serializeParam(
          _orderStatus,
          ParamType.String,
        ),
        'targetDeliveryDate': serializeParam(
          _targetDeliveryDate,
          ParamType.String,
        ),
        'leaveWithNeighbour': serializeParam(
          _leaveWithNeighbour,
          ParamType.bool,
        ),
        'leaveWithNeighbourMessage': serializeParam(
          _leaveWithNeighbourMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrderApiResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OrderApiResponseStruct(
        assignedWarehouse: deserializeParam(
          data['assignedWarehouse'],
          ParamType.String,
          false,
        ),
        billingFirstname: deserializeParam(
          data['billingFirstname'],
          ParamType.String,
          false,
        ),
        billingSurname: deserializeParam(
          data['billingSurname'],
          ParamType.String,
          false,
        ),
        customerEmail: deserializeParam(
          data['customerEmail'],
          ParamType.String,
          false,
        ),
        customerPhone: deserializeParam(
          data['customerPhone'],
          ParamType.String,
          false,
        ),
        deliveryAddressline1: deserializeParam(
          data['deliveryAddressline1'],
          ParamType.String,
          false,
        ),
        deliveryAddressline2: deserializeParam(
          data['deliveryAddressline2'],
          ParamType.String,
          false,
        ),
        deliveryCity: deserializeParam(
          data['deliveryCity'],
          ParamType.String,
          false,
        ),
        deliveryContact: deserializeParam(
          data['deliveryContact'],
          ParamType.String,
          false,
        ),
        deliveryCounty: deserializeParam(
          data['deliveryCounty'],
          ParamType.String,
          false,
        ),
        deliveryFirstname: deserializeParam(
          data['deliveryFirstname'],
          ParamType.String,
          false,
        ),
        deliveryNote: deserializeParam(
          data['deliveryNote'],
          ParamType.String,
          false,
        ),
        deliveryPostcode: deserializeParam(
          data['deliveryPostcode'],
          ParamType.String,
          false,
        ),
        deliveryfirstPostcode: deserializeParam(
          data['deliveryfirstPostcode'],
          ParamType.String,
          false,
        ),
        deliverySurname: deserializeParam(
          data['deliverySurname'],
          ParamType.String,
          false,
        ),
        giftCardFromMessage: deserializeParam(
          data['giftCardFromMessage'],
          ParamType.String,
          false,
        ),
        giftCardToMessage: deserializeParam(
          data['giftCardToMessage'],
          ParamType.String,
          false,
        ),
        noContactDelivery: deserializeParam(
          data['noContactDelivery'],
          ParamType.bool,
          false,
        ),
        orderAmount: deserializeParam(
          data['orderAmount'],
          ParamType.double,
          false,
        ),
        orderNumber: deserializeParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
        orderPlaced: deserializeParam(
          data['orderPlaced'],
          ParamType.String,
          false,
        ),
        orderStatus: deserializeParam(
          data['orderStatus'],
          ParamType.String,
          false,
        ),
        targetDeliveryDate: deserializeParam(
          data['targetDeliveryDate'],
          ParamType.String,
          false,
        ),
        leaveWithNeighbour: deserializeParam(
          data['leaveWithNeighbour'],
          ParamType.bool,
          false,
        ),
        leaveWithNeighbourMessage: deserializeParam(
          data['leaveWithNeighbourMessage'],
          ParamType.String,
          false,
        ),
      );

  static OrderApiResponseStruct fromAlgoliaData(Map<String, dynamic> data) =>
      OrderApiResponseStruct(
        assignedWarehouse: convertAlgoliaParam(
          data['assignedWarehouse'],
          ParamType.String,
          false,
        ),
        billingFirstname: convertAlgoliaParam(
          data['billingFirstname'],
          ParamType.String,
          false,
        ),
        billingSurname: convertAlgoliaParam(
          data['billingSurname'],
          ParamType.String,
          false,
        ),
        customerEmail: convertAlgoliaParam(
          data['customerEmail'],
          ParamType.String,
          false,
        ),
        customerPhone: convertAlgoliaParam(
          data['customerPhone'],
          ParamType.String,
          false,
        ),
        deliveryAddressline1: convertAlgoliaParam(
          data['deliveryAddressline1'],
          ParamType.String,
          false,
        ),
        deliveryAddressline2: convertAlgoliaParam(
          data['deliveryAddressline2'],
          ParamType.String,
          false,
        ),
        deliveryCity: convertAlgoliaParam(
          data['deliveryCity'],
          ParamType.String,
          false,
        ),
        deliveryContact: convertAlgoliaParam(
          data['deliveryContact'],
          ParamType.String,
          false,
        ),
        deliveryCounty: convertAlgoliaParam(
          data['deliveryCounty'],
          ParamType.String,
          false,
        ),
        deliveryFirstname: convertAlgoliaParam(
          data['deliveryFirstname'],
          ParamType.String,
          false,
        ),
        deliveryNote: convertAlgoliaParam(
          data['deliveryNote'],
          ParamType.String,
          false,
        ),
        deliveryPostcode: convertAlgoliaParam(
          data['deliveryPostcode'],
          ParamType.String,
          false,
        ),
        deliveryfirstPostcode: convertAlgoliaParam(
          data['deliveryfirstPostcode'],
          ParamType.String,
          false,
        ),
        deliverySurname: convertAlgoliaParam(
          data['deliverySurname'],
          ParamType.String,
          false,
        ),
        giftCardFromMessage: convertAlgoliaParam(
          data['giftCardFromMessage'],
          ParamType.String,
          false,
        ),
        giftCardToMessage: convertAlgoliaParam(
          data['giftCardToMessage'],
          ParamType.String,
          false,
        ),
        noContactDelivery: convertAlgoliaParam(
          data['noContactDelivery'],
          ParamType.bool,
          false,
        ),
        orderAmount: convertAlgoliaParam(
          data['orderAmount'],
          ParamType.double,
          false,
        ),
        orderNumber: convertAlgoliaParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
        orderPlaced: convertAlgoliaParam(
          data['orderPlaced'],
          ParamType.String,
          false,
        ),
        orderStatus: convertAlgoliaParam(
          data['orderStatus'],
          ParamType.String,
          false,
        ),
        targetDeliveryDate: convertAlgoliaParam(
          data['targetDeliveryDate'],
          ParamType.String,
          false,
        ),
        leaveWithNeighbour: convertAlgoliaParam(
          data['leaveWithNeighbour'],
          ParamType.bool,
          false,
        ),
        leaveWithNeighbourMessage: convertAlgoliaParam(
          data['leaveWithNeighbourMessage'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OrderApiResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrderApiResponseStruct &&
        assignedWarehouse == other.assignedWarehouse &&
        billingFirstname == other.billingFirstname &&
        billingSurname == other.billingSurname &&
        customerEmail == other.customerEmail &&
        customerPhone == other.customerPhone &&
        deliveryAddressline1 == other.deliveryAddressline1 &&
        deliveryAddressline2 == other.deliveryAddressline2 &&
        deliveryCity == other.deliveryCity &&
        deliveryContact == other.deliveryContact &&
        deliveryCounty == other.deliveryCounty &&
        deliveryFirstname == other.deliveryFirstname &&
        deliveryNote == other.deliveryNote &&
        deliveryPostcode == other.deliveryPostcode &&
        deliveryfirstPostcode == other.deliveryfirstPostcode &&
        deliverySurname == other.deliverySurname &&
        giftCardFromMessage == other.giftCardFromMessage &&
        giftCardToMessage == other.giftCardToMessage &&
        noContactDelivery == other.noContactDelivery &&
        orderAmount == other.orderAmount &&
        orderNumber == other.orderNumber &&
        orderPlaced == other.orderPlaced &&
        orderStatus == other.orderStatus &&
        targetDeliveryDate == other.targetDeliveryDate &&
        leaveWithNeighbour == other.leaveWithNeighbour &&
        leaveWithNeighbourMessage == other.leaveWithNeighbourMessage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        assignedWarehouse,
        billingFirstname,
        billingSurname,
        customerEmail,
        customerPhone,
        deliveryAddressline1,
        deliveryAddressline2,
        deliveryCity,
        deliveryContact,
        deliveryCounty,
        deliveryFirstname,
        deliveryNote,
        deliveryPostcode,
        deliveryfirstPostcode,
        deliverySurname,
        giftCardFromMessage,
        giftCardToMessage,
        noContactDelivery,
        orderAmount,
        orderNumber,
        orderPlaced,
        orderStatus,
        targetDeliveryDate,
        leaveWithNeighbour,
        leaveWithNeighbourMessage
      ]);
}

OrderApiResponseStruct createOrderApiResponseStruct({
  String? assignedWarehouse,
  String? billingFirstname,
  String? billingSurname,
  String? customerEmail,
  String? customerPhone,
  String? deliveryAddressline1,
  String? deliveryAddressline2,
  String? deliveryCity,
  String? deliveryContact,
  String? deliveryCounty,
  String? deliveryFirstname,
  String? deliveryNote,
  String? deliveryPostcode,
  String? deliveryfirstPostcode,
  String? deliverySurname,
  String? giftCardFromMessage,
  String? giftCardToMessage,
  bool? noContactDelivery,
  double? orderAmount,
  String? orderNumber,
  String? orderPlaced,
  String? orderStatus,
  String? targetDeliveryDate,
  bool? leaveWithNeighbour,
  String? leaveWithNeighbourMessage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderApiResponseStruct(
      assignedWarehouse: assignedWarehouse,
      billingFirstname: billingFirstname,
      billingSurname: billingSurname,
      customerEmail: customerEmail,
      customerPhone: customerPhone,
      deliveryAddressline1: deliveryAddressline1,
      deliveryAddressline2: deliveryAddressline2,
      deliveryCity: deliveryCity,
      deliveryContact: deliveryContact,
      deliveryCounty: deliveryCounty,
      deliveryFirstname: deliveryFirstname,
      deliveryNote: deliveryNote,
      deliveryPostcode: deliveryPostcode,
      deliveryfirstPostcode: deliveryfirstPostcode,
      deliverySurname: deliverySurname,
      giftCardFromMessage: giftCardFromMessage,
      giftCardToMessage: giftCardToMessage,
      noContactDelivery: noContactDelivery,
      orderAmount: orderAmount,
      orderNumber: orderNumber,
      orderPlaced: orderPlaced,
      orderStatus: orderStatus,
      targetDeliveryDate: targetDeliveryDate,
      leaveWithNeighbour: leaveWithNeighbour,
      leaveWithNeighbourMessage: leaveWithNeighbourMessage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrderApiResponseStruct? updateOrderApiResponseStruct(
  OrderApiResponseStruct? orderApiResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orderApiResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrderApiResponseStructData(
  Map<String, dynamic> firestoreData,
  OrderApiResponseStruct? orderApiResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orderApiResponse == null) {
    return;
  }
  if (orderApiResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orderApiResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderApiResponseData =
      getOrderApiResponseFirestoreData(orderApiResponse, forFieldValue);
  final nestedData =
      orderApiResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orderApiResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrderApiResponseFirestoreData(
  OrderApiResponseStruct? orderApiResponse, [
  bool forFieldValue = false,
]) {
  if (orderApiResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orderApiResponse.toMap());

  // Add any Firestore field values
  orderApiResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderApiResponseListFirestoreData(
  List<OrderApiResponseStruct>? orderApiResponses,
) =>
    orderApiResponses
        ?.map((e) => getOrderApiResponseFirestoreData(e, true))
        .toList() ??
    [];
