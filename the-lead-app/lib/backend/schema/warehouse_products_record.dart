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

  // "warehouseProductId" field.
  String? _warehouseProductId;
  String get warehouseProductId => _warehouseProductId ?? '';
  bool hasWarehouseProductId() => _warehouseProductId != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "warehousePortalId" field.
  String? _warehousePortalId;
  String get warehousePortalId => _warehousePortalId ?? '';
  bool hasWarehousePortalId() => _warehousePortalId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "onlineStock" field.
  int? _onlineStock;
  int get onlineStock => _onlineStock ?? 0;
  bool hasOnlineStock() => _onlineStock != null;

  // "offlineStock" field.
  int? _offlineStock;
  int get offlineStock => _offlineStock ?? 0;
  bool hasOfflineStock() => _offlineStock != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "updateDate" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "totalStock" field.
  int? _totalStock;
  int get totalStock => _totalStock ?? 0;
  bool hasTotalStock() => _totalStock != null;

  void _initializeFields() {
    _warehouseProductId = snapshotData['warehouseProductId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _warehousePortalId = snapshotData['warehousePortalId'] as String?;
    _name = snapshotData['name'] as String?;
    _onlineStock = castToType<int>(snapshotData['onlineStock']);
    _offlineStock = castToType<int>(snapshotData['offlineStock']);
    _warehouseId = snapshotData['warehouseId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _totalStock = castToType<int>(snapshotData['totalStock']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('warehouse_products');

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
  String? warehouseProductId,
  bool? isActive,
  String? imageUrl,
  double? price,
  DocumentReference? warehouseRef,
  String? productPortalId,
  String? warehousePortalId,
  String? name,
  int? onlineStock,
  int? offlineStock,
  String? warehouseId,
  String? createdBy,
  DateTime? createdDate,
  DateTime? updateDate,
  String? updatedBy,
  String? status,
  String? notes,
  int? totalStock,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'warehouseProductId': warehouseProductId,
      'isActive': isActive,
      'imageUrl': imageUrl,
      'price': price,
      'warehouseRef': warehouseRef,
      'productPortalId': productPortalId,
      'warehousePortalId': warehousePortalId,
      'name': name,
      'onlineStock': onlineStock,
      'offlineStock': offlineStock,
      'warehouseId': warehouseId,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updateDate': updateDate,
      'updatedBy': updatedBy,
      'status': status,
      'notes': notes,
      'totalStock': totalStock,
    }.withoutNulls,
  );

  return firestoreData;
}

class WarehouseProductsRecordDocumentEquality
    implements Equality<WarehouseProductsRecord> {
  const WarehouseProductsRecordDocumentEquality();

  @override
  bool equals(WarehouseProductsRecord? e1, WarehouseProductsRecord? e2) {
    return e1?.warehouseProductId == e2?.warehouseProductId &&
        e1?.isActive == e2?.isActive &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.price == e2?.price &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.warehousePortalId == e2?.warehousePortalId &&
        e1?.name == e2?.name &&
        e1?.onlineStock == e2?.onlineStock &&
        e1?.offlineStock == e2?.offlineStock &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.totalStock == e2?.totalStock;
  }

  @override
  int hash(WarehouseProductsRecord? e) => const ListEquality().hash([
        e?.warehouseProductId,
        e?.isActive,
        e?.imageUrl,
        e?.price,
        e?.warehouseRef,
        e?.productPortalId,
        e?.warehousePortalId,
        e?.name,
        e?.onlineStock,
        e?.offlineStock,
        e?.warehouseId,
        e?.createdBy,
        e?.createdDate,
        e?.updateDate,
        e?.updatedBy,
        e?.status,
        e?.notes,
        e?.totalStock
      ]);

  @override
  bool isValidKey(Object? o) => o is WarehouseProductsRecord;
}
