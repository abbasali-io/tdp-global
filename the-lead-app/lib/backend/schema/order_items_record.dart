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

  // "cost" field.
  double? _cost;
  double get cost => _cost ?? 0.0;
  bool hasCost() => _cost != null;

  // "orderItemId" field.
  String? _orderItemId;
  String get orderItemId => _orderItemId ?? '';
  bool hasOrderItemId() => _orderItemId != null;

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "productImage_url" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "productSku" field.
  String? _productSku;
  String get productSku => _productSku ?? '';
  bool hasProductSku() => _productSku != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "assignedWarehouse" field.
  String? _assignedWarehouse;
  String get assignedWarehouse => _assignedWarehouse ?? '';
  bool hasAssignedWarehouse() => _assignedWarehouse != null;

  // "isWarehouseAdded" field.
  bool? _isWarehouseAdded;
  bool get isWarehouseAdded => _isWarehouseAdded ?? false;
  bool hasIsWarehouseAdded() => _isWarehouseAdded != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

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

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  void _initializeFields() {
    _cost = castToType<double>(snapshotData['cost']);
    _orderItemId = snapshotData['orderItemId'] as String?;
    _orderNumber = snapshotData['orderNumber'] as String?;
    _productImageUrl = snapshotData['productImage_url'] as String?;
    _productName = snapshotData['productName'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _productSku = snapshotData['productSku'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _assignedWarehouse = snapshotData['assignedWarehouse'] as String?;
    _isWarehouseAdded = snapshotData['isWarehouseAdded'] as bool?;
    _orderId = snapshotData['orderId'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
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
  double? cost,
  String? orderItemId,
  String? orderNumber,
  String? productImageUrl,
  String? productName,
  String? productPortalId,
  String? productSku,
  int? quantity,
  String? assignedWarehouse,
  bool? isWarehouseAdded,
  String? orderId,
  String? warehouseId,
  bool? isActive,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
  bool? isDelivered,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cost': cost,
      'orderItemId': orderItemId,
      'orderNumber': orderNumber,
      'productImage_url': productImageUrl,
      'productName': productName,
      'productPortalId': productPortalId,
      'productSku': productSku,
      'quantity': quantity,
      'assignedWarehouse': assignedWarehouse,
      'isWarehouseAdded': isWarehouseAdded,
      'orderId': orderId,
      'warehouseId': warehouseId,
      'isActive': isActive,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
      'isDelivered': isDelivered,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderItemsRecordDocumentEquality implements Equality<OrderItemsRecord> {
  const OrderItemsRecordDocumentEquality();

  @override
  bool equals(OrderItemsRecord? e1, OrderItemsRecord? e2) {
    return e1?.cost == e2?.cost &&
        e1?.orderItemId == e2?.orderItemId &&
        e1?.orderNumber == e2?.orderNumber &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.productName == e2?.productName &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.productSku == e2?.productSku &&
        e1?.quantity == e2?.quantity &&
        e1?.assignedWarehouse == e2?.assignedWarehouse &&
        e1?.isWarehouseAdded == e2?.isWarehouseAdded &&
        e1?.orderId == e2?.orderId &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.isActive == e2?.isActive &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.isDelivered == e2?.isDelivered;
  }

  @override
  int hash(OrderItemsRecord? e) => const ListEquality().hash([
        e?.cost,
        e?.orderItemId,
        e?.orderNumber,
        e?.productImageUrl,
        e?.productName,
        e?.productPortalId,
        e?.productSku,
        e?.quantity,
        e?.assignedWarehouse,
        e?.isWarehouseAdded,
        e?.orderId,
        e?.warehouseId,
        e?.isActive,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes,
        e?.isDelivered
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderItemsRecord;
}
