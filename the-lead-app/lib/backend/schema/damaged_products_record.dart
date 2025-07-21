import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DamagedProductsRecord extends FirestoreRecord {
  DamagedProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "damagedProductId" field.
  String? _damagedProductId;
  String get damagedProductId => _damagedProductId ?? '';
  bool hasDamagedProductId() => _damagedProductId != null;

  // "approvedByUserRef" field.
  DocumentReference? _approvedByUserRef;
  DocumentReference? get approvedByUserRef => _approvedByUserRef;
  bool hasApprovedByUserRef() => _approvedByUserRef != null;

  // "damagedByUserRef" field.
  DocumentReference? _damagedByUserRef;
  DocumentReference? get damagedByUserRef => _damagedByUserRef;
  bool hasDamagedByUserRef() => _damagedByUserRef != null;

  // "damagedDate" field.
  DateTime? _damagedDate;
  DateTime? get damagedDate => _damagedDate;
  bool hasDamagedDate() => _damagedDate != null;

  // "approvedDate" field.
  DateTime? _approvedDate;
  DateTime? get approvedDate => _approvedDate;
  bool hasApprovedDate() => _approvedDate != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  bool hasQty() => _qty != null;

  // "totalValue" field.
  double? _totalValue;
  double get totalValue => _totalValue ?? 0.0;
  bool hasTotalValue() => _totalValue != null;

  // "unitPrice" field.
  double? _unitPrice;
  double get unitPrice => _unitPrice ?? 0.0;
  bool hasUnitPrice() => _unitPrice != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "warehouseName" field.
  String? _warehouseName;
  String get warehouseName => _warehouseName ?? '';
  bool hasWarehouseName() => _warehouseName != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "isOnline" field.
  bool? _isOnline;
  bool get isOnline => _isOnline ?? false;
  bool hasIsOnline() => _isOnline != null;

  // "damagedBy" field.
  String? _damagedBy;
  String get damagedBy => _damagedBy ?? '';
  bool hasDamagedBy() => _damagedBy != null;

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

  // "stockType" field.
  String? _stockType;
  String get stockType => _stockType ?? '';
  bool hasStockType() => _stockType != null;

  void _initializeFields() {
    _damagedProductId = snapshotData['damagedProductId'] as String?;
    _approvedByUserRef =
        snapshotData['approvedByUserRef'] as DocumentReference?;
    _damagedByUserRef = snapshotData['damagedByUserRef'] as DocumentReference?;
    _damagedDate = snapshotData['damagedDate'] as DateTime?;
    _approvedDate = snapshotData['approvedDate'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _name = snapshotData['name'] as String?;
    _qty = castToType<int>(snapshotData['qty']);
    _totalValue = castToType<double>(snapshotData['totalValue']);
    _unitPrice = castToType<double>(snapshotData['unitPrice']);
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _isActive = snapshotData['isActive'] as bool?;
    _warehouseName = snapshotData['warehouseName'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _userId = snapshotData['userId'] as String?;
    _isOnline = snapshotData['isOnline'] as bool?;
    _damagedBy = snapshotData['damagedBy'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _stockType = snapshotData['stockType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('damagedProducts');

  static Stream<DamagedProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DamagedProductsRecord.fromSnapshot(s));

  static Future<DamagedProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DamagedProductsRecord.fromSnapshot(s));

  static DamagedProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DamagedProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DamagedProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DamagedProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DamagedProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DamagedProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDamagedProductsRecordData({
  String? damagedProductId,
  DocumentReference? approvedByUserRef,
  DocumentReference? damagedByUserRef,
  DateTime? damagedDate,
  DateTime? approvedDate,
  String? description,
  String? imageUrl,
  String? name,
  int? qty,
  double? totalValue,
  double? unitPrice,
  DocumentReference? warehouseRef,
  bool? isActive,
  String? warehouseName,
  String? productPortalId,
  String? userId,
  bool? isOnline,
  String? damagedBy,
  String? warehouseId,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
  String? stockType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'damagedProductId': damagedProductId,
      'approvedByUserRef': approvedByUserRef,
      'damagedByUserRef': damagedByUserRef,
      'damagedDate': damagedDate,
      'approvedDate': approvedDate,
      'description': description,
      'imageUrl': imageUrl,
      'name': name,
      'qty': qty,
      'totalValue': totalValue,
      'unitPrice': unitPrice,
      'warehouseRef': warehouseRef,
      'isActive': isActive,
      'warehouseName': warehouseName,
      'productPortalId': productPortalId,
      'userId': userId,
      'isOnline': isOnline,
      'damagedBy': damagedBy,
      'warehouseId': warehouseId,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
      'stockType': stockType,
    }.withoutNulls,
  );

  return firestoreData;
}

class DamagedProductsRecordDocumentEquality
    implements Equality<DamagedProductsRecord> {
  const DamagedProductsRecordDocumentEquality();

  @override
  bool equals(DamagedProductsRecord? e1, DamagedProductsRecord? e2) {
    return e1?.damagedProductId == e2?.damagedProductId &&
        e1?.approvedByUserRef == e2?.approvedByUserRef &&
        e1?.damagedByUserRef == e2?.damagedByUserRef &&
        e1?.damagedDate == e2?.damagedDate &&
        e1?.approvedDate == e2?.approvedDate &&
        e1?.description == e2?.description &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.name == e2?.name &&
        e1?.qty == e2?.qty &&
        e1?.totalValue == e2?.totalValue &&
        e1?.unitPrice == e2?.unitPrice &&
        e1?.warehouseRef == e2?.warehouseRef &&
        e1?.isActive == e2?.isActive &&
        e1?.warehouseName == e2?.warehouseName &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.userId == e2?.userId &&
        e1?.isOnline == e2?.isOnline &&
        e1?.damagedBy == e2?.damagedBy &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.stockType == e2?.stockType;
  }

  @override
  int hash(DamagedProductsRecord? e) => const ListEquality().hash([
        e?.damagedProductId,
        e?.approvedByUserRef,
        e?.damagedByUserRef,
        e?.damagedDate,
        e?.approvedDate,
        e?.description,
        e?.imageUrl,
        e?.name,
        e?.qty,
        e?.totalValue,
        e?.unitPrice,
        e?.warehouseRef,
        e?.isActive,
        e?.warehouseName,
        e?.productPortalId,
        e?.userId,
        e?.isOnline,
        e?.damagedBy,
        e?.warehouseId,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes,
        e?.stockType
      ]);

  @override
  bool isValidKey(Object? o) => o is DamagedProductsRecord;
}
