import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveriesRecord extends FirestoreRecord {
  DeliveriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "batchRef" field.
  DocumentReference? _batchRef;
  DocumentReference? get batchRef => _batchRef;
  bool hasBatchRef() => _batchRef != null;

  // "chaseDeliveryMessage" field.
  String? _chaseDeliveryMessage;
  String get chaseDeliveryMessage => _chaseDeliveryMessage ?? '';
  bool hasChaseDeliveryMessage() => _chaseDeliveryMessage != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "deleteDate" field.
  DateTime? _deleteDate;
  DateTime? get deleteDate => _deleteDate;
  bool hasDeleteDate() => _deleteDate != null;

  // "deletedByRef" field.
  DocumentReference? _deletedByRef;
  DocumentReference? get deletedByRef => _deletedByRef;
  bool hasDeletedByRef() => _deletedByRef != null;

  // "deliveredDate" field.
  DateTime? _deliveredDate;
  DateTime? get deliveredDate => _deliveredDate;
  bool hasDeliveredDate() => _deliveredDate != null;

  // "deliveryAddress1" field.
  String? _deliveryAddress1;
  String get deliveryAddress1 => _deliveryAddress1 ?? '';
  bool hasDeliveryAddress1() => _deliveryAddress1 != null;

  // "deliveryAddress2" field.
  String? _deliveryAddress2;
  String get deliveryAddress2 => _deliveryAddress2 ?? '';
  bool hasDeliveryAddress2() => _deliveryAddress2 != null;

  // "deliveryCity" field.
  String? _deliveryCity;
  String get deliveryCity => _deliveryCity ?? '';
  bool hasDeliveryCity() => _deliveryCity != null;

  // "deliveryContactNo" field.
  String? _deliveryContactNo;
  String get deliveryContactNo => _deliveryContactNo ?? '';
  bool hasDeliveryContactNo() => _deliveryContactNo != null;

  // "deliveryCounty" field.
  String? _deliveryCounty;
  String get deliveryCounty => _deliveryCounty ?? '';
  bool hasDeliveryCounty() => _deliveryCounty != null;

  // "deliveryEmail" field.
  String? _deliveryEmail;
  String get deliveryEmail => _deliveryEmail ?? '';
  bool hasDeliveryEmail() => _deliveryEmail != null;

  // "deliveryFirstName" field.
  String? _deliveryFirstName;
  String get deliveryFirstName => _deliveryFirstName ?? '';
  bool hasDeliveryFirstName() => _deliveryFirstName != null;

  // "deliveryId" field.
  String? _deliveryId;
  String get deliveryId => _deliveryId ?? '';
  bool hasDeliveryId() => _deliveryId != null;

  // "deliveryItems" field.
  List<DocumentReference>? _deliveryItems;
  List<DocumentReference> get deliveryItems => _deliveryItems ?? const [];
  bool hasDeliveryItems() => _deliveryItems != null;

  // "deliveryPostcode" field.
  String? _deliveryPostcode;
  String get deliveryPostcode => _deliveryPostcode ?? '';
  bool hasDeliveryPostcode() => _deliveryPostcode != null;

  // "deliveryProofImageUrls" field.
  List<String>? _deliveryProofImageUrls;
  List<String> get deliveryProofImageUrls =>
      _deliveryProofImageUrls ?? const [];
  bool hasDeliveryProofImageUrls() => _deliveryProofImageUrls != null;

  // "deliverySurname" field.
  String? _deliverySurname;
  String get deliverySurname => _deliverySurname ?? '';
  bool hasDeliverySurname() => _deliverySurname != null;

  // "deliveryNotes" field.
  List<String>? _deliveryNotes;
  List<String> get deliveryNotes => _deliveryNotes ?? const [];
  bool hasDeliveryNotes() => _deliveryNotes != null;

  // "eSignatureUrl" field.
  String? _eSignatureUrl;
  String get eSignatureUrl => _eSignatureUrl ?? '';
  bool hasESignatureUrl() => _eSignatureUrl != null;

  // "giftCardFromMessage" field.
  String? _giftCardFromMessage;
  String get giftCardFromMessage => _giftCardFromMessage ?? '';
  bool hasGiftCardFromMessage() => _giftCardFromMessage != null;

  // "giftCardToMessage" field.
  String? _giftCardToMessage;
  String get giftCardToMessage => _giftCardToMessage ?? '';
  bool hasGiftCardToMessage() => _giftCardToMessage != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "isFailed" field.
  bool? _isFailed;
  bool get isFailed => _isFailed ?? false;
  bool hasIsFailed() => _isFailed != null;

  // "isNoContactDelivery" field.
  bool? _isNoContactDelivery;
  bool get isNoContactDelivery => _isNoContactDelivery ?? false;
  bool hasIsNoContactDelivery() => _isNoContactDelivery != null;

  // "isSla" field.
  bool? _isSla;
  bool get isSla => _isSla ?? false;
  bool hasIsSla() => _isSla != null;

  // "canLeaveWithNeighbor" field.
  bool? _canLeaveWithNeighbor;
  bool get canLeaveWithNeighbor => _canLeaveWithNeighbor ?? false;
  bool hasCanLeaveWithNeighbor() => _canLeaveWithNeighbor != null;

  // "orderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "targetDeliveryDate" field.
  DateTime? _targetDeliveryDate;
  DateTime? get targetDeliveryDate => _targetDeliveryDate;
  bool hasTargetDeliveryDate() => _targetDeliveryDate != null;

  // "total_orderAmount" field.
  double? _totalOrderAmount;
  double get totalOrderAmount => _totalOrderAmount ?? 0.0;
  bool hasTotalOrderAmount() => _totalOrderAmount != null;

  // "total_qty" field.
  int? _totalQty;
  int get totalQty => _totalQty ?? 0;
  bool hasTotalQty() => _totalQty != null;

  // "volunteerName" field.
  String? _volunteerName;
  String get volunteerName => _volunteerName ?? '';
  bool hasVolunteerName() => _volunteerName != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "warehouseName" field.
  String? _warehouseName;
  String get warehouseName => _warehouseName ?? '';
  bool hasWarehouseName() => _warehouseName != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "customerPhoneNo" field.
  String? _customerPhoneNo;
  String get customerPhoneNo => _customerPhoneNo ?? '';
  bool hasCustomerPhoneNo() => _customerPhoneNo != null;

  // "billingFirstName" field.
  String? _billingFirstName;
  String get billingFirstName => _billingFirstName ?? '';
  bool hasBillingFirstName() => _billingFirstName != null;

  // "billingLastName" field.
  String? _billingLastName;
  String get billingLastName => _billingLastName ?? '';
  bool hasBillingLastName() => _billingLastName != null;

  // "orderNotes" field.
  String? _orderNotes;
  String get orderNotes => _orderNotes ?? '';
  bool hasOrderNotes() => _orderNotes != null;

  // "leaveWithNeighborMessage" field.
  String? _leaveWithNeighborMessage;
  String get leaveWithNeighborMessage => _leaveWithNeighborMessage ?? '';
  bool hasLeaveWithNeighborMessage() => _leaveWithNeighborMessage != null;

  // "createdDateTimeStamp" field.
  int? _createdDateTimeStamp;
  int get createdDateTimeStamp => _createdDateTimeStamp ?? 0;
  bool hasCreatedDateTimeStamp() => _createdDateTimeStamp != null;

  // "deliveredDateTimeStamp" field.
  int? _deliveredDateTimeStamp;
  int get deliveredDateTimeStamp => _deliveredDateTimeStamp ?? 0;
  bool hasDeliveredDateTimeStamp() => _deliveredDateTimeStamp != null;

  // "orderDateTimeStamp" field.
  int? _orderDateTimeStamp;
  int get orderDateTimeStamp => _orderDateTimeStamp ?? 0;
  bool hasOrderDateTimeStamp() => _orderDateTimeStamp != null;

  // "targetDeliveryDateTimeStamp" field.
  int? _targetDeliveryDateTimeStamp;
  int get targetDeliveryDateTimeStamp => _targetDeliveryDateTimeStamp ?? 0;
  bool hasTargetDeliveryDateTimeStamp() => _targetDeliveryDateTimeStamp != null;

  // "coordinates" field.
  LatLng? _coordinates;
  LatLng? get coordinates => _coordinates;
  bool hasCoordinates() => _coordinates != null;

  // "batchId" field.
  String? _batchId;
  String get batchId => _batchId ?? '';
  bool hasBatchId() => _batchId != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "isPickUp" field.
  bool? _isPickUp;
  bool get isPickUp => _isPickUp ?? false;
  bool hasIsPickUp() => _isPickUp != null;

  // "forcedDelivery" field.
  String? _forcedDelivery;
  String get forcedDelivery => _forcedDelivery ?? '';
  bool hasForcedDelivery() => _forcedDelivery != null;

  // "volunteerId" field.
  String? _volunteerId;
  String get volunteerId => _volunteerId ?? '';
  bool hasVolunteerId() => _volunteerId != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "deliveryItemsIds" field.
  List<String>? _deliveryItemsIds;
  List<String> get deliveryItemsIds => _deliveryItemsIds ?? const [];
  bool hasDeliveryItemsIds() => _deliveryItemsIds != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "updateDate" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _batchRef = snapshotData['batchRef'] as DocumentReference?;
    _chaseDeliveryMessage = snapshotData['chaseDeliveryMessage'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _deleteDate = snapshotData['deleteDate'] as DateTime?;
    _deletedByRef = snapshotData['deletedByRef'] as DocumentReference?;
    _deliveredDate = snapshotData['deliveredDate'] as DateTime?;
    _deliveryAddress1 = snapshotData['deliveryAddress1'] as String?;
    _deliveryAddress2 = snapshotData['deliveryAddress2'] as String?;
    _deliveryCity = snapshotData['deliveryCity'] as String?;
    _deliveryContactNo = snapshotData['deliveryContactNo'] as String?;
    _deliveryCounty = snapshotData['deliveryCounty'] as String?;
    _deliveryEmail = snapshotData['deliveryEmail'] as String?;
    _deliveryFirstName = snapshotData['deliveryFirstName'] as String?;
    _deliveryId = snapshotData['deliveryId'] as String?;
    _deliveryItems = getDataList(snapshotData['deliveryItems']);
    _deliveryPostcode = snapshotData['deliveryPostcode'] as String?;
    _deliveryProofImageUrls =
        getDataList(snapshotData['deliveryProofImageUrls']);
    _deliverySurname = snapshotData['deliverySurname'] as String?;
    _deliveryNotes = getDataList(snapshotData['deliveryNotes']);
    _eSignatureUrl = snapshotData['eSignatureUrl'] as String?;
    _giftCardFromMessage = snapshotData['giftCardFromMessage'] as String?;
    _giftCardToMessage = snapshotData['giftCardToMessage'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
    _isFailed = snapshotData['isFailed'] as bool?;
    _isNoContactDelivery = snapshotData['isNoContactDelivery'] as bool?;
    _isSla = snapshotData['isSla'] as bool?;
    _canLeaveWithNeighbor = snapshotData['canLeaveWithNeighbor'] as bool?;
    _orderDate = snapshotData['orderDate'] as DateTime?;
    _orderNumber = snapshotData['orderNumber'] as String?;
    _targetDeliveryDate = snapshotData['targetDeliveryDate'] as DateTime?;
    _totalOrderAmount = castToType<double>(snapshotData['total_orderAmount']);
    _totalQty = castToType<int>(snapshotData['total_qty']);
    _volunteerName = snapshotData['volunteerName'] as String?;
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _warehouseName = snapshotData['warehouseName'] as String?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _customerPhoneNo = snapshotData['customerPhoneNo'] as String?;
    _billingFirstName = snapshotData['billingFirstName'] as String?;
    _billingLastName = snapshotData['billingLastName'] as String?;
    _orderNotes = snapshotData['orderNotes'] as String?;
    _leaveWithNeighborMessage =
        snapshotData['leaveWithNeighborMessage'] as String?;
    _createdDateTimeStamp =
        castToType<int>(snapshotData['createdDateTimeStamp']);
    _deliveredDateTimeStamp =
        castToType<int>(snapshotData['deliveredDateTimeStamp']);
    _orderDateTimeStamp = castToType<int>(snapshotData['orderDateTimeStamp']);
    _targetDeliveryDateTimeStamp =
        castToType<int>(snapshotData['targetDeliveryDateTimeStamp']);
    _coordinates = snapshotData['coordinates'] as LatLng?;
    _batchId = snapshotData['batchId'] as String?;
    _orderId = snapshotData['orderId'] as String?;
    _isPickUp = snapshotData['isPickUp'] as bool?;
    _forcedDelivery = snapshotData['forcedDelivery'] as String?;
    _volunteerId = snapshotData['volunteerId'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _deliveryItemsIds = getDataList(snapshotData['deliveryItemsIds']);
    _createdBy = snapshotData['createdBy'] as String?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deliveries');

  static Stream<DeliveriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveriesRecord.fromSnapshot(s));

  static Future<DeliveriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveriesRecord.fromSnapshot(s));

  static DeliveriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveriesRecordData({
  DocumentReference? batchRef,
  String? chaseDeliveryMessage,
  DateTime? createdDate,
  DateTime? deleteDate,
  DocumentReference? deletedByRef,
  DateTime? deliveredDate,
  String? deliveryAddress1,
  String? deliveryAddress2,
  String? deliveryCity,
  String? deliveryContactNo,
  String? deliveryCounty,
  String? deliveryEmail,
  String? deliveryFirstName,
  String? deliveryId,
  String? deliveryPostcode,
  String? deliverySurname,
  String? eSignatureUrl,
  String? giftCardFromMessage,
  String? giftCardToMessage,
  bool? isActive,
  bool? isDeleted,
  bool? isDelivered,
  bool? isFailed,
  bool? isNoContactDelivery,
  bool? isSla,
  bool? canLeaveWithNeighbor,
  DateTime? orderDate,
  String? orderNumber,
  DateTime? targetDeliveryDate,
  double? totalOrderAmount,
  int? totalQty,
  String? volunteerName,
  DocumentReference? volunteerRef,
  String? warehouseName,
  DocumentReference? warehouseRef,
  String? customerPhoneNo,
  String? billingFirstName,
  String? billingLastName,
  String? orderNotes,
  String? leaveWithNeighborMessage,
  int? createdDateTimeStamp,
  int? deliveredDateTimeStamp,
  int? orderDateTimeStamp,
  int? targetDeliveryDateTimeStamp,
  LatLng? coordinates,
  String? batchId,
  String? orderId,
  bool? isPickUp,
  String? forcedDelivery,
  String? volunteerId,
  String? warehouseId,
  String? createdBy,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'batchRef': batchRef,
      'chaseDeliveryMessage': chaseDeliveryMessage,
      'createdDate': createdDate,
      'deleteDate': deleteDate,
      'deletedByRef': deletedByRef,
      'deliveredDate': deliveredDate,
      'deliveryAddress1': deliveryAddress1,
      'deliveryAddress2': deliveryAddress2,
      'deliveryCity': deliveryCity,
      'deliveryContactNo': deliveryContactNo,
      'deliveryCounty': deliveryCounty,
      'deliveryEmail': deliveryEmail,
      'deliveryFirstName': deliveryFirstName,
      'deliveryId': deliveryId,
      'deliveryPostcode': deliveryPostcode,
      'deliverySurname': deliverySurname,
      'eSignatureUrl': eSignatureUrl,
      'giftCardFromMessage': giftCardFromMessage,
      'giftCardToMessage': giftCardToMessage,
      'isActive': isActive,
      'isDeleted': isDeleted,
      'isDelivered': isDelivered,
      'isFailed': isFailed,
      'isNoContactDelivery': isNoContactDelivery,
      'isSla': isSla,
      'canLeaveWithNeighbor': canLeaveWithNeighbor,
      'orderDate': orderDate,
      'orderNumber': orderNumber,
      'targetDeliveryDate': targetDeliveryDate,
      'total_orderAmount': totalOrderAmount,
      'total_qty': totalQty,
      'volunteerName': volunteerName,
      'volunteerRef': volunteerRef,
      'warehouseName': warehouseName,
      'warehouseRef': warehouseRef,
      'customerPhoneNo': customerPhoneNo,
      'billingFirstName': billingFirstName,
      'billingLastName': billingLastName,
      'orderNotes': orderNotes,
      'leaveWithNeighborMessage': leaveWithNeighborMessage,
      'createdDateTimeStamp': createdDateTimeStamp,
      'deliveredDateTimeStamp': deliveredDateTimeStamp,
      'orderDateTimeStamp': orderDateTimeStamp,
      'targetDeliveryDateTimeStamp': targetDeliveryDateTimeStamp,
      'coordinates': coordinates,
      'batchId': batchId,
      'orderId': orderId,
      'isPickUp': isPickUp,
      'forcedDelivery': forcedDelivery,
      'volunteerId': volunteerId,
      'warehouseId': warehouseId,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveriesRecordDocumentEquality implements Equality<DeliveriesRecord> {
  const DeliveriesRecordDocumentEquality();

  @override
  bool equals(DeliveriesRecord? e1, DeliveriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.batchRef == e2?.batchRef &&
        e1?.chaseDeliveryMessage == e2?.chaseDeliveryMessage &&
        e1?.createdDate == e2?.createdDate &&
        e1?.deleteDate == e2?.deleteDate &&
        e1?.deletedByRef == e2?.deletedByRef &&
        e1?.deliveredDate == e2?.deliveredDate &&
        e1?.deliveryAddress1 == e2?.deliveryAddress1 &&
        e1?.deliveryAddress2 == e2?.deliveryAddress2 &&
        e1?.deliveryCity == e2?.deliveryCity &&
        e1?.deliveryContactNo == e2?.deliveryContactNo &&
        e1?.deliveryCounty == e2?.deliveryCounty &&
        e1?.deliveryEmail == e2?.deliveryEmail &&
        e1?.deliveryFirstName == e2?.deliveryFirstName &&
        e1?.deliveryId == e2?.deliveryId &&
        listEquality.equals(e1?.deliveryItems, e2?.deliveryItems) &&
        e1?.deliveryPostcode == e2?.deliveryPostcode &&
        listEquality.equals(
            e1?.deliveryProofImageUrls, e2?.deliveryProofImageUrls) &&
        e1?.deliverySurname == e2?.deliverySurname &&
        listEquality.equals(e1?.deliveryNotes, e2?.deliveryNotes) &&
        e1?.eSignatureUrl == e2?.eSignatureUrl &&
        e1?.giftCardFromMessage == e2?.giftCardFromMessage &&
        e1?.giftCardToMessage == e2?.giftCardToMessage &&
        e1?.isActive == e2?.isActive &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.isFailed == e2?.isFailed &&
        e1?.isNoContactDelivery == e2?.isNoContactDelivery &&
        e1?.isSla == e2?.isSla &&
        e1?.canLeaveWithNeighbor == e2?.canLeaveWithNeighbor &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.targetDeliveryDate == e2?.targetDeliveryDate &&
        e1?.totalOrderAmount == e2?.totalOrderAmount &&
        e1?.totalQty == e2?.totalQty &&
        e1?.volunteerName == e2?.volunteerName &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.warehouseName == e2?.warehouseName &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.customerPhoneNo == e2?.customerPhoneNo &&
        e1?.billingFirstName == e2?.billingFirstName &&
        e1?.billingLastName == e2?.billingLastName &&
        e1?.orderNotes == e2?.orderNotes &&
        e1?.leaveWithNeighborMessage == e2?.leaveWithNeighborMessage &&
        e1?.createdDateTimeStamp == e2?.createdDateTimeStamp &&
        e1?.deliveredDateTimeStamp == e2?.deliveredDateTimeStamp &&
        e1?.orderDateTimeStamp == e2?.orderDateTimeStamp &&
        e1?.targetDeliveryDateTimeStamp == e2?.targetDeliveryDateTimeStamp &&
        e1?.coordinates == e2?.coordinates &&
        e1?.batchId == e2?.batchId &&
        e1?.orderId == e2?.orderId &&
        e1?.isPickUp == e2?.isPickUp &&
        e1?.forcedDelivery == e2?.forcedDelivery &&
        e1?.volunteerId == e2?.volunteerId &&
        e1?.warehouseId == e2?.warehouseId &&
        listEquality.equals(e1?.deliveryItemsIds, e2?.deliveryItemsIds) &&
        e1?.createdBy == e2?.createdBy &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(DeliveriesRecord? e) => const ListEquality().hash([
        e?.batchRef,
        e?.chaseDeliveryMessage,
        e?.createdDate,
        e?.deleteDate,
        e?.deletedByRef,
        e?.deliveredDate,
        e?.deliveryAddress1,
        e?.deliveryAddress2,
        e?.deliveryCity,
        e?.deliveryContactNo,
        e?.deliveryCounty,
        e?.deliveryEmail,
        e?.deliveryFirstName,
        e?.deliveryId,
        e?.deliveryItems,
        e?.deliveryPostcode,
        e?.deliveryProofImageUrls,
        e?.deliverySurname,
        e?.deliveryNotes,
        e?.eSignatureUrl,
        e?.giftCardFromMessage,
        e?.giftCardToMessage,
        e?.isActive,
        e?.isDeleted,
        e?.isDelivered,
        e?.isFailed,
        e?.isNoContactDelivery,
        e?.isSla,
        e?.canLeaveWithNeighbor,
        e?.orderDate,
        e?.orderNumber,
        e?.targetDeliveryDate,
        e?.totalOrderAmount,
        e?.totalQty,
        e?.volunteerName,
        e?.volunteerRef,
        e?.warehouseName,
        e?.warehouseRef,
        e?.customerPhoneNo,
        e?.billingFirstName,
        e?.billingLastName,
        e?.orderNotes,
        e?.leaveWithNeighborMessage,
        e?.createdDateTimeStamp,
        e?.deliveredDateTimeStamp,
        e?.orderDateTimeStamp,
        e?.targetDeliveryDateTimeStamp,
        e?.coordinates,
        e?.batchId,
        e?.orderId,
        e?.isPickUp,
        e?.forcedDelivery,
        e?.volunteerId,
        e?.warehouseId,
        e?.deliveryItemsIds,
        e?.createdBy,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveriesRecord;
}
