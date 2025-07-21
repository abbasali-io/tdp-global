import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BatchesRecord extends FirestoreRecord {
  BatchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "batchId" field.
  String? _batchId;
  String get batchId => _batchId ?? '';
  bool hasBatchId() => _batchId != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "noOfOrders" field.
  int? _noOfOrders;
  int get noOfOrders => _noOfOrders ?? 0;
  bool hasNoOfOrders() => _noOfOrders != null;

  // "isNew" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  bool hasIsNew() => _isNew != null;

  // "isAssigned" field.
  bool? _isAssigned;
  bool get isAssigned => _isAssigned ?? false;
  bool hasIsAssigned() => _isAssigned != null;

  // "IsClosed" field.
  bool? _isClosed;
  bool get isClosed => _isClosed ?? false;
  bool hasIsClosed() => _isClosed != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "assignedVolunteerName" field.
  String? _assignedVolunteerName;
  String get assignedVolunteerName => _assignedVolunteerName ?? '';
  bool hasAssignedVolunteerName() => _assignedVolunteerName != null;

  // "warehouseName" field.
  String? _warehouseName;
  String get warehouseName => _warehouseName ?? '';
  bool hasWarehouseName() => _warehouseName != null;

  // "deliveryReferences" field.
  List<DocumentReference>? _deliveryReferences;
  List<DocumentReference> get deliveryReferences =>
      _deliveryReferences ?? const [];
  bool hasDeliveryReferences() => _deliveryReferences != null;

  // "volunteerPostCodes" field.
  List<String>? _volunteerPostCodes;
  List<String> get volunteerPostCodes => _volunteerPostCodes ?? const [];
  bool hasVolunteerPostCodes() => _volunteerPostCodes != null;

  // "batchNo" field.
  String? _batchNo;
  String get batchNo => _batchNo ?? '';
  bool hasBatchNo() => _batchNo != null;

  void _initializeFields() {
    _batchId = snapshotData['batchId'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _noOfOrders = castToType<int>(snapshotData['noOfOrders']);
    _isNew = snapshotData['isNew'] as bool?;
    _isAssigned = snapshotData['isAssigned'] as bool?;
    _isClosed = snapshotData['IsClosed'] as bool?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _assignedVolunteerName = snapshotData['assignedVolunteerName'] as String?;
    _warehouseName = snapshotData['warehouseName'] as String?;
    _deliveryReferences = getDataList(snapshotData['deliveryReferences']);
    _volunteerPostCodes = getDataList(snapshotData['volunteerPostCodes']);
    _batchNo = snapshotData['batchNo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('batches');

  static Stream<BatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BatchesRecord.fromSnapshot(s));

  static Future<BatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BatchesRecord.fromSnapshot(s));

  static BatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBatchesRecordData({
  String? batchId,
  DateTime? createdDate,
  int? noOfOrders,
  bool? isNew,
  bool? isAssigned,
  bool? isClosed,
  DocumentReference? warehouseRef,
  DocumentReference? volunteerRef,
  String? assignedVolunteerName,
  String? warehouseName,
  String? batchNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'batchId': batchId,
      'createdDate': createdDate,
      'noOfOrders': noOfOrders,
      'isNew': isNew,
      'isAssigned': isAssigned,
      'IsClosed': isClosed,
      'warehouseRef': warehouseRef,
      'volunteerRef': volunteerRef,
      'assignedVolunteerName': assignedVolunteerName,
      'warehouseName': warehouseName,
      'batchNo': batchNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class BatchesRecordDocumentEquality implements Equality<BatchesRecord> {
  const BatchesRecordDocumentEquality();

  @override
  bool equals(BatchesRecord? e1, BatchesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.batchId == e2?.batchId &&
        e1?.createdDate == e2?.createdDate &&
        e1?.noOfOrders == e2?.noOfOrders &&
        e1?.isNew == e2?.isNew &&
        e1?.isAssigned == e2?.isAssigned &&
        e1?.isClosed == e2?.isClosed &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.assignedVolunteerName == e2?.assignedVolunteerName &&
        e1?.warehouseName == e2?.warehouseName &&
        listEquality.equals(e1?.deliveryReferences, e2?.deliveryReferences) &&
        listEquality.equals(e1?.volunteerPostCodes, e2?.volunteerPostCodes) &&
        e1?.batchNo == e2?.batchNo;
  }

  @override
  int hash(BatchesRecord? e) => const ListEquality().hash([
        e?.batchId,
        e?.createdDate,
        e?.noOfOrders,
        e?.isNew,
        e?.isAssigned,
        e?.isClosed,
        e?.warehouseRef,
        e?.volunteerRef,
        e?.assignedVolunteerName,
        e?.warehouseName,
        e?.deliveryReferences,
        e?.volunteerPostCodes,
        e?.batchNo
      ]);

  @override
  bool isValidKey(Object? o) => o is BatchesRecord;
}
