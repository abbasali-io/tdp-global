import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfflineSalesRecord extends FirestoreRecord {
  OfflineSalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "offlineSaleId" field.
  String? _offlineSaleId;
  String get offlineSaleId => _offlineSaleId ?? '';
  bool hasOfflineSaleId() => _offlineSaleId != null;

  // "customerFirstName" field.
  String? _customerFirstName;
  String get customerFirstName => _customerFirstName ?? '';
  bool hasCustomerFirstName() => _customerFirstName != null;

  // "customerSurname" field.
  String? _customerSurname;
  String get customerSurname => _customerSurname ?? '';
  bool hasCustomerSurname() => _customerSurname != null;

  // "billingAddressLine1" field.
  String? _billingAddressLine1;
  String get billingAddressLine1 => _billingAddressLine1 ?? '';
  bool hasBillingAddressLine1() => _billingAddressLine1 != null;

  // "billingAddressLine2" field.
  String? _billingAddressLine2;
  String get billingAddressLine2 => _billingAddressLine2 ?? '';
  bool hasBillingAddressLine2() => _billingAddressLine2 != null;

  // "customerEmail" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  bool hasCustomerEmail() => _customerEmail != null;

  // "customerNumber" field.
  String? _customerNumber;
  String get customerNumber => _customerNumber ?? '';
  bool hasCustomerNumber() => _customerNumber != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "postcode" field.
  String? _postcode;
  String get postcode => _postcode ?? '';
  bool hasPostcode() => _postcode != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "volunteerName" field.
  String? _volunteerName;
  String get volunteerName => _volunteerName ?? '';
  bool hasVolunteerName() => _volunteerName != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "warehouseName" field.
  String? _warehouseName;
  String get warehouseName => _warehouseName ?? '';
  bool hasWarehouseName() => _warehouseName != null;

  // "volunteerNumber" field.
  String? _volunteerNumber;
  String get volunteerNumber => _volunteerNumber ?? '';
  bool hasVolunteerNumber() => _volunteerNumber != null;

  // "totalQty" field.
  int? _totalQty;
  int get totalQty => _totalQty ?? 0;
  bool hasTotalQty() => _totalQty != null;

  // "totalValue" field.
  double? _totalValue;
  double get totalValue => _totalValue ?? 0.0;
  bool hasTotalValue() => _totalValue != null;

  // "offlineSaleDate" field.
  DateTime? _offlineSaleDate;
  DateTime? get offlineSaleDate => _offlineSaleDate;
  bool hasOfflineSaleDate() => _offlineSaleDate != null;

  // "isCompleted" field.
  bool? _isCompleted;
  bool get isCompleted => _isCompleted ?? false;
  bool hasIsCompleted() => _isCompleted != null;

  // "isAnonymous" field.
  bool? _isAnonymous;
  bool get isAnonymous => _isAnonymous ?? false;
  bool hasIsAnonymous() => _isAnonymous != null;

  // "saleNo" field.
  String? _saleNo;
  String get saleNo => _saleNo ?? '';
  bool hasSaleNo() => _saleNo != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "updatedDate" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "updatedBy" field.
  DocumentReference? _updatedBy;
  DocumentReference? get updatedBy => _updatedBy;
  bool hasUpdatedBy() => _updatedBy != null;

  // "recordStatus" field.
  List<String>? _recordStatus;
  List<String> get recordStatus => _recordStatus ?? const [];
  bool hasRecordStatus() => _recordStatus != null;

  // "recordNotes" field.
  String? _recordNotes;
  String get recordNotes => _recordNotes ?? '';
  bool hasRecordNotes() => _recordNotes != null;

  // "offlineSaleDateTimeStamp" field.
  int? _offlineSaleDateTimeStamp;
  int get offlineSaleDateTimeStamp => _offlineSaleDateTimeStamp ?? 0;
  bool hasOfflineSaleDateTimeStamp() => _offlineSaleDateTimeStamp != null;

  // "isOutstanding" field.
  bool? _isOutstanding;
  bool get isOutstanding => _isOutstanding ?? false;
  bool hasIsOutstanding() => _isOutstanding != null;

  // "isCancelled" field.
  bool? _isCancelled;
  bool get isCancelled => _isCancelled ?? false;
  bool hasIsCancelled() => _isCancelled != null;

  // "isSaleReturned" field.
  bool? _isSaleReturned;
  bool get isSaleReturned => _isSaleReturned ?? false;
  bool hasIsSaleReturned() => _isSaleReturned != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "createdDate" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  bool hasCreatedDate() => _createdDate != null;

  // "volunteerId" field.
  String? _volunteerId;
  String get volunteerId => _volunteerId ?? '';
  bool hasVolunteerId() => _volunteerId != null;

  void _initializeFields() {
    _offlineSaleId = snapshotData['offlineSaleId'] as String?;
    _customerFirstName = snapshotData['customerFirstName'] as String?;
    _customerSurname = snapshotData['customerSurname'] as String?;
    _billingAddressLine1 = snapshotData['billingAddressLine1'] as String?;
    _billingAddressLine2 = snapshotData['billingAddressLine2'] as String?;
    _customerEmail = snapshotData['customerEmail'] as String?;
    _customerNumber = snapshotData['customerNumber'] as String?;
    _city = snapshotData['city'] as String?;
    _postcode = snapshotData['postcode'] as String?;
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _volunteerName = snapshotData['volunteerName'] as String?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _warehouseName = snapshotData['warehouseName'] as String?;
    _volunteerNumber = snapshotData['volunteerNumber'] as String?;
    _totalQty = castToType<int>(snapshotData['totalQty']);
    _totalValue = castToType<double>(snapshotData['totalValue']);
    _offlineSaleDate = snapshotData['offlineSaleDate'] as DateTime?;
    _isCompleted = snapshotData['isCompleted'] as bool?;
    _isAnonymous = snapshotData['isAnonymous'] as bool?;
    _saleNo = snapshotData['saleNo'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _updatedDate = snapshotData['updatedDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as DocumentReference?;
    _recordStatus = getDataList(snapshotData['recordStatus']);
    _recordNotes = snapshotData['recordNotes'] as String?;
    _offlineSaleDateTimeStamp =
        castToType<int>(snapshotData['offlineSaleDateTimeStamp']);
    _isOutstanding = snapshotData['isOutstanding'] as bool?;
    _isCancelled = snapshotData['isCancelled'] as bool?;
    _isSaleReturned = snapshotData['isSaleReturned'] as bool?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as String?;
    _volunteerId = snapshotData['volunteerId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offlineSales');

  static Stream<OfflineSalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfflineSalesRecord.fromSnapshot(s));

  static Future<OfflineSalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfflineSalesRecord.fromSnapshot(s));

  static OfflineSalesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfflineSalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfflineSalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfflineSalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfflineSalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfflineSalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfflineSalesRecordData({
  String? offlineSaleId,
  String? customerFirstName,
  String? customerSurname,
  String? billingAddressLine1,
  String? billingAddressLine2,
  String? customerEmail,
  String? customerNumber,
  String? city,
  String? postcode,
  DocumentReference? volunteerRef,
  String? volunteerName,
  DocumentReference? warehouseRef,
  String? warehouseName,
  String? volunteerNumber,
  int? totalQty,
  double? totalValue,
  DateTime? offlineSaleDate,
  bool? isCompleted,
  bool? isAnonymous,
  String? saleNo,
  bool? isActive,
  DateTime? updatedDate,
  DocumentReference? updatedBy,
  String? recordNotes,
  int? offlineSaleDateTimeStamp,
  bool? isOutstanding,
  bool? isCancelled,
  bool? isSaleReturned,
  String? warehouseId,
  String? createdBy,
  String? createdDate,
  String? volunteerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'offlineSaleId': offlineSaleId,
      'customerFirstName': customerFirstName,
      'customerSurname': customerSurname,
      'billingAddressLine1': billingAddressLine1,
      'billingAddressLine2': billingAddressLine2,
      'customerEmail': customerEmail,
      'customerNumber': customerNumber,
      'city': city,
      'postcode': postcode,
      'volunteerRef': volunteerRef,
      'volunteerName': volunteerName,
      'warehouseRef': warehouseRef,
      'warehouseName': warehouseName,
      'volunteerNumber': volunteerNumber,
      'totalQty': totalQty,
      'totalValue': totalValue,
      'offlineSaleDate': offlineSaleDate,
      'isCompleted': isCompleted,
      'isAnonymous': isAnonymous,
      'saleNo': saleNo,
      'isActive': isActive,
      'updatedDate': updatedDate,
      'updatedBy': updatedBy,
      'recordNotes': recordNotes,
      'offlineSaleDateTimeStamp': offlineSaleDateTimeStamp,
      'isOutstanding': isOutstanding,
      'isCancelled': isCancelled,
      'isSaleReturned': isSaleReturned,
      'warehouseId': warehouseId,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'volunteerId': volunteerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfflineSalesRecordDocumentEquality
    implements Equality<OfflineSalesRecord> {
  const OfflineSalesRecordDocumentEquality();

  @override
  bool equals(OfflineSalesRecord? e1, OfflineSalesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.offlineSaleId == e2?.offlineSaleId &&
        e1?.customerFirstName == e2?.customerFirstName &&
        e1?.customerSurname == e2?.customerSurname &&
        e1?.billingAddressLine1 == e2?.billingAddressLine1 &&
        e1?.billingAddressLine2 == e2?.billingAddressLine2 &&
        e1?.customerEmail == e2?.customerEmail &&
        e1?.customerNumber == e2?.customerNumber &&
        e1?.city == e2?.city &&
        e1?.postcode == e2?.postcode &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.volunteerName == e2?.volunteerName &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.warehouseName == e2?.warehouseName &&
        e1?.volunteerNumber == e2?.volunteerNumber &&
        e1?.totalQty == e2?.totalQty &&
        e1?.totalValue == e2?.totalValue &&
        e1?.offlineSaleDate == e2?.offlineSaleDate &&
        e1?.isCompleted == e2?.isCompleted &&
        e1?.isAnonymous == e2?.isAnonymous &&
        e1?.saleNo == e2?.saleNo &&
        e1?.isActive == e2?.isActive &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.updatedBy == e2?.updatedBy &&
        listEquality.equals(e1?.recordStatus, e2?.recordStatus) &&
        e1?.recordNotes == e2?.recordNotes &&
        e1?.offlineSaleDateTimeStamp == e2?.offlineSaleDateTimeStamp &&
        e1?.isOutstanding == e2?.isOutstanding &&
        e1?.isCancelled == e2?.isCancelled &&
        e1?.isSaleReturned == e2?.isSaleReturned &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.volunteerId == e2?.volunteerId;
  }

  @override
  int hash(OfflineSalesRecord? e) => const ListEquality().hash([
        e?.offlineSaleId,
        e?.customerFirstName,
        e?.customerSurname,
        e?.billingAddressLine1,
        e?.billingAddressLine2,
        e?.customerEmail,
        e?.customerNumber,
        e?.city,
        e?.postcode,
        e?.volunteerRef,
        e?.volunteerName,
        e?.warehouseRef,
        e?.warehouseName,
        e?.volunteerNumber,
        e?.totalQty,
        e?.totalValue,
        e?.offlineSaleDate,
        e?.isCompleted,
        e?.isAnonymous,
        e?.saleNo,
        e?.isActive,
        e?.updatedDate,
        e?.updatedBy,
        e?.recordStatus,
        e?.recordNotes,
        e?.offlineSaleDateTimeStamp,
        e?.isOutstanding,
        e?.isCancelled,
        e?.isSaleReturned,
        e?.warehouseId,
        e?.createdBy,
        e?.createdDate,
        e?.volunteerId
      ]);

  @override
  bool isValidKey(Object? o) => o is OfflineSalesRecord;
}
