import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolunteerDamagedProductRecord extends FirestoreRecord {
  VolunteerDamagedProductRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "noOfDamagedProducts" field.
  int? _noOfDamagedProducts;
  int get noOfDamagedProducts => _noOfDamagedProducts ?? 0;
  bool hasNoOfDamagedProducts() => _noOfDamagedProducts != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productName = snapshotData['productName'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _noOfDamagedProducts = castToType<int>(snapshotData['noOfDamagedProducts']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('volunteerDamagedProduct')
          : FirebaseFirestore.instance
              .collectionGroup('volunteerDamagedProduct');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('volunteerDamagedProduct').doc(id);

  static Stream<VolunteerDamagedProductRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => VolunteerDamagedProductRecord.fromSnapshot(s));

  static Future<VolunteerDamagedProductRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VolunteerDamagedProductRecord.fromSnapshot(s));

  static VolunteerDamagedProductRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      VolunteerDamagedProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolunteerDamagedProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolunteerDamagedProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolunteerDamagedProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolunteerDamagedProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolunteerDamagedProductRecordData({
  String? productName,
  String? productImageUrl,
  int? noOfDamagedProducts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productName': productName,
      'productImageUrl': productImageUrl,
      'noOfDamagedProducts': noOfDamagedProducts,
    }.withoutNulls,
  );

  return firestoreData;
}

class VolunteerDamagedProductRecordDocumentEquality
    implements Equality<VolunteerDamagedProductRecord> {
  const VolunteerDamagedProductRecordDocumentEquality();

  @override
  bool equals(
      VolunteerDamagedProductRecord? e1, VolunteerDamagedProductRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.noOfDamagedProducts == e2?.noOfDamagedProducts;
  }

  @override
  int hash(VolunteerDamagedProductRecord? e) => const ListEquality()
      .hash([e?.productName, e?.productImageUrl, e?.noOfDamagedProducts]);

  @override
  bool isValidKey(Object? o) => o is VolunteerDamagedProductRecord;
}
