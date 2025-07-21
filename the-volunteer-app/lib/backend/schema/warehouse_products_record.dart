import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WarehouseProductsRecord extends FirestoreRecord {
  WarehouseProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  bool hasProductDescription() => _productDescription != null;

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

  // "productAssignedToVolunteers" field.
  int? _productAssignedToVolunteers;
  int get productAssignedToVolunteers => _productAssignedToVolunteers ?? 0;
  bool hasProductAssignedToVolunteers() => _productAssignedToVolunteers != null;

  // "productPrice" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productId = snapshotData['productId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _productName = snapshotData['productName'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _productDescription = snapshotData['productDescription'] as String?;
    _productAvailableStock =
        castToType<int>(snapshotData['productAvailableStock']);
    _productReservedForOnlineOrders =
        castToType<int>(snapshotData['productReservedForOnlineOrders']);
    _productAssignedToVolunteers =
        castToType<int>(snapshotData['productAssignedToVolunteers']);
    _productPrice = castToType<double>(snapshotData['productPrice']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('warehouseProducts')
          : FirebaseFirestore.instance.collectionGroup('warehouseProducts');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('warehouseProducts').doc(id);

  static Stream<WarehouseProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WarehouseProductsRecord.fromSnapshot(s));

  static Future<WarehouseProductsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => WarehouseProductsRecord.fromSnapshot(s));

  static WarehouseProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WarehouseProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WarehouseProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WarehouseProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WarehouseProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WarehouseProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWarehouseProductsRecordData({
  String? productId,
  bool? isActive,
  String? productName,
  String? productImageUrl,
  String? productDescription,
  int? productAvailableStock,
  int? productReservedForOnlineOrders,
  int? productAssignedToVolunteers,
  double? productPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productId': productId,
      'isActive': isActive,
      'productName': productName,
      'productImageUrl': productImageUrl,
      'productDescription': productDescription,
      'productAvailableStock': productAvailableStock,
      'productReservedForOnlineOrders': productReservedForOnlineOrders,
      'productAssignedToVolunteers': productAssignedToVolunteers,
      'productPrice': productPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class WarehouseProductsRecordDocumentEquality
    implements Equality<WarehouseProductsRecord> {
  const WarehouseProductsRecordDocumentEquality();

  @override
  bool equals(WarehouseProductsRecord? e1, WarehouseProductsRecord? e2) {
    return e1?.productId == e2?.productId &&
        e1?.isActive == e2?.isActive &&
        e1?.productName == e2?.productName &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.productDescription == e2?.productDescription &&
        e1?.productAvailableStock == e2?.productAvailableStock &&
        e1?.productReservedForOnlineOrders ==
            e2?.productReservedForOnlineOrders &&
        e1?.productAssignedToVolunteers == e2?.productAssignedToVolunteers &&
        e1?.productPrice == e2?.productPrice;
  }

  @override
  int hash(WarehouseProductsRecord? e) => const ListEquality().hash([
        e?.productId,
        e?.isActive,
        e?.productName,
        e?.productImageUrl,
        e?.productDescription,
        e?.productAvailableStock,
        e?.productReservedForOnlineOrders,
        e?.productAssignedToVolunteers,
        e?.productPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is WarehouseProductsRecord;
}
