import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WarehousePostcodesRecord extends FirestoreRecord {
  WarehousePostcodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "warehousePostcodeId" field.
  String? _warehousePostcodeId;
  String get warehousePostcodeId => _warehousePostcodeId ?? '';
  bool hasWarehousePostcodeId() => _warehousePostcodeId != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "postCode" field.
  String? _postCode;
  String get postCode => _postCode ?? '';
  bool hasPostCode() => _postCode != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "warehousePortalId" field.
  String? _warehousePortalId;
  String get warehousePortalId => _warehousePortalId ?? '';
  bool hasWarehousePortalId() => _warehousePortalId != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _warehousePostcodeId = snapshotData['warehousePostcodeId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _postCode = snapshotData['postCode'] as String?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _warehousePortalId = snapshotData['warehousePortalId'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('warehouse_postcodes');

  static Stream<WarehousePostcodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WarehousePostcodesRecord.fromSnapshot(s));

  static Future<WarehousePostcodesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WarehousePostcodesRecord.fromSnapshot(s));

  static WarehousePostcodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WarehousePostcodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WarehousePostcodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WarehousePostcodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WarehousePostcodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WarehousePostcodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWarehousePostcodesRecordData({
  String? warehousePostcodeId,
  bool? isActive,
  String? postCode,
  DocumentReference? warehouseRef,
  String? warehousePortalId,
  String? warehouseId,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'warehousePostcodeId': warehousePostcodeId,
      'isActive': isActive,
      'postCode': postCode,
      'warehouseRef': warehouseRef,
      'warehousePortalId': warehousePortalId,
      'warehouseId': warehouseId,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class WarehousePostcodesRecordDocumentEquality
    implements Equality<WarehousePostcodesRecord> {
  const WarehousePostcodesRecordDocumentEquality();

  @override
  bool equals(WarehousePostcodesRecord? e1, WarehousePostcodesRecord? e2) {
    return e1?.warehousePostcodeId == e2?.warehousePostcodeId &&
        e1?.isActive == e2?.isActive &&
        e1?.postCode == e2?.postCode &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.warehousePortalId == e2?.warehousePortalId &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(WarehousePostcodesRecord? e) => const ListEquality().hash([
        e?.warehousePostcodeId,
        e?.isActive,
        e?.postCode,
        e?.warehouseRef,
        e?.warehousePortalId,
        e?.warehouseId,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is WarehousePostcodesRecord;
}
