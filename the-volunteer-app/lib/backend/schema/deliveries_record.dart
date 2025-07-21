import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveriesRecord extends FirestoreRecord {
  DeliveriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "deliveryId" field.
  String? _deliveryId;
  String get deliveryId => _deliveryId ?? '';
  bool hasDeliveryId() => _deliveryId != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "deliveryProof" field.
  String? _deliveryProof;
  String get deliveryProof => _deliveryProof ?? '';
  bool hasDeliveryProof() => _deliveryProof != null;

  // "eSignature" field.
  String? _eSignature;
  String get eSignature => _eSignature ?? '';
  bool hasESignature() => _eSignature != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "total_orderAmount" field.
  double? _totalOrderAmount;
  double get totalOrderAmount => _totalOrderAmount ?? 0.0;
  bool hasTotalOrderAmount() => _totalOrderAmount != null;

  // "warehouseName" field.
  String? _warehouseName;
  String get warehouseName => _warehouseName ?? '';
  bool hasWarehouseName() => _warehouseName != null;

  // "volunteerName" field.
  String? _volunteerName;
  String get volunteerName => _volunteerName ?? '';
  bool hasVolunteerName() => _volunteerName != null;

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

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

  // "deliveryCounty" field.
  String? _deliveryCounty;
  String get deliveryCounty => _deliveryCounty ?? '';
  bool hasDeliveryCounty() => _deliveryCounty != null;

  // "deliveryPostcode" field.
  String? _deliveryPostcode;
  String get deliveryPostcode => _deliveryPostcode ?? '';
  bool hasDeliveryPostcode() => _deliveryPostcode != null;

  // "deliveryItems" field.
  List<DocumentReference>? _deliveryItems;
  List<DocumentReference> get deliveryItems => _deliveryItems ?? const [];
  bool hasDeliveryItems() => _deliveryItems != null;

  // "deliveryNotes" field.
  List<String>? _deliveryNotes;
  List<String> get deliveryNotes => _deliveryNotes ?? const [];
  bool hasDeliveryNotes() => _deliveryNotes != null;

  // "deliveryEmail" field.
  String? _deliveryEmail;
  String get deliveryEmail => _deliveryEmail ?? '';
  bool hasDeliveryEmail() => _deliveryEmail != null;

  // "deliveryFirstName" field.
  String? _deliveryFirstName;
  String get deliveryFirstName => _deliveryFirstName ?? '';
  bool hasDeliveryFirstName() => _deliveryFirstName != null;

  // "deliverySurname" field.
  String? _deliverySurname;
  String get deliverySurname => _deliverySurname ?? '';
  bool hasDeliverySurname() => _deliverySurname != null;

  // "deliveryContactNo" field.
  String? _deliveryContactNo;
  String get deliveryContactNo => _deliveryContactNo ?? '';
  bool hasDeliveryContactNo() => _deliveryContactNo != null;

  // "giftCardFromMessage" field.
  String? _giftCardFromMessage;
  String get giftCardFromMessage => _giftCardFromMessage ?? '';
  bool hasGiftCardFromMessage() => _giftCardFromMessage != null;

  // "giftCardToMessage" field.
  String? _giftCardToMessage;
  String get giftCardToMessage => _giftCardToMessage ?? '';
  bool hasGiftCardToMessage() => _giftCardToMessage != null;

  // "targetDeliveryDate" field.
  DateTime? _targetDeliveryDate;
  DateTime? get targetDeliveryDate => _targetDeliveryDate;
  bool hasTargetDeliveryDate() => _targetDeliveryDate != null;

  // "isSla" field.
  bool? _isSla;
  bool get isSla => _isSla ?? false;
  bool hasIsSla() => _isSla != null;

  // "chaseDeliveryMessage" field.
  List<String>? _chaseDeliveryMessage;
  List<String> get chaseDeliveryMessage => _chaseDeliveryMessage ?? const [];
  bool hasChaseDeliveryMessage() => _chaseDeliveryMessage != null;

  // "leaveWithNeighbor" field.
  bool? _leaveWithNeighbor;
  bool get leaveWithNeighbor => _leaveWithNeighbor ?? false;
  bool hasLeaveWithNeighbor() => _leaveWithNeighbor != null;

  // "isNoContactDelivery" field.
  bool? _isNoContactDelivery;
  bool get isNoContactDelivery => _isNoContactDelivery ?? false;
  bool hasIsNoContactDelivery() => _isNoContactDelivery != null;

  // "total_qty" field.
  int? _totalQty;
  int get totalQty => _totalQty ?? 0;
  bool hasTotalQty() => _totalQty != null;

  // "isFailed" field.
  bool? _isFailed;
  bool get isFailed => _isFailed ?? false;
  bool hasIsFailed() => _isFailed != null;

  // "orderRef" field.
  DocumentReference? _orderRef;
  DocumentReference? get orderRef => _orderRef;
  bool hasOrderRef() => _orderRef != null;

  // "orderDate" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "batchRef" field.
  DocumentReference? _batchRef;
  DocumentReference? get batchRef => _batchRef;
  bool hasBatchRef() => _batchRef != null;

  // "deliveredDate" field.
  DateTime? _deliveredDate;
  DateTime? get deliveredDate => _deliveredDate;
  bool hasDeliveredDate() => _deliveredDate != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "deleteDate" field.
  DateTime? _deleteDate;
  DateTime? get deleteDate => _deleteDate;
  bool hasDeleteDate() => _deleteDate != null;

  // "deletedBy" field.
  DocumentReference? _deletedBy;
  DocumentReference? get deletedBy => _deletedBy;
  bool hasDeletedBy() => _deletedBy != null;

  void _initializeFields() {
    _deliveryId = snapshotData['deliveryId'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _deliveryProof = snapshotData['deliveryProof'] as String?;
    _eSignature = snapshotData['eSignature'] as String?;
    _orderNumber = snapshotData['orderNumber'] as String?;
    _totalOrderAmount = castToType<double>(snapshotData['total_orderAmount']);
    _warehouseName = snapshotData['warehouseName'] as String?;
    _volunteerName = snapshotData['volunteerName'] as String?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _deliveryAddress1 = snapshotData['deliveryAddress1'] as String?;
    _deliveryAddress2 = snapshotData['deliveryAddress2'] as String?;
    _deliveryCity = snapshotData['deliveryCity'] as String?;
    _deliveryCounty = snapshotData['deliveryCounty'] as String?;
    _deliveryPostcode = snapshotData['deliveryPostcode'] as String?;
    _deliveryItems = getDataList(snapshotData['deliveryItems']);
    _deliveryNotes = getDataList(snapshotData['deliveryNotes']);
    _deliveryEmail = snapshotData['deliveryEmail'] as String?;
    _deliveryFirstName = snapshotData['deliveryFirstName'] as String?;
    _deliverySurname = snapshotData['deliverySurname'] as String?;
    _deliveryContactNo = snapshotData['deliveryContactNo'] as String?;
    _giftCardFromMessage = snapshotData['giftCardFromMessage'] as String?;
    _giftCardToMessage = snapshotData['giftCardToMessage'] as String?;
    _targetDeliveryDate = snapshotData['targetDeliveryDate'] as DateTime?;
    _isSla = snapshotData['isSla'] as bool?;
    _chaseDeliveryMessage = getDataList(snapshotData['chaseDeliveryMessage']);
    _leaveWithNeighbor = snapshotData['leaveWithNeighbor'] as bool?;
    _isNoContactDelivery = snapshotData['isNoContactDelivery'] as bool?;
    _totalQty = castToType<int>(snapshotData['total_qty']);
    _isFailed = snapshotData['isFailed'] as bool?;
    _orderRef = snapshotData['orderRef'] as DocumentReference?;
    _orderDate = snapshotData['orderDate'] as DateTime?;
    _batchRef = snapshotData['batchRef'] as DocumentReference?;
    _deliveredDate = snapshotData['deliveredDate'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _deleteDate = snapshotData['deleteDate'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as DocumentReference?;
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
  String? deliveryId,
  DateTime? createdDate,
  String? deliveryProof,
  String? eSignature,
  String? orderNumber,
  double? totalOrderAmount,
  String? warehouseName,
  String? volunteerName,
  bool? isDelivered,
  DocumentReference? warehouseRef,
  DocumentReference? volunteerRef,
  String? deliveryAddress1,
  String? deliveryAddress2,
  String? deliveryCity,
  String? deliveryCounty,
  String? deliveryPostcode,
  String? deliveryEmail,
  String? deliveryFirstName,
  String? deliverySurname,
  String? deliveryContactNo,
  String? giftCardFromMessage,
  String? giftCardToMessage,
  DateTime? targetDeliveryDate,
  bool? isSla,
  bool? leaveWithNeighbor,
  bool? isNoContactDelivery,
  int? totalQty,
  bool? isFailed,
  DocumentReference? orderRef,
  DateTime? orderDate,
  DocumentReference? batchRef,
  DateTime? deliveredDate,
  bool? isActive,
  bool? isDeleted,
  DateTime? deleteDate,
  DocumentReference? deletedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'deliveryId': deliveryId,
      'createdDate': createdDate,
      'deliveryProof': deliveryProof,
      'eSignature': eSignature,
      'orderNumber': orderNumber,
      'total_orderAmount': totalOrderAmount,
      'warehouseName': warehouseName,
      'volunteerName': volunteerName,
      'isDelivered': isDelivered,
      'warehouseRef': warehouseRef,
      'volunteerRef': volunteerRef,
      'deliveryAddress1': deliveryAddress1,
      'deliveryAddress2': deliveryAddress2,
      'deliveryCity': deliveryCity,
      'deliveryCounty': deliveryCounty,
      'deliveryPostcode': deliveryPostcode,
      'deliveryEmail': deliveryEmail,
      'deliveryFirstName': deliveryFirstName,
      'deliverySurname': deliverySurname,
      'deliveryContactNo': deliveryContactNo,
      'giftCardFromMessage': giftCardFromMessage,
      'giftCardToMessage': giftCardToMessage,
      'targetDeliveryDate': targetDeliveryDate,
      'isSla': isSla,
      'leaveWithNeighbor': leaveWithNeighbor,
      'isNoContactDelivery': isNoContactDelivery,
      'total_qty': totalQty,
      'isFailed': isFailed,
      'orderRef': orderRef,
      'orderDate': orderDate,
      'batchRef': batchRef,
      'deliveredDate': deliveredDate,
      'isActive': isActive,
      'isDeleted': isDeleted,
      'deleteDate': deleteDate,
      'deletedBy': deletedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveriesRecordDocumentEquality implements Equality<DeliveriesRecord> {
  const DeliveriesRecordDocumentEquality();

  @override
  bool equals(DeliveriesRecord? e1, DeliveriesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.deliveryId == e2?.deliveryId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.deliveryProof == e2?.deliveryProof &&
        e1?.eSignature == e2?.eSignature &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.totalOrderAmount == e2?.totalOrderAmount &&
        e1?.warehouseName == e2?.warehouseName &&
        e1?.volunteerName == e2?.volunteerName &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.deliveryAddress1 == e2?.deliveryAddress1 &&
        e1?.deliveryAddress2 == e2?.deliveryAddress2 &&
        e1?.deliveryCity == e2?.deliveryCity &&
        e1?.deliveryCounty == e2?.deliveryCounty &&
        e1?.deliveryPostcode == e2?.deliveryPostcode &&
        listEquality.equals(e1?.deliveryItems, e2?.deliveryItems) &&
        listEquality.equals(e1?.deliveryNotes, e2?.deliveryNotes) &&
        e1?.deliveryEmail == e2?.deliveryEmail &&
        e1?.deliveryFirstName == e2?.deliveryFirstName &&
        e1?.deliverySurname == e2?.deliverySurname &&
        e1?.deliveryContactNo == e2?.deliveryContactNo &&
        e1?.giftCardFromMessage == e2?.giftCardFromMessage &&
        e1?.giftCardToMessage == e2?.giftCardToMessage &&
        e1?.targetDeliveryDate == e2?.targetDeliveryDate &&
        e1?.isSla == e2?.isSla &&
        listEquality.equals(
            e1?.chaseDeliveryMessage, e2?.chaseDeliveryMessage) &&
        e1?.leaveWithNeighbor == e2?.leaveWithNeighbor &&
        e1?.isNoContactDelivery == e2?.isNoContactDelivery &&
        e1?.totalQty == e2?.totalQty &&
        e1?.isFailed == e2?.isFailed &&
        e1?.orderRef == e2?.orderRef &&
        e1?.orderDate == e2?.orderDate &&
        e1?.batchRef == e2?.batchRef &&
        e1?.deliveredDate == e2?.deliveredDate &&
        e1?.isActive == e2?.isActive &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.deleteDate == e2?.deleteDate &&
        e1?.deletedBy == e2?.deletedBy;
  }

  @override
  int hash(DeliveriesRecord? e) => const ListEquality().hash([
        e?.deliveryId,
        e?.createdDate,
        e?.deliveryProof,
        e?.eSignature,
        e?.orderNumber,
        e?.totalOrderAmount,
        e?.warehouseName,
        e?.volunteerName,
        e?.isDelivered,
        e?.warehouseRef,
        e?.volunteerRef,
        e?.deliveryAddress1,
        e?.deliveryAddress2,
        e?.deliveryCity,
        e?.deliveryCounty,
        e?.deliveryPostcode,
        e?.deliveryItems,
        e?.deliveryNotes,
        e?.deliveryEmail,
        e?.deliveryFirstName,
        e?.deliverySurname,
        e?.deliveryContactNo,
        e?.giftCardFromMessage,
        e?.giftCardToMessage,
        e?.targetDeliveryDate,
        e?.isSla,
        e?.chaseDeliveryMessage,
        e?.leaveWithNeighbor,
        e?.isNoContactDelivery,
        e?.totalQty,
        e?.isFailed,
        e?.orderRef,
        e?.orderDate,
        e?.batchRef,
        e?.deliveredDate,
        e?.isActive,
        e?.isDeleted,
        e?.deleteDate,
        e?.deletedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveriesRecord;
}
