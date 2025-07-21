import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "availableStock" field.
  int? _availableStock;
  int get availableStock => _availableStock ?? 0;
  bool hasAvailableStock() => _availableStock != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productNameSmall" field.
  String? _productNameSmall;
  String get productNameSmall => _productNameSmall ?? '';
  bool hasProductNameSmall() => _productNameSmall != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "value_availableStock" field.
  double? _valueAvailableStock;
  double get valueAvailableStock => _valueAvailableStock ?? 0.0;
  bool hasValueAvailableStock() => _valueAvailableStock != null;

  // "productPrice" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  void _initializeFields() {
    _availableStock = castToType<int>(snapshotData['availableStock']);
    _isActive = snapshotData['isActive'] as bool?;
    _productDescription = snapshotData['productDescription'] as String?;
    _productId = snapshotData['productId'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _productName = snapshotData['productName'] as String?;
    _productNameSmall = snapshotData['productNameSmall'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _valueAvailableStock =
        castToType<double>(snapshotData['value_availableStock']);
    _productPrice = castToType<double>(snapshotData['productPrice']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  int? availableStock,
  bool? isActive,
  String? productDescription,
  String? productId,
  String? productImageUrl,
  String? productName,
  String? productNameSmall,
  String? productPortalId,
  double? valueAvailableStock,
  double? productPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'availableStock': availableStock,
      'isActive': isActive,
      'productDescription': productDescription,
      'productId': productId,
      'productImageUrl': productImageUrl,
      'productName': productName,
      'productNameSmall': productNameSmall,
      'productPortalId': productPortalId,
      'value_availableStock': valueAvailableStock,
      'productPrice': productPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.availableStock == e2?.availableStock &&
        e1?.isActive == e2?.isActive &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productId == e2?.productId &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.productName == e2?.productName &&
        e1?.productNameSmall == e2?.productNameSmall &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.valueAvailableStock == e2?.valueAvailableStock &&
        e1?.productPrice == e2?.productPrice;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.availableStock,
        e?.isActive,
        e?.productDescription,
        e?.productId,
        e?.productImageUrl,
        e?.productName,
        e?.productNameSmall,
        e?.productPortalId,
        e?.valueAvailableStock,
        e?.productPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
