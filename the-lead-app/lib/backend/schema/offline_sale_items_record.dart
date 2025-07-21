import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfflineSaleItemsRecord extends FirestoreRecord {
  OfflineSaleItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "offlineSaleItemId" field.
  String? _offlineSaleItemId;
  String get offlineSaleItemId => _offlineSaleItemId ?? '';
  bool hasOfflineSaleItemId() => _offlineSaleItemId != null;

  // "offlineSaleRef" field.
  DocumentReference? _offlineSaleRef;
  DocumentReference? get offlineSaleRef => _offlineSaleRef;
  bool hasOfflineSaleRef() => _offlineSaleRef != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  bool hasQty() => _qty != null;

  // "unitPrice" field.
  double? _unitPrice;
  double get unitPrice => _unitPrice ?? 0.0;
  bool hasUnitPrice() => _unitPrice != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "isSaleReturned" field.
  bool? _isSaleReturned;
  bool get isSaleReturned => _isSaleReturned ?? false;
  bool hasIsSaleReturned() => _isSaleReturned != null;

  // "assignedWarehouse" field.
  String? _assignedWarehouse;
  String get assignedWarehouse => _assignedWarehouse ?? '';
  bool hasAssignedWarehouse() => _assignedWarehouse != null;

  // "isWarehouseAdded" field.
  bool? _isWarehouseAdded;
  bool get isWarehouseAdded => _isWarehouseAdded ?? false;
  bool hasIsWarehouseAdded() => _isWarehouseAdded != null;

  // "offlineSaleId" field.
  String? _offlineSaleId;
  String get offlineSaleId => _offlineSaleId ?? '';
  bool hasOfflineSaleId() => _offlineSaleId != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

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

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _offlineSaleItemId = snapshotData['offlineSaleItemId'] as String?;
    _offlineSaleRef = snapshotData['offlineSaleRef'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _qty = castToType<int>(snapshotData['qty']);
    _unitPrice = castToType<double>(snapshotData['unitPrice']);
    _productPortalId = snapshotData['productPortalId'] as String?;
    _isSaleReturned = snapshotData['isSaleReturned'] as bool?;
    _assignedWarehouse = snapshotData['assignedWarehouse'] as String?;
    _isWarehouseAdded = snapshotData['isWarehouseAdded'] as bool?;
    _offlineSaleId = snapshotData['offlineSaleId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offlineSaleItems');

  static Stream<OfflineSaleItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfflineSaleItemsRecord.fromSnapshot(s));

  static Future<OfflineSaleItemsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => OfflineSaleItemsRecord.fromSnapshot(s));

  static OfflineSaleItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfflineSaleItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfflineSaleItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfflineSaleItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfflineSaleItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfflineSaleItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfflineSaleItemsRecordData({
  DateTime? createdDate,
  String? offlineSaleItemId,
  DocumentReference? offlineSaleRef,
  String? name,
  String? description,
  String? imageUrl,
  int? qty,
  double? unitPrice,
  String? productPortalId,
  bool? isSaleReturned,
  String? assignedWarehouse,
  bool? isWarehouseAdded,
  String? offlineSaleId,
  String? createdBy,
  bool? isActive,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
  String? warehouseId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'offlineSaleItemId': offlineSaleItemId,
      'offlineSaleRef': offlineSaleRef,
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'qty': qty,
      'unitPrice': unitPrice,
      'productPortalId': productPortalId,
      'isSaleReturned': isSaleReturned,
      'assignedWarehouse': assignedWarehouse,
      'isWarehouseAdded': isWarehouseAdded,
      'offlineSaleId': offlineSaleId,
      'createdBy': createdBy,
      'isActive': isActive,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
      'warehouseId': warehouseId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfflineSaleItemsRecordDocumentEquality
    implements Equality<OfflineSaleItemsRecord> {
  const OfflineSaleItemsRecordDocumentEquality();

  @override
  bool equals(OfflineSaleItemsRecord? e1, OfflineSaleItemsRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.offlineSaleItemId == e2?.offlineSaleItemId &&
        e1?.offlineSaleRef == e2?.offlineSaleRef &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.qty == e2?.qty &&
        e1?.unitPrice == e2?.unitPrice &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.isSaleReturned == e2?.isSaleReturned &&
        e1?.assignedWarehouse == e2?.assignedWarehouse &&
        e1?.isWarehouseAdded == e2?.isWarehouseAdded &&
        e1?.offlineSaleId == e2?.offlineSaleId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.isActive == e2?.isActive &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.warehouseId == e2?.warehouseId;
  }

  @override
  int hash(OfflineSaleItemsRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.offlineSaleItemId,
        e?.offlineSaleRef,
        e?.name,
        e?.description,
        e?.imageUrl,
        e?.qty,
        e?.unitPrice,
        e?.productPortalId,
        e?.isSaleReturned,
        e?.assignedWarehouse,
        e?.isWarehouseAdded,
        e?.offlineSaleId,
        e?.createdBy,
        e?.isActive,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes,
        e?.warehouseId
      ]);

  @override
  bool isValidKey(Object? o) => o is OfflineSaleItemsRecord;
}
