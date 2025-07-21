import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StockMovementTransactionsRecord extends FirestoreRecord {
  StockMovementTransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fromName" field.
  String? _fromName;
  String get fromName => _fromName ?? '';
  bool hasFromName() => _fromName != null;

  // "fromId" field.
  String? _fromId;
  String get fromId => _fromId ?? '';
  bool hasFromId() => _fromId != null;

  // "toName" field.
  String? _toName;
  String get toName => _toName ?? '';
  bool hasToName() => _toName != null;

  // "toId" field.
  String? _toId;
  String get toId => _toId ?? '';
  bool hasToId() => _toId != null;

  // "fromOldQty" field.
  String? _fromOldQty;
  String get fromOldQty => _fromOldQty ?? '';
  bool hasFromOldQty() => _fromOldQty != null;

  // "toOldQty" field.
  String? _toOldQty;
  String get toOldQty => _toOldQty ?? '';
  bool hasToOldQty() => _toOldQty != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  bool hasQty() => _qty != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "productPortalId" field.
  String? _productPortalId;
  String get productPortalId => _productPortalId ?? '';
  bool hasProductPortalId() => _productPortalId != null;

  // "byUserId" field.
  String? _byUserId;
  String get byUserId => _byUserId ?? '';
  bool hasByUserId() => _byUserId != null;

  // "byUserName" field.
  String? _byUserName;
  String get byUserName => _byUserName ?? '';
  bool hasByUserName() => _byUserName != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "movementType" field.
  StockMovementEnum? _movementType;
  StockMovementEnum? get movementType => _movementType;
  bool hasMovementType() => _movementType != null;

  // "offlineSaleId" field.
  String? _offlineSaleId;
  String get offlineSaleId => _offlineSaleId ?? '';
  bool hasOfflineSaleId() => _offlineSaleId != null;

  // "deliveryId" field.
  String? _deliveryId;
  String get deliveryId => _deliveryId ?? '';
  bool hasDeliveryId() => _deliveryId != null;

  // "fromEntity" field.
  EntitiesEnum? _fromEntity;
  EntitiesEnum? get fromEntity => _fromEntity;
  bool hasFromEntity() => _fromEntity != null;

  // "toEntity" field.
  EntitiesEnum? _toEntity;
  EntitiesEnum? get toEntity => _toEntity;
  bool hasToEntity() => _toEntity != null;

  // "saleReturnedDate" field.
  DateTime? _saleReturnedDate;
  DateTime? get saleReturnedDate => _saleReturnedDate;
  bool hasSaleReturnedDate() => _saleReturnedDate != null;

  // "isSaleReturned" field.
  bool? _isSaleReturned;
  bool get isSaleReturned => _isSaleReturned ?? false;
  bool hasIsSaleReturned() => _isSaleReturned != null;

  // "forcedDelivery" field.
  String? _forcedDelivery;
  String get forcedDelivery => _forcedDelivery ?? '';
  bool hasForcedDelivery() => _forcedDelivery != null;

  // "stockType" field.
  String? _stockType;
  String get stockType => _stockType ?? '';
  bool hasStockType() => _stockType != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "stockTransferType" field.
  String? _stockTransferType;
  String get stockTransferType => _stockTransferType ?? '';
  bool hasStockTransferType() => _stockTransferType != null;

  void _initializeFields() {
    _fromName = snapshotData['fromName'] as String?;
    _fromId = snapshotData['fromId'] as String?;
    _toName = snapshotData['toName'] as String?;
    _toId = snapshotData['toId'] as String?;
    _fromOldQty = snapshotData['fromOldQty'] as String?;
    _toOldQty = snapshotData['toOldQty'] as String?;
    _qty = castToType<int>(snapshotData['qty']);
    _productName = snapshotData['productName'] as String?;
    _productPortalId = snapshotData['productPortalId'] as String?;
    _byUserId = snapshotData['byUserId'] as String?;
    _byUserName = snapshotData['byUserName'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _transactionId = snapshotData['transactionId'] as String?;
    _movementType = snapshotData['movementType'] is StockMovementEnum
        ? snapshotData['movementType']
        : deserializeEnum<StockMovementEnum>(snapshotData['movementType']);
    _offlineSaleId = snapshotData['offlineSaleId'] as String?;
    _deliveryId = snapshotData['deliveryId'] as String?;
    _fromEntity = snapshotData['fromEntity'] is EntitiesEnum
        ? snapshotData['fromEntity']
        : deserializeEnum<EntitiesEnum>(snapshotData['fromEntity']);
    _toEntity = snapshotData['toEntity'] is EntitiesEnum
        ? snapshotData['toEntity']
        : deserializeEnum<EntitiesEnum>(snapshotData['toEntity']);
    _saleReturnedDate = snapshotData['saleReturnedDate'] as DateTime?;
    _isSaleReturned = snapshotData['isSaleReturned'] as bool?;
    _forcedDelivery = snapshotData['forcedDelivery'] as String?;
    _stockType = snapshotData['stockType'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _status = snapshotData['status'] as String?;
    _notes = snapshotData['notes'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _stockTransferType = snapshotData['stockTransferType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stockMovementTransactions');

  static Stream<StockMovementTransactionsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => StockMovementTransactionsRecord.fromSnapshot(s));

  static Future<StockMovementTransactionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => StockMovementTransactionsRecord.fromSnapshot(s));

  static StockMovementTransactionsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      StockMovementTransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StockMovementTransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StockMovementTransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StockMovementTransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StockMovementTransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStockMovementTransactionsRecordData({
  String? fromName,
  String? fromId,
  String? toName,
  String? toId,
  String? fromOldQty,
  String? toOldQty,
  int? qty,
  String? productName,
  String? productPortalId,
  String? byUserId,
  String? byUserName,
  DateTime? createdDate,
  String? transactionId,
  StockMovementEnum? movementType,
  String? offlineSaleId,
  String? deliveryId,
  EntitiesEnum? fromEntity,
  EntitiesEnum? toEntity,
  DateTime? saleReturnedDate,
  bool? isSaleReturned,
  String? forcedDelivery,
  String? stockType,
  String? warehouseId,
  String? createdBy,
  String? status,
  String? notes,
  bool? isActive,
  String? stockTransferType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fromName': fromName,
      'fromId': fromId,
      'toName': toName,
      'toId': toId,
      'fromOldQty': fromOldQty,
      'toOldQty': toOldQty,
      'qty': qty,
      'productName': productName,
      'productPortalId': productPortalId,
      'byUserId': byUserId,
      'byUserName': byUserName,
      'createdDate': createdDate,
      'transactionId': transactionId,
      'movementType': movementType,
      'offlineSaleId': offlineSaleId,
      'deliveryId': deliveryId,
      'fromEntity': fromEntity,
      'toEntity': toEntity,
      'saleReturnedDate': saleReturnedDate,
      'isSaleReturned': isSaleReturned,
      'forcedDelivery': forcedDelivery,
      'stockType': stockType,
      'warehouseId': warehouseId,
      'createdBy': createdBy,
      'status': status,
      'notes': notes,
      'isActive': isActive,
      'stockTransferType': stockTransferType,
    }.withoutNulls,
  );

  return firestoreData;
}

class StockMovementTransactionsRecordDocumentEquality
    implements Equality<StockMovementTransactionsRecord> {
  const StockMovementTransactionsRecordDocumentEquality();

  @override
  bool equals(StockMovementTransactionsRecord? e1,
      StockMovementTransactionsRecord? e2) {
    return e1?.fromName == e2?.fromName &&
        e1?.fromId == e2?.fromId &&
        e1?.toName == e2?.toName &&
        e1?.toId == e2?.toId &&
        e1?.fromOldQty == e2?.fromOldQty &&
        e1?.toOldQty == e2?.toOldQty &&
        e1?.qty == e2?.qty &&
        e1?.productName == e2?.productName &&
        e1?.productPortalId == e2?.productPortalId &&
        e1?.byUserId == e2?.byUserId &&
        e1?.byUserName == e2?.byUserName &&
        e1?.createdDate == e2?.createdDate &&
        e1?.transactionId == e2?.transactionId &&
        e1?.movementType == e2?.movementType &&
        e1?.offlineSaleId == e2?.offlineSaleId &&
        e1?.deliveryId == e2?.deliveryId &&
        e1?.fromEntity == e2?.fromEntity &&
        e1?.toEntity == e2?.toEntity &&
        e1?.saleReturnedDate == e2?.saleReturnedDate &&
        e1?.isSaleReturned == e2?.isSaleReturned &&
        e1?.forcedDelivery == e2?.forcedDelivery &&
        e1?.stockType == e2?.stockType &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.status == e2?.status &&
        e1?.notes == e2?.notes &&
        e1?.isActive == e2?.isActive &&
        e1?.stockTransferType == e2?.stockTransferType;
  }

  @override
  int hash(StockMovementTransactionsRecord? e) => const ListEquality().hash([
        e?.fromName,
        e?.fromId,
        e?.toName,
        e?.toId,
        e?.fromOldQty,
        e?.toOldQty,
        e?.qty,
        e?.productName,
        e?.productPortalId,
        e?.byUserId,
        e?.byUserName,
        e?.createdDate,
        e?.transactionId,
        e?.movementType,
        e?.offlineSaleId,
        e?.deliveryId,
        e?.fromEntity,
        e?.toEntity,
        e?.saleReturnedDate,
        e?.isSaleReturned,
        e?.forcedDelivery,
        e?.stockType,
        e?.warehouseId,
        e?.createdBy,
        e?.status,
        e?.notes,
        e?.isActive,
        e?.stockTransferType
      ]);

  @override
  bool isValidKey(Object? o) => o is StockMovementTransactionsRecord;
}
