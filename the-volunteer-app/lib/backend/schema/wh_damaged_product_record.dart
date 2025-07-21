import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WhDamagedProductRecord extends FirestoreRecord {
  WhDamagedProductRecord._(
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

  // "noOfDamageProduct" field.
  int? _noOfDamageProduct;
  int get noOfDamageProduct => _noOfDamageProduct ?? 0;
  bool hasNoOfDamageProduct() => _noOfDamageProduct != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productName = snapshotData['productName'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _noOfDamageProduct = castToType<int>(snapshotData['noOfDamageProduct']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('wh_damagedProduct')
          : FirebaseFirestore.instance.collectionGroup('wh_damagedProduct');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('wh_damagedProduct').doc(id);

  static Stream<WhDamagedProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WhDamagedProductRecord.fromSnapshot(s));

  static Future<WhDamagedProductRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WhDamagedProductRecord.fromSnapshot(s));

  static WhDamagedProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WhDamagedProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WhDamagedProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WhDamagedProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WhDamagedProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WhDamagedProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWhDamagedProductRecordData({
  String? productName,
  String? productImageUrl,
  int? noOfDamageProduct,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productName': productName,
      'productImageUrl': productImageUrl,
      'noOfDamageProduct': noOfDamageProduct,
    }.withoutNulls,
  );

  return firestoreData;
}

class WhDamagedProductRecordDocumentEquality
    implements Equality<WhDamagedProductRecord> {
  const WhDamagedProductRecordDocumentEquality();

  @override
  bool equals(WhDamagedProductRecord? e1, WhDamagedProductRecord? e2) {
    return e1?.productName == e2?.productName &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.noOfDamageProduct == e2?.noOfDamageProduct;
  }

  @override
  int hash(WhDamagedProductRecord? e) => const ListEquality()
      .hash([e?.productName, e?.productImageUrl, e?.noOfDamageProduct]);

  @override
  bool isValidKey(Object? o) => o is WhDamagedProductRecord;
}
