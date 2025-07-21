import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assignedWarehouse" field.
  String? _assignedWarehouse;
  String get assignedWarehouse => _assignedWarehouse ?? '';
  bool hasAssignedWarehouse() => _assignedWarehouse != null;

  // "billingFirstname" field.
  String? _billingFirstname;
  String get billingFirstname => _billingFirstname ?? '';
  bool hasBillingFirstname() => _billingFirstname != null;

  // "billingSurname" field.
  String? _billingSurname;
  String get billingSurname => _billingSurname ?? '';
  bool hasBillingSurname() => _billingSurname != null;

  // "customerEmail" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  bool hasCustomerEmail() => _customerEmail != null;

  // "customerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "deliveryAddressline1" field.
  String? _deliveryAddressline1;
  String get deliveryAddressline1 => _deliveryAddressline1 ?? '';
  bool hasDeliveryAddressline1() => _deliveryAddressline1 != null;

  // "deliveryAddressline2" field.
  String? _deliveryAddressline2;
  String get deliveryAddressline2 => _deliveryAddressline2 ?? '';
  bool hasDeliveryAddressline2() => _deliveryAddressline2 != null;

  // "deliveryCity" field.
  String? _deliveryCity;
  String get deliveryCity => _deliveryCity ?? '';
  bool hasDeliveryCity() => _deliveryCity != null;

  // "deliveryContact" field.
  String? _deliveryContact;
  String get deliveryContact => _deliveryContact ?? '';
  bool hasDeliveryContact() => _deliveryContact != null;

  // "deliveryCounty" field.
  String? _deliveryCounty;
  String get deliveryCounty => _deliveryCounty ?? '';
  bool hasDeliveryCounty() => _deliveryCounty != null;

  // "deliveryFirstname" field.
  String? _deliveryFirstname;
  String get deliveryFirstname => _deliveryFirstname ?? '';
  bool hasDeliveryFirstname() => _deliveryFirstname != null;

  // "deliveryNote" field.
  String? _deliveryNote;
  String get deliveryNote => _deliveryNote ?? '';
  bool hasDeliveryNote() => _deliveryNote != null;

  // "deliveryPostcode" field.
  String? _deliveryPostcode;
  String get deliveryPostcode => _deliveryPostcode ?? '';
  bool hasDeliveryPostcode() => _deliveryPostcode != null;

  // "deliverySurname" field.
  String? _deliverySurname;
  String get deliverySurname => _deliverySurname ?? '';
  bool hasDeliverySurname() => _deliverySurname != null;

  // "deliveryfirstPostcode" field.
  String? _deliveryfirstPostcode;
  String get deliveryfirstPostcode => _deliveryfirstPostcode ?? '';
  bool hasDeliveryfirstPostcode() => _deliveryfirstPostcode != null;

  // "giftCardFromMessage" field.
  String? _giftCardFromMessage;
  String get giftCardFromMessage => _giftCardFromMessage ?? '';
  bool hasGiftCardFromMessage() => _giftCardFromMessage != null;

  // "giftCardToMessage" field.
  String? _giftCardToMessage;
  String get giftCardToMessage => _giftCardToMessage ?? '';
  bool hasGiftCardToMessage() => _giftCardToMessage != null;

  // "leaveWithNeighbour" field.
  bool? _leaveWithNeighbour;
  bool get leaveWithNeighbour => _leaveWithNeighbour ?? false;
  bool hasLeaveWithNeighbour() => _leaveWithNeighbour != null;

  // "leaveWithNeighbourMessage" field.
  String? _leaveWithNeighbourMessage;
  String get leaveWithNeighbourMessage => _leaveWithNeighbourMessage ?? '';
  bool hasLeaveWithNeighbourMessage() => _leaveWithNeighbourMessage != null;

  // "noContactDelivery" field.
  bool? _noContactDelivery;
  bool get noContactDelivery => _noContactDelivery ?? false;
  bool hasNoContactDelivery() => _noContactDelivery != null;

  // "noOfdeliverableItems" field.
  int? _noOfdeliverableItems;
  int get noOfdeliverableItems => _noOfdeliverableItems ?? 0;
  bool hasNoOfdeliverableItems() => _noOfdeliverableItems != null;

  // "orderAmount" field.
  double? _orderAmount;
  double get orderAmount => _orderAmount ?? 0.0;
  bool hasOrderAmount() => _orderAmount != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "orderPlaced" field.
  DateTime? _orderPlaced;
  DateTime? get orderPlaced => _orderPlaced;
  bool hasOrderPlaced() => _orderPlaced != null;

  // "orderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "targetDeliveryDate" field.
  DateTime? _targetDeliveryDate;
  DateTime? get targetDeliveryDate => _targetDeliveryDate;
  bool hasTargetDeliveryDate() => _targetDeliveryDate != null;

  // "isPickUp" field.
  bool? _isPickUp;
  bool get isPickUp => _isPickUp ?? false;
  bool hasIsPickUp() => _isPickUp != null;

  // "chasedDate" field.
  DateTime? _chasedDate;
  DateTime? get chasedDate => _chasedDate;
  bool hasChasedDate() => _chasedDate != null;

  // "chasedBy" field.
  String? _chasedBy;
  String get chasedBy => _chasedBy ?? '';
  bool hasChasedBy() => _chasedBy != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "updateDate" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "isImported" field.
  bool? _isImported;
  bool get isImported => _isImported ?? false;
  bool hasIsImported() => _isImported != null;

  void _initializeFields() {
    _assignedWarehouse = snapshotData['assignedWarehouse'] as String?;
    _billingFirstname = snapshotData['billingFirstname'] as String?;
    _billingSurname = snapshotData['billingSurname'] as String?;
    _customerEmail = snapshotData['customerEmail'] as String?;
    _customerPhone = snapshotData['customerPhone'] as String?;
    _deliveryAddressline1 = snapshotData['deliveryAddressline1'] as String?;
    _deliveryAddressline2 = snapshotData['deliveryAddressline2'] as String?;
    _deliveryCity = snapshotData['deliveryCity'] as String?;
    _deliveryContact = snapshotData['deliveryContact'] as String?;
    _deliveryCounty = snapshotData['deliveryCounty'] as String?;
    _deliveryFirstname = snapshotData['deliveryFirstname'] as String?;
    _deliveryNote = snapshotData['deliveryNote'] as String?;
    _deliveryPostcode = snapshotData['deliveryPostcode'] as String?;
    _deliverySurname = snapshotData['deliverySurname'] as String?;
    _deliveryfirstPostcode = snapshotData['deliveryfirstPostcode'] as String?;
    _giftCardFromMessage = snapshotData['giftCardFromMessage'] as String?;
    _giftCardToMessage = snapshotData['giftCardToMessage'] as String?;
    _leaveWithNeighbour = snapshotData['leaveWithNeighbour'] as bool?;
    _leaveWithNeighbourMessage =
        snapshotData['leaveWithNeighbourMessage'] as String?;
    _noContactDelivery = snapshotData['noContactDelivery'] as bool?;
    _noOfdeliverableItems =
        castToType<int>(snapshotData['noOfdeliverableItems']);
    _orderAmount = castToType<double>(snapshotData['orderAmount']);
    _orderId = snapshotData['orderId'] as String?;
    _orderNumber = snapshotData['orderNumber'] as String?;
    _orderPlaced = snapshotData['orderPlaced'] as DateTime?;
    _orderStatus = snapshotData['orderStatus'] as String?;
    _targetDeliveryDate = snapshotData['targetDeliveryDate'] as DateTime?;
    _isPickUp = snapshotData['isPickUp'] as bool?;
    _chasedDate = snapshotData['chasedDate'] as DateTime?;
    _chasedBy = snapshotData['chasedBy'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _isImported = snapshotData['isImported'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
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
  String? deliverySurname,
  String? deliveryfirstPostcode,
  String? giftCardFromMessage,
  String? giftCardToMessage,
  bool? leaveWithNeighbour,
  String? leaveWithNeighbourMessage,
  bool? noContactDelivery,
  int? noOfdeliverableItems,
  double? orderAmount,
  String? orderId,
  String? orderNumber,
  DateTime? orderPlaced,
  String? orderStatus,
  DateTime? targetDeliveryDate,
  bool? isPickUp,
  DateTime? chasedDate,
  String? chasedBy,
  bool? isActive,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? notes,
  String? warehouseId,
  bool? isImported,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignedWarehouse': assignedWarehouse,
      'billingFirstname': billingFirstname,
      'billingSurname': billingSurname,
      'customerEmail': customerEmail,
      'customerPhone': customerPhone,
      'deliveryAddressline1': deliveryAddressline1,
      'deliveryAddressline2': deliveryAddressline2,
      'deliveryCity': deliveryCity,
      'deliveryContact': deliveryContact,
      'deliveryCounty': deliveryCounty,
      'deliveryFirstname': deliveryFirstname,
      'deliveryNote': deliveryNote,
      'deliveryPostcode': deliveryPostcode,
      'deliverySurname': deliverySurname,
      'deliveryfirstPostcode': deliveryfirstPostcode,
      'giftCardFromMessage': giftCardFromMessage,
      'giftCardToMessage': giftCardToMessage,
      'leaveWithNeighbour': leaveWithNeighbour,
      'leaveWithNeighbourMessage': leaveWithNeighbourMessage,
      'noContactDelivery': noContactDelivery,
      'noOfdeliverableItems': noOfdeliverableItems,
      'orderAmount': orderAmount,
      'orderId': orderId,
      'orderNumber': orderNumber,
      'orderPlaced': orderPlaced,
      'orderStatus': orderStatus,
      'targetDeliveryDate': targetDeliveryDate,
      'isPickUp': isPickUp,
      'chasedDate': chasedDate,
      'chasedBy': chasedBy,
      'isActive': isActive,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'notes': notes,
      'warehouseId': warehouseId,
      'isImported': isImported,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.assignedWarehouse == e2?.assignedWarehouse &&
        e1?.billingFirstname == e2?.billingFirstname &&
        e1?.billingSurname == e2?.billingSurname &&
        e1?.customerEmail == e2?.customerEmail &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.deliveryAddressline1 == e2?.deliveryAddressline1 &&
        e1?.deliveryAddressline2 == e2?.deliveryAddressline2 &&
        e1?.deliveryCity == e2?.deliveryCity &&
        e1?.deliveryContact == e2?.deliveryContact &&
        e1?.deliveryCounty == e2?.deliveryCounty &&
        e1?.deliveryFirstname == e2?.deliveryFirstname &&
        e1?.deliveryNote == e2?.deliveryNote &&
        e1?.deliveryPostcode == e2?.deliveryPostcode &&
        e1?.deliverySurname == e2?.deliverySurname &&
        e1?.deliveryfirstPostcode == e2?.deliveryfirstPostcode &&
        e1?.giftCardFromMessage == e2?.giftCardFromMessage &&
        e1?.giftCardToMessage == e2?.giftCardToMessage &&
        e1?.leaveWithNeighbour == e2?.leaveWithNeighbour &&
        e1?.leaveWithNeighbourMessage == e2?.leaveWithNeighbourMessage &&
        e1?.noContactDelivery == e2?.noContactDelivery &&
        e1?.noOfdeliverableItems == e2?.noOfdeliverableItems &&
        e1?.orderAmount == e2?.orderAmount &&
        e1?.orderId == e2?.orderId &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.orderPlaced == e2?.orderPlaced &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.targetDeliveryDate == e2?.targetDeliveryDate &&
        e1?.isPickUp == e2?.isPickUp &&
        e1?.chasedDate == e2?.chasedDate &&
        e1?.chasedBy == e2?.chasedBy &&
        e1?.isActive == e2?.isActive &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.notes == e2?.notes &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.isImported == e2?.isImported;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.assignedWarehouse,
        e?.billingFirstname,
        e?.billingSurname,
        e?.customerEmail,
        e?.customerPhone,
        e?.deliveryAddressline1,
        e?.deliveryAddressline2,
        e?.deliveryCity,
        e?.deliveryContact,
        e?.deliveryCounty,
        e?.deliveryFirstname,
        e?.deliveryNote,
        e?.deliveryPostcode,
        e?.deliverySurname,
        e?.deliveryfirstPostcode,
        e?.giftCardFromMessage,
        e?.giftCardToMessage,
        e?.leaveWithNeighbour,
        e?.leaveWithNeighbourMessage,
        e?.noContactDelivery,
        e?.noOfdeliverableItems,
        e?.orderAmount,
        e?.orderId,
        e?.orderNumber,
        e?.orderPlaced,
        e?.orderStatus,
        e?.targetDeliveryDate,
        e?.isPickUp,
        e?.chasedDate,
        e?.chasedBy,
        e?.isActive,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.notes,
        e?.warehouseId,
        e?.isImported
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
