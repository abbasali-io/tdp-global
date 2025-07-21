import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BatchesRecord extends FirestoreRecord {
  BatchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assignedVolunteerName" field.
  String? _assignedVolunteerName;
  String get assignedVolunteerName => _assignedVolunteerName ?? '';
  bool hasAssignedVolunteerName() => _assignedVolunteerName != null;

  // "batchNo" field.
  String? _batchNo;
  String get batchNo => _batchNo ?? '';
  bool hasBatchNo() => _batchNo != null;

  // "batchId" field.
  String? _batchId;
  String get batchId => _batchId ?? '';
  bool hasBatchId() => _batchId != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "deliveryReferences" field.
  List<DocumentReference>? _deliveryReferences;
  List<DocumentReference> get deliveryReferences =>
      _deliveryReferences ?? const [];
  bool hasDeliveryReferences() => _deliveryReferences != null;

  // "noOfDeliveries" field.
  int? _noOfDeliveries;
  int get noOfDeliveries => _noOfDeliveries ?? 0;
  bool hasNoOfDeliveries() => _noOfDeliveries != null;

  // "optimalDeliveryOrder" field.
  List<DocumentReference>? _optimalDeliveryOrder;
  List<DocumentReference> get optimalDeliveryOrder =>
      _optimalDeliveryOrder ?? const [];
  bool hasOptimalDeliveryOrder() => _optimalDeliveryOrder != null;

  // "volunteerPostCodes" field.
  List<String>? _volunteerPostCodes;
  List<String> get volunteerPostCodes => _volunteerPostCodes ?? const [];
  bool hasVolunteerPostCodes() => _volunteerPostCodes != null;

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

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "createdDateTimeStamp" field.
  int? _createdDateTimeStamp;
  int get createdDateTimeStamp => _createdDateTimeStamp ?? 0;
  bool hasCreatedDateTimeStamp() => _createdDateTimeStamp != null;

  // "isAllDelivered" field.
  bool? _isAllDelivered;
  bool get isAllDelivered => _isAllDelivered ?? false;
  bool hasIsAllDelivered() => _isAllDelivered != null;

  // "deliveryIds" field.
  List<String>? _deliveryIds;
  List<String> get deliveryIds => _deliveryIds ?? const [];
  bool hasDeliveryIds() => _deliveryIds != null;

  // "volunteerId" field.
  String? _volunteerId;
  String get volunteerId => _volunteerId ?? '';
  bool hasVolunteerId() => _volunteerId != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

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
    _assignedVolunteerName = snapshotData['assignedVolunteerName'] as String?;
    _batchNo = snapshotData['batchNo'] as String?;
    _batchId = snapshotData['batchId'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _deliveryReferences = getDataList(snapshotData['deliveryReferences']);
    _noOfDeliveries = castToType<int>(snapshotData['noOfDeliveries']);
    _optimalDeliveryOrder = getDataList(snapshotData['optimalDeliveryOrder']);
    _volunteerPostCodes = getDataList(snapshotData['volunteerPostCodes']);
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _warehouseName = snapshotData['warehouseName'] as String?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdDateTimeStamp =
        castToType<int>(snapshotData['createdDateTimeStamp']);
    _isAllDelivered = snapshotData['isAllDelivered'] as bool?;
    _deliveryIds = getDataList(snapshotData['deliveryIds']);
    _volunteerId = snapshotData['volunteerId'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
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
  String? assignedVolunteerName,
  String? batchNo,
  String? batchId,
  DateTime? createdDate,
  int? noOfDeliveries,
  DocumentReference? volunteerRef,
  String? warehouseName,
  DocumentReference? warehouseRef,
  bool? isActive,
  int? createdDateTimeStamp,
  bool? isAllDelivered,
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
      'assignedVolunteerName': assignedVolunteerName,
      'batchNo': batchNo,
      'batchId': batchId,
      'createdDate': createdDate,
      'noOfDeliveries': noOfDeliveries,
      'volunteerRef': volunteerRef,
      'warehouseName': warehouseName,
      'warehouseRef': warehouseRef,
      'isActive': isActive,
      'createdDateTimeStamp': createdDateTimeStamp,
      'isAllDelivered': isAllDelivered,
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

class BatchesRecordDocumentEquality implements Equality<BatchesRecord> {
  const BatchesRecordDocumentEquality();

  @override
  bool equals(BatchesRecord? e1, BatchesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.assignedVolunteerName == e2?.assignedVolunteerName &&
        e1?.batchNo == e2?.batchNo &&
        e1?.batchId == e2?.batchId &&
        e1?.createdDate == e2?.createdDate &&
        listEquality.equals(e1?.deliveryReferences, e2?.deliveryReferences) &&
        e1?.noOfDeliveries == e2?.noOfDeliveries &&
        listEquality.equals(
            e1?.optimalDeliveryOrder, e2?.optimalDeliveryOrder) &&
        listEquality.equals(e1?.volunteerPostCodes, e2?.volunteerPostCodes) &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.warehouseName == e2?.warehouseName &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.isActive == e2?.isActive &&
        e1?.createdDateTimeStamp == e2?.createdDateTimeStamp &&
        e1?.isAllDelivered == e2?.isAllDelivered &&
        listEquality.equals(e1?.deliveryIds, e2?.deliveryIds) &&
        e1?.volunteerId == e2?.volunteerId &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(BatchesRecord? e) => const ListEquality().hash([
        e?.assignedVolunteerName,
        e?.batchNo,
        e?.batchId,
        e?.createdDate,
        e?.deliveryReferences,
        e?.noOfDeliveries,
        e?.optimalDeliveryOrder,
        e?.volunteerPostCodes,
        e?.volunteerRef,
        e?.warehouseName,
        e?.warehouseRef,
        e?.isActive,
        e?.createdDateTimeStamp,
        e?.isAllDelivered,
        e?.deliveryIds,
        e?.volunteerId,
        e?.warehouseId,
        e?.createdBy,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is BatchesRecord;
}
