import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WhPostCodesRecord extends FirestoreRecord {
  WhPostCodesRecord._(
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

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "leadRef" field.
  DocumentReference? _leadRef;
  DocumentReference? get leadRef => _leadRef;
  bool hasLeadRef() => _leadRef != null;

  // "volunteerRefs" field.
  List<DocumentReference>? _volunteerRefs;
  List<DocumentReference> get volunteerRefs => _volunteerRefs ?? const [];
  bool hasVolunteerRefs() => _volunteerRefs != null;

  // "noOfVolunteers" field.
  int? _noOfVolunteers;
  int get noOfVolunteers => _noOfVolunteers ?? 0;
  bool hasNoOfVolunteers() => _noOfVolunteers != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _postCode = snapshotData['postCode'] as String?;
    _isEnabled = snapshotData['isEnabled'] as bool?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _leadRef = snapshotData['leadRef'] as DocumentReference?;
    _volunteerRefs = getDataList(snapshotData['volunteerRefs']);
    _noOfVolunteers = castToType<int>(snapshotData['noOfVolunteers']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wh_postCodes')
          : FirebaseFirestore.instance.collectionGroup('wh_postCodes');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wh_postCodes').doc(id);

  static Stream<WhPostCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WhPostCodesRecord.fromSnapshot(s));

  static Future<WhPostCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WhPostCodesRecord.fromSnapshot(s));

  static WhPostCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WhPostCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WhPostCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WhPostCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WhPostCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WhPostCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWhPostCodesRecordData({
  String? postCode,
  bool? isEnabled,
  DocumentReference? warehouseRef,
  DocumentReference? leadRef,
  int? noOfVolunteers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postCode': postCode,
      'isEnabled': isEnabled,
      'warehouseRef': warehouseRef,
      'leadRef': leadRef,
      'noOfVolunteers': noOfVolunteers,
    }.withoutNulls,
  );

  return firestoreData;
}

class WhPostCodesRecordDocumentEquality implements Equality<WhPostCodesRecord> {
  const WhPostCodesRecordDocumentEquality();

  @override
  bool equals(WhPostCodesRecord? e1, WhPostCodesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postCode == e2?.postCode &&
        e1?.isEnabled == e2?.isEnabled &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.leadRef == e2?.leadRef &&
        listEquality.equals(e1?.volunteerRefs, e2?.volunteerRefs) &&
        e1?.noOfVolunteers == e2?.noOfVolunteers;
  }

  @override
  int hash(WhPostCodesRecord? e) => const ListEquality().hash([
        e?.postCode,
        e?.isEnabled,
        e?.warehouseRef,
        e?.leadRef,
        e?.volunteerRefs,
        e?.noOfVolunteers
      ]);

  @override
  bool isValidKey(Object? o) => o is WhPostCodesRecord;
}
