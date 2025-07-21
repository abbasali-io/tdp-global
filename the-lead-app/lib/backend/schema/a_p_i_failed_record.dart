import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class APIFailedRecord extends FirestoreRecord {
  APIFailedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "stockMovementType" field.
  String? _stockMovementType;
  String get stockMovementType => _stockMovementType ?? '';
  bool hasStockMovementType() => _stockMovementType != null;

  // "apiName" field.
  String? _apiName;
  String get apiName => _apiName ?? '';
  bool hasApiName() => _apiName != null;

  // "stockType" field.
  String? _stockType;
  String get stockType => _stockType ?? '';
  bool hasStockType() => _stockType != null;

  // "quantityAttempted" field.
  int? _quantityAttempted;
  int get quantityAttempted => _quantityAttempted ?? 0;
  bool hasQuantityAttempted() => _quantityAttempted != null;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _stockMovementType = snapshotData['stockMovementType'] as String?;
    _apiName = snapshotData['apiName'] as String?;
    _stockType = snapshotData['stockType'] as String?;
    _quantityAttempted = castToType<int>(snapshotData['quantityAttempted']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('API_failed');

  static Stream<APIFailedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => APIFailedRecord.fromSnapshot(s));

  static Future<APIFailedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => APIFailedRecord.fromSnapshot(s));

  static APIFailedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      APIFailedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static APIFailedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      APIFailedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'APIFailedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is APIFailedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAPIFailedRecordData({
  DateTime? createdDate,
  String? createdBy,
  String? warehouseId,
  String? productPortalId,
  String? stockMovementType,
  String? apiName,
  String? stockType,
  int? quantityAttempted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'createdBy': createdBy,
      'warehouseId': warehouseId,
      'productPortalId': productPortalId,
      'stockMovementType': stockMovementType,
      'apiName': apiName,
      'stockType': stockType,
      'quantityAttempted': quantityAttempted,
    }.withoutNulls,
  );

  return firestoreData;
}

class APIFailedRecordDocumentEquality implements Equality<APIFailedRecord> {
  const APIFailedRecordDocumentEquality();

  @override
  bool equals(APIFailedRecord? e1, APIFailedRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.createdBy == e2?.createdBy &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.stockMovementType == e2?.stockMovementType &&
        e1?.apiName == e2?.apiName &&
        e1?.stockType == e2?.stockType &&
        e1?.quantityAttempted == e2?.quantityAttempted;
  }

  @override
  int hash(APIFailedRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.createdBy,
        e?.warehouseId,
        e?.productPortalId,
        e?.stockMovementType,
        e?.apiName,
        e?.stockType,
        e?.quantityAttempted
      ]);

  @override
  bool isValidKey(Object? o) => o is APIFailedRecord;
}
