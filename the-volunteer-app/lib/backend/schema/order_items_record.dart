import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderItemsRecord extends FirestoreRecord {
  OrderItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "totalValue" field.
  double? _totalValue;
  double get totalValue => _totalValue ?? 0.0;
  bool hasTotalValue() => _totalValue != null;

  // "orderRef" field.
  DocumentReference? _orderRef;
  DocumentReference? get orderRef => _orderRef;
  bool hasOrderRef() => _orderRef != null;

  // "orderItemId" field.
  String? _orderItemId;
  String get orderItemId => _orderItemId ?? '';
  bool hasOrderItemId() => _orderItemId != null;

  // "productPrice" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "productRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "createdDate" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _imageUrl = snapshotData['imageUrl'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _productName = snapshotData['productName'] as String?;
    _totalValue = castToType<double>(snapshotData['totalValue']);
    _orderRef = snapshotData['orderRef'] as DocumentReference?;
    _orderItemId = snapshotData['orderItemId'] as String?;
    _productPrice = castToType<double>(snapshotData['productPrice']);
    _productRef = snapshotData['productRef'] as DocumentReference?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _createdDate = snapshotData['createdDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderItems');

  static Stream<OrderItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderItemsRecord.fromSnapshot(s));

  static Future<OrderItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderItemsRecord.fromSnapshot(s));

  static OrderItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderItemsRecordData({
  String? imageUrl,
  int? quantity,
  String? productName,
  double? totalValue,
  DocumentReference? orderRef,
  String? orderItemId,
  double? productPrice,
  DocumentReference? productRef,
  String? productPortalId,
  String? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'imageUrl': imageUrl,
      'quantity': quantity,
      'productName': productName,
      'totalValue': totalValue,
      'orderRef': orderRef,
      'orderItemId': orderItemId,
      'productPrice': productPrice,
      'productRef': productRef,
      'productPortalId': productPortalId,
      'createdDate': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderItemsRecordDocumentEquality implements Equality<OrderItemsRecord> {
  const OrderItemsRecordDocumentEquality();

  @override
  bool equals(OrderItemsRecord? e1, OrderItemsRecord? e2) {
    return e1?.imageUrl == e2?.imageUrl &&
        e1?.quantity == e2?.quantity &&
        e1?.productName == e2?.productName &&
        e1?.totalValue == e2?.totalValue &&
        e1?.orderRef == e2?.orderRef &&
        e1?.orderItemId == e2?.orderItemId &&
        e1?.productPrice == e2?.productPrice &&
        e1?.productRef == e2?.productRef &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(OrderItemsRecord? e) => const ListEquality().hash([
        e?.imageUrl,
        e?.quantity,
        e?.productName,
        e?.totalValue,
        e?.orderRef,
        e?.orderItemId,
        e?.productPrice,
        e?.productRef,
        e?.productPortalId,
        e?.createdDate
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderItemsRecord;
}
