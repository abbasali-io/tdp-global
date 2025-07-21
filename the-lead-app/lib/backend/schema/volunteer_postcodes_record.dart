import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolunteerPostcodesRecord extends FirestoreRecord {
  VolunteerPostcodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "volunteerPostcodeId" field.
  String? _volunteerPostcodeId;
  String get volunteerPostcodeId => _volunteerPostcodeId ?? '';
  bool hasVolunteerPostcodeId() => _volunteerPostcodeId != null;

  // "postcode" field.
  String? _postcode;
  String get postcode => _postcode ?? '';
  bool hasPostcode() => _postcode != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  bool hasIsEnabled() => _isEnabled != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "enabledOn" field.
  DateTime? _enabledOn;
  DateTime? get enabledOn => _enabledOn;
  bool hasEnabledOn() => _enabledOn != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "volunteerId" field.
  String? _volunteerId;
  String get volunteerId => _volunteerId ?? '';
  bool hasVolunteerId() => _volunteerId != null;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _volunteerPostcodeId = snapshotData['volunteerPostcodeId'] as String?;
    _postcode = snapshotData['postcode'] as String?;
    _isEnabled = snapshotData['isEnabled'] as bool?;
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _enabledOn = snapshotData['enabledOn'] as DateTime?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _volunteerId = snapshotData['volunteerId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('volunteer_postcodes');

  static Stream<VolunteerPostcodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VolunteerPostcodesRecord.fromSnapshot(s));

  static Future<VolunteerPostcodesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VolunteerPostcodesRecord.fromSnapshot(s));

  static VolunteerPostcodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VolunteerPostcodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolunteerPostcodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolunteerPostcodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolunteerPostcodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolunteerPostcodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolunteerPostcodesRecordData({
  String? volunteerPostcodeId,
  String? postcode,
  bool? isEnabled,
  DocumentReference? volunteerRef,
  DateTime? enabledOn,
  String? warehouseId,
  String? volunteerId,
  bool? isActive,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'volunteerPostcodeId': volunteerPostcodeId,
      'postcode': postcode,
      'isEnabled': isEnabled,
      'volunteerRef': volunteerRef,
      'enabledOn': enabledOn,
      'warehouseId': warehouseId,
      'volunteerId': volunteerId,
      'isActive': isActive,
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

class VolunteerPostcodesRecordDocumentEquality
    implements Equality<VolunteerPostcodesRecord> {
  const VolunteerPostcodesRecordDocumentEquality();

  @override
  bool equals(VolunteerPostcodesRecord? e1, VolunteerPostcodesRecord? e2) {
    return e1?.volunteerPostcodeId == e2?.volunteerPostcodeId &&
        e1?.postcode == e2?.postcode &&
        e1?.isEnabled == e2?.isEnabled &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.enabledOn == e2?.enabledOn &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.volunteerId == e2?.volunteerId &&
        e1?.isActive == e2?.isActive &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(VolunteerPostcodesRecord? e) => const ListEquality().hash([
        e?.volunteerPostcodeId,
        e?.postcode,
        e?.isEnabled,
        e?.volunteerRef,
        e?.enabledOn,
        e?.warehouseId,
        e?.volunteerId,
        e?.isActive,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is VolunteerPostcodesRecord;
}
