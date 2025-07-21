import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolunteerAssignedProductsRecord extends FirestoreRecord {
  VolunteerAssignedProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "productPrice" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "productAvailableStock" field.
  int? _productAvailableStock;
  int get productAvailableStock => _productAvailableStock ?? 0;
  bool hasProductAvailableStock() => _productAvailableStock != null;

  // "productReservedForOnlineOrders" field.
  int? _productReservedForOnlineOrders;
  int get productReservedForOnlineOrders =>
      _productReservedForOnlineOrders ?? 0;
  bool hasProductReservedForOnlineOrders() =>
      _productReservedForOnlineOrders != null;

  // "productDamaged" field.
  int? _productDamaged;
  int get productDamaged => _productDamaged ?? 0;
  bool hasProductDamaged() => _productDamaged != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "productRequiredStock" field.
  int? _productRequiredStock;
  int get productRequiredStock => _productRequiredStock ?? 0;
  bool hasProductRequiredStock() => _productRequiredStock != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productId = snapshotData['productId'] as String?;
    _productName = snapshotData['productName'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _productPrice = castToType<double>(snapshotData['productPrice']);
    _isActive = snapshotData['isActive'] as bool?;
    _productAvailableStock =
        castToType<int>(snapshotData['productAvailableStock']);
    _productReservedForOnlineOrders =
        castToType<int>(snapshotData['productReservedForOnlineOrders']);
    _productDamaged = castToType<int>(snapshotData['productDamaged']);
    _productDescription = snapshotData['productDescription'] as String?;
    _productRequiredStock =
        castToType<int>(snapshotData['productRequiredStock']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('volunteer_assignedProducts')
          : FirebaseFirestore.instance
              .collectionGroup('volunteer_assignedProducts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('volunteer_assignedProducts').doc(id);

  static Stream<VolunteerAssignedProductsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => VolunteerAssignedProductsRecord.fromSnapshot(s));

  static Future<VolunteerAssignedProductsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => VolunteerAssignedProductsRecord.fromSnapshot(s));

  static VolunteerAssignedProductsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      VolunteerAssignedProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolunteerAssignedProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolunteerAssignedProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolunteerAssignedProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolunteerAssignedProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolunteerAssignedProductsRecordData({
  String? productId,
  String? productName,
  String? productImageUrl,
  double? productPrice,
  bool? isActive,
  int? productAvailableStock,
  int? productReservedForOnlineOrders,
  int? productDamaged,
  String? productDescription,
  int? productRequiredStock,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productId': productId,
      'productName': productName,
      'productImageUrl': productImageUrl,
      'productPrice': productPrice,
      'isActive': isActive,
      'productAvailableStock': productAvailableStock,
      'productReservedForOnlineOrders': productReservedForOnlineOrders,
      'productDamaged': productDamaged,
      'productDescription': productDescription,
      'productRequiredStock': productRequiredStock,
    }.withoutNulls,
  );

  return firestoreData;
}

class VolunteerAssignedProductsRecordDocumentEquality
    implements Equality<VolunteerAssignedProductsRecord> {
  const VolunteerAssignedProductsRecordDocumentEquality();

  @override
  bool equals(VolunteerAssignedProductsRecord? e1,
      VolunteerAssignedProductsRecord? e2) {
    return e1?.productId == e2?.productId &&
        e1?.productName == e2?.productName &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.productPrice == e2?.productPrice &&
        e1?.isActive == e2?.isActive &&
        e1?.productAvailableStock == e2?.productAvailableStock &&
        e1?.productReservedForOnlineOrders ==
            e2?.productReservedForOnlineOrders &&
        e1?.productDamaged == e2?.productDamaged &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productRequiredStock == e2?.productRequiredStock;
  }

  @override
  int hash(VolunteerAssignedProductsRecord? e) => const ListEquality().hash([
        e?.productId,
        e?.productName,
        e?.productImageUrl,
        e?.productPrice,
        e?.isActive,
        e?.productAvailableStock,
        e?.productReservedForOnlineOrders,
        e?.productDamaged,
        e?.productDescription,
        e?.productRequiredStock
      ]);

  @override
  bool isValidKey(Object? o) => o is VolunteerAssignedProductsRecord;
}
