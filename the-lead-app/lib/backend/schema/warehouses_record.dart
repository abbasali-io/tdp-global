import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WarehousesRecord extends FirestoreRecord {
  WarehousesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isLeadAssigned" field.
  bool? _isLeadAssigned;
  bool get isLeadAssigned => _isLeadAssigned ?? false;
  bool hasIsLeadAssigned() => _isLeadAssigned != null;

  // "leadEmail" field.
  String? _leadEmail;
  String get leadEmail => _leadEmail ?? '';
  bool hasLeadEmail() => _leadEmail != null;

  // "leadPhoneNumber" field.
  String? _leadPhoneNumber;
  String get leadPhoneNumber => _leadPhoneNumber ?? '';
  bool hasLeadPhoneNumber() => _leadPhoneNumber != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "warehouseKey" field.
  String? _warehouseKey;
  String get warehouseKey => _warehouseKey ?? '';
  bool hasWarehouseKey() => _warehouseKey != null;

  // "warehousePortalId" field.
  String? _warehousePortalId;
  String get warehousePortalId => _warehousePortalId ?? '';
  bool hasWarehousePortalId() => _warehousePortalId != null;

  // "leadName" field.
  String? _leadName;
  String get leadName => _leadName ?? '';
  bool hasLeadName() => _leadName != null;

  // "leadRef" field.
  DocumentReference? _leadRef;
  DocumentReference? get leadRef => _leadRef;
  bool hasLeadRef() => _leadRef != null;

  // "leadId" field.
  String? _leadId;
  String get leadId => _leadId ?? '';
  bool hasLeadId() => _leadId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

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

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _isLeadAssigned = snapshotData['isLeadAssigned'] as bool?;
    _leadEmail = snapshotData['leadEmail'] as String?;
    _leadPhoneNumber = snapshotData['leadPhoneNumber'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _warehouseKey = snapshotData['warehouseKey'] as String?;
    _warehousePortalId = snapshotData['warehousePortalId'] as String?;
    _leadName = snapshotData['leadName'] as String?;
    _leadRef = snapshotData['leadRef'] as DocumentReference?;
    _leadId = snapshotData['leadId'] as String?;
    _status = snapshotData['status'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('warehouses');

  static Stream<WarehousesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WarehousesRecord.fromSnapshot(s));

  static Future<WarehousesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WarehousesRecord.fromSnapshot(s));

  static WarehousesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WarehousesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WarehousesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WarehousesRecord._(reference, mapFromFirestore(data));

  static WarehousesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      WarehousesRecord.getDocumentFromData(
        {
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'display_name': snapshot.data['display_name'],
          'isActive': snapshot.data['isActive'],
          'isLeadAssigned': snapshot.data['isLeadAssigned'],
          'leadEmail': snapshot.data['leadEmail'],
          'leadPhoneNumber': snapshot.data['leadPhoneNumber'],
          'warehouseId': snapshot.data['warehouseId'],
          'warehouseKey': snapshot.data['warehouseKey'],
          'warehousePortalId': snapshot.data['warehousePortalId'],
          'leadName': snapshot.data['leadName'],
          'leadRef': convertAlgoliaParam(
            snapshot.data['leadRef'],
            ParamType.DocumentReference,
            false,
          ),
          'leadId': snapshot.data['leadId'],
          'status': snapshot.data['status'],
          'createdDate': convertAlgoliaParam(
            snapshot.data['createdDate'],
            ParamType.DateTime,
            false,
          ),
          'updatedBy': snapshot.data['updatedBy'],
          'updateDate': convertAlgoliaParam(
            snapshot.data['updateDate'],
            ParamType.DateTime,
            false,
          ),
          'notes': snapshot.data['notes'],
        },
        WarehousesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<WarehousesRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'warehouses',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'WarehousesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WarehousesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWarehousesRecordData({
  DateTime? createdTime,
  String? displayName,
  bool? isActive,
  bool? isLeadAssigned,
  String? leadEmail,
  String? leadPhoneNumber,
  String? warehouseId,
  String? warehouseKey,
  String? warehousePortalId,
  String? leadName,
  DocumentReference? leadRef,
  String? leadId,
  String? status,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'display_name': displayName,
      'isActive': isActive,
      'isLeadAssigned': isLeadAssigned,
      'leadEmail': leadEmail,
      'leadPhoneNumber': leadPhoneNumber,
      'warehouseId': warehouseId,
      'warehouseKey': warehouseKey,
      'warehousePortalId': warehousePortalId,
      'leadName': leadName,
      'leadRef': leadRef,
      'leadId': leadId,
      'status': status,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class WarehousesRecordDocumentEquality implements Equality<WarehousesRecord> {
  const WarehousesRecordDocumentEquality();

  @override
  bool equals(WarehousesRecord? e1, WarehousesRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.isActive == e2?.isActive &&
        e1?.isLeadAssigned == e2?.isLeadAssigned &&
        e1?.leadEmail == e2?.leadEmail &&
        e1?.leadPhoneNumber == e2?.leadPhoneNumber &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.warehouseKey == e2?.warehouseKey &&
        e1?.warehousePortalId == e2?.warehousePortalId &&
        e1?.leadName == e2?.leadName &&
        e1?.leadRef == e2?.leadRef &&
        e1?.leadId == e2?.leadId &&
        e1?.status == e2?.status &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(WarehousesRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.displayName,
        e?.isActive,
        e?.isLeadAssigned,
        e?.leadEmail,
        e?.leadPhoneNumber,
        e?.warehouseId,
        e?.warehouseKey,
        e?.warehousePortalId,
        e?.leadName,
        e?.leadRef,
        e?.leadId,
        e?.status,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is WarehousesRecord;
}
