import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminProductsRecord extends FirestoreRecord {
  AdminProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "availableStock" field.
  int? _availableStock;
  int get availableStock => _availableStock ?? 0;
  bool hasAvailableStock() => _availableStock != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "adminProductId" field.
  String? _adminProductId;
  String get adminProductId => _adminProductId ?? '';
  bool hasAdminProductId() => _adminProductId != null;

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

  void _initializeFields() {
    _availableStock = castToType<int>(snapshotData['availableStock']);
    _imageUrl = snapshotData['imageUrl'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _productPortalId = snapshotData['productPortalId'] as String?;
    _adminProductId = snapshotData['adminProductId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminProducts');

  static Stream<AdminProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminProductsRecord.fromSnapshot(s));

  static Future<AdminProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminProductsRecord.fromSnapshot(s));

  static AdminProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminProductsRecordData({
  int? availableStock,
  String? imageUrl,
  bool? isActive,
  String? name,
  double? price,
  String? productPortalId,
  String? adminProductId,
  String? createdBy,
  DateTime? createdDate,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'availableStock': availableStock,
      'imageUrl': imageUrl,
      'isActive': isActive,
      'name': name,
      'price': price,
      'productPortalId': productPortalId,
      'adminProductId': adminProductId,
      'createdBy': createdBy,
      'createdDate': createdDate,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminProductsRecordDocumentEquality
    implements Equality<AdminProductsRecord> {
  const AdminProductsRecordDocumentEquality();

  @override
  bool equals(AdminProductsRecord? e1, AdminProductsRecord? e2) {
    return e1?.availableStock == e2?.availableStock &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.isActive == e2?.isActive &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.adminProductId == e2?.adminProductId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdDate == e2?.createdDate &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(AdminProductsRecord? e) => const ListEquality().hash([
        e?.availableStock,
        e?.imageUrl,
        e?.isActive,
        e?.name,
        e?.price,
        e?.productPortalId,
        e?.adminProductId,
        e?.createdBy,
        e?.createdDate,
        e?.updatedBy,
        e?.updateDate,
        e?.status,
        e?.notes
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminProductsRecord;
}
