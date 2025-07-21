import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeliveryItemsRecord extends FirestoreRecord {
  DeliveryItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "batchRef" field.
  DocumentReference? _batchRef;
  DocumentReference? get batchRef => _batchRef;
  bool hasBatchRef() => _batchRef != null;

  // "deliveryItemId" field.
  String? _deliveryItemId;
  String get deliveryItemId => _deliveryItemId ?? '';
  bool hasDeliveryItemId() => _deliveryItemId != null;

  // "deliveryRef" field.
  DocumentReference? _deliveryRef;
  DocumentReference? get deliveryRef => _deliveryRef;
  bool hasDeliveryRef() => _deliveryRef != null;

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productSku" field.
  String? _productSku;
  String get productSku => _productSku ?? '';
  bool hasProductSku() => _productSku != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "productPrice" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  bool hasProductPrice() => _productPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "forcedDelivery" field.
  String? _forcedDelivery;
  String get forcedDelivery => _forcedDelivery ?? '';
  bool hasForcedDelivery() => _forcedDelivery != null;

  // "batchId" field.
  String? _batchId;
  String get batchId => _batchId ?? '';
  bool hasBatchId() => _batchId != null;

  // "delveryId" field.
  String? _delveryId;
  String get delveryId => _delveryId ?? '';
  bool hasDelveryId() => _delveryId != null;

  // "volunteerId" field.
  String? _volunteerId;
  String get volunteerId => _volunteerId ?? '';
  bool hasVolunteerId() => _volunteerId != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

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

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  void _initializeFields() {
    _batchRef = snapshotData['batchRef'] as DocumentReference?;
    _deliveryItemId = snapshotData['deliveryItemId'] as String?;
    _deliveryRef = snapshotData['deliveryRef'] as DocumentReference?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
    _productName = snapshotData['productName'] as String?;
    _productSku = snapshotData['productSku'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _productPrice = castToType<double>(snapshotData['productPrice']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _forcedDelivery = snapshotData['forcedDelivery'] as String?;
    _batchId = snapshotData['batchId'] as String?;
    _delveryId = snapshotData['delveryId'] as String?;
    _volunteerId = snapshotData['volunteerId'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _orderId = snapshotData['orderId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _orderNumber = snapshotData['orderNumber'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deliveryItems');

  static Stream<DeliveryItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeliveryItemsRecord.fromSnapshot(s));

  static Future<DeliveryItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DeliveryItemsRecord.fromSnapshot(s));

  static DeliveryItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeliveryItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeliveryItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeliveryItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeliveryItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeliveryItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeliveryItemsRecordData({
  DocumentReference? batchRef,
  String? deliveryItemId,
  DocumentReference? deliveryRef,
  bool? isDelivered,
  String? productName,
  String? productSku,
  String? productImageUrl,
  String? productPortalId,
  double? productPrice,
  int? quantity,
  DocumentReference? volunteerRef,
  String? forcedDelivery,
  String? batchId,
  String? delveryId,
  String? volunteerId,
  String? warehouseId,
  String? orderId,
  bool? isActive,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
  String? orderNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'batchRef': batchRef,
      'deliveryItemId': deliveryItemId,
      'deliveryRef': deliveryRef,
      'isDelivered': isDelivered,
      'productName': productName,
      'productSku': productSku,
      'productImageUrl': productImageUrl,
      'productPortalId': productPortalId,
      'productPrice': productPrice,
      'quantity': quantity,
      'volunteerRef': volunteerRef,
      'forcedDelivery': forcedDelivery,
      'batchId': batchId,
      'delveryId': delveryId,
      'volunteerId': volunteerId,
      'warehouseId': warehouseId,
      'orderId': orderId,
      'isActive': isActive,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
      'orderNumber': orderNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeliveryItemsRecordDocumentEquality
    implements Equality<DeliveryItemsRecord> {
  const DeliveryItemsRecordDocumentEquality();

  @override
  bool equals(DeliveryItemsRecord? e1, DeliveryItemsRecord? e2) {
    return e1?.batchRef == e2?.batchRef &&
        e1?.deliveryItemId == e2?.deliveryItemId &&
        e1?.deliveryRef == e2?.deliveryRef &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.productName == e2?.productName &&
        e1?.productSku == e2?.productSku &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.productPrice == e2?.productPrice &&
        e1?.quantity == e2?.quantity &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.forcedDelivery == e2?.forcedDelivery &&
        e1?.batchId == e2?.batchId &&
        e1?.delveryId == e2?.delveryId &&
        e1?.volunteerId == e2?.volunteerId &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.orderId == e2?.orderId &&
        e1?.isActive == e2?.isActive &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.orderNumber == e2?.orderNumber;
  }

  @override
  int hash(DeliveryItemsRecord? e) => const ListEquality().hash([
        e?.batchRef,
        e?.deliveryItemId,
        e?.deliveryRef,
        e?.isDelivered,
        e?.productName,
        e?.productSku,
        e?.productImageUrl,
        e?.productPortalId,
        e?.productPrice,
        e?.quantity,
        e?.volunteerRef,
        e?.forcedDelivery,
        e?.batchId,
        e?.delveryId,
        e?.volunteerId,
        e?.warehouseId,
        e?.orderId,
        e?.isActive,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes,
        e?.orderNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is DeliveryItemsRecord;
}
