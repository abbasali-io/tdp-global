import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolunteerPostCodesRecord extends FirestoreRecord {
  VolunteerPostCodesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postCode" field.
  String? _postCode;
  String get postCode => _postCode ?? '';
  bool hasPostCode() => _postCode != null;

  // "isEnabled" field.
  bool? _isEnabled;
  bool get isEnabled => _isEnabled ?? false;
  bool hasIsEnabled() => _isEnabled != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _postCode = snapshotData['postCode'] as String?;
    _isEnabled = snapshotData['isEnabled'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('volunteer_postCodes')
          : FirebaseFirestore.instance.collectionGroup('volunteer_postCodes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('volunteer_postCodes').doc(id);

  static Stream<VolunteerPostCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VolunteerPostCodesRecord.fromSnapshot(s));

  static Future<VolunteerPostCodesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VolunteerPostCodesRecord.fromSnapshot(s));

  static VolunteerPostCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VolunteerPostCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolunteerPostCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolunteerPostCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolunteerPostCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolunteerPostCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolunteerPostCodesRecordData({
  String? postCode,
  bool? isEnabled,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postCode': postCode,
      'isEnabled': isEnabled,
    }.withoutNulls,
  );

  return firestoreData;
}

class VolunteerPostCodesRecordDocumentEquality
    implements Equality<VolunteerPostCodesRecord> {
  const VolunteerPostCodesRecordDocumentEquality();

  @override
  bool equals(VolunteerPostCodesRecord? e1, VolunteerPostCodesRecord? e2) {
    return e1?.postCode == e2?.postCode && e1?.isEnabled == e2?.isEnabled;
  }

  @override
  int hash(VolunteerPostCodesRecord? e) =>
      const ListEquality().hash([e?.postCode, e?.isEnabled]);

  @override
  bool isValidKey(Object? o) => o is VolunteerPostCodesRecord;
}
