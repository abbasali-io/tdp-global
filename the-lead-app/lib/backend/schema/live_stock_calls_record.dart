import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LiveStockCallsRecord extends FirestoreRecord {
  LiveStockCallsRecord._(
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

  // "liveStock" field.
  int? _liveStock;
  int get liveStock => _liveStock ?? 0;
  bool hasLiveStock() => _liveStock != null;

  // "stockTransQty" field.
  int? _stockTransQty;
  int get stockTransQty => _stockTransQty ?? 0;
  bool hasStockTransQty() => _stockTransQty != null;

  // "stockType" field.
  String? _stockType;
  String get stockType => _stockType ?? '';
  bool hasStockType() => _stockType != null;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _stockMovementType = snapshotData['stockMovementType'] as String?;
    _liveStock = castToType<int>(snapshotData['liveStock']);
    _stockTransQty = castToType<int>(snapshotData['stockTransQty']);
    _stockType = snapshotData['stockType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('liveStockCalls');

  static Stream<LiveStockCallsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LiveStockCallsRecord.fromSnapshot(s));

  static Future<LiveStockCallsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LiveStockCallsRecord.fromSnapshot(s));

  static LiveStockCallsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LiveStockCallsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LiveStockCallsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LiveStockCallsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LiveStockCallsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LiveStockCallsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLiveStockCallsRecordData({
  DateTime? createdDate,
  String? createdBy,
  String? warehouseId,
  String? productPortalId,
  String? stockMovementType,
  int? liveStock,
  int? stockTransQty,
  String? stockType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'createdBy': createdBy,
      'warehouseId': warehouseId,
      'productPortalId': productPortalId,
      'stockMovementType': stockMovementType,
      'liveStock': liveStock,
      'stockTransQty': stockTransQty,
      'stockType': stockType,
    }.withoutNulls,
  );

  return firestoreData;
}

class LiveStockCallsRecordDocumentEquality
    implements Equality<LiveStockCallsRecord> {
  const LiveStockCallsRecordDocumentEquality();

  @override
  bool equals(LiveStockCallsRecord? e1, LiveStockCallsRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.createdBy == e2?.createdBy &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.stockMovementType == e2?.stockMovementType &&
        e1?.liveStock == e2?.liveStock &&
        e1?.stockTransQty == e2?.stockTransQty &&
        e1?.stockType == e2?.stockType;
  }

  @override
  int hash(LiveStockCallsRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.createdBy,
        e?.warehouseId,
        e?.productPortalId,
        e?.stockMovementType,
        e?.liveStock,
        e?.stockTransQty,
        e?.stockType
      ]);

  @override
  bool isValidKey(Object? o) => o is LiveStockCallsRecord;
}
