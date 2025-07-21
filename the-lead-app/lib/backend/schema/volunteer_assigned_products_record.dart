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

  // "volunteerAssignedProductId" field.
  String? _volunteerAssignedProductId;
  String get volunteerAssignedProductId => _volunteerAssignedProductId ?? '';
  bool hasVolunteerAssignedProductId() => _volunteerAssignedProductId != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "Name" field.
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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "warehouseProductRef" field.
  DocumentReference? _warehouseProductRef;
  DocumentReference? get warehouseProductRef => _warehouseProductRef;
  bool hasWarehouseProductRef() => _warehouseProductRef != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "volunteerId" field.
  String? _volunteerId;
  String get volunteerId => _volunteerId ?? '';
  bool hasVolunteerId() => _volunteerId != null;

  // "offlineStock" field.
  int? _offlineStock;
  int get offlineStock => _offlineStock ?? 0;
  bool hasOfflineStock() => _offlineStock != null;

  // "onlineStock" field.
  int? _onlineStock;
  int get onlineStock => _onlineStock ?? 0;
  bool hasOnlineStock() => _onlineStock != null;

  // "totalStock" field.
  int? _totalStock;
  int get totalStock => _totalStock ?? 0;
  bool hasTotalStock() => _totalStock != null;

  // "warehouseProductId" field.
  String? _warehouseProductId;
  String get warehouseProductId => _warehouseProductId ?? '';
  bool hasWarehouseProductId() => _warehouseProductId != null;

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

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "warehousePortalId" field.
  String? _warehousePortalId;
  String get warehousePortalId => _warehousePortalId ?? '';
  bool hasWarehousePortalId() => _warehousePortalId != null;

  void _initializeFields() {
    _volunteerAssignedProductId =
        snapshotData['volunteerAssignedProductId'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['description'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _warehouseProductRef =
        snapshotData['warehouseProductRef'] as DocumentReference?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _volunteerId = snapshotData['volunteerId'] as String?;
    _offlineStock = castToType<int>(snapshotData['offlineStock']);
    _onlineStock = castToType<int>(snapshotData['onlineStock']);
    _totalStock = castToType<int>(snapshotData['totalStock']);
    _warehouseProductId = snapshotData['warehouseProductId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _warehousePortalId = snapshotData['warehousePortalId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('volunteer_assignedProducts');

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
  String? volunteerAssignedProductId,
  bool? isActive,
  String? name,
  String? description,
  String? imageUrl,
  double? price,
  DocumentReference? volunteerRef,
  DocumentReference? warehouseProductRef,
  String? productPortalId,
  String? volunteerId,
  int? offlineStock,
  int? onlineStock,
  int? totalStock,
  String? warehouseProductId,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
  String? warehouseId,
  String? warehousePortalId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'volunteerAssignedProductId': volunteerAssignedProductId,
      'isActive': isActive,
      'Name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'volunteerRef': volunteerRef,
      'warehouseProductRef': warehouseProductRef,
      'productPortalId': productPortalId,
      'volunteerId': volunteerId,
      'offlineStock': offlineStock,
      'onlineStock': onlineStock,
      'totalStock': totalStock,
      'warehouseProductId': warehouseProductId,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
      'warehouseId': warehouseId,
      'warehousePortalId': warehousePortalId,
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
    return e1?.volunteerAssignedProductId == e2?.volunteerAssignedProductId &&
        e1?.isActive == e2?.isActive &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.price == e2?.price &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.warehouseProductRef == e2?.warehouseProductRef &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.volunteerId == e2?.volunteerId &&
        e1?.offlineStock == e2?.offlineStock &&
        e1?.onlineStock == e2?.onlineStock &&
        e1?.totalStock == e2?.totalStock &&
        e1?.warehouseProductId == e2?.warehouseProductId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.warehousePortalId == e2?.warehousePortalId;
  }

  @override
  int hash(VolunteerAssignedProductsRecord? e) => const ListEquality().hash([
        e?.volunteerAssignedProductId,
        e?.isActive,
        e?.name,
        e?.description,
        e?.imageUrl,
        e?.price,
        e?.volunteerRef,
        e?.warehouseProductRef,
        e?.productPortalId,
        e?.volunteerId,
        e?.offlineStock,
        e?.onlineStock,
        e?.totalStock,
        e?.warehouseProductId,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes,
        e?.warehouseId,
        e?.warehousePortalId
      ]);

  @override
  bool isValidKey(Object? o) => o is VolunteerAssignedProductsRecord;
}
