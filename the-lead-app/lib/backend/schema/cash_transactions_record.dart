import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CashTransactionsRecord extends FirestoreRecord {
  CashTransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "transactionNumber" field.
  String? _transactionNumber;
  String get transactionNumber => _transactionNumber ?? '';
  bool hasTransactionNumber() => _transactionNumber != null;

  // "isOutstanding" field.
  bool? _isOutstanding;
  bool get isOutstanding => _isOutstanding ?? false;
  bool hasIsOutstanding() => _isOutstanding != null;

  // "fromUserType" field.
  String? _fromUserType;
  String get fromUserType => _fromUserType ?? '';
  bool hasFromUserType() => _fromUserType != null;

  // "fromName" field.
  String? _fromName;
  String get fromName => _fromName ?? '';
  bool hasFromName() => _fromName != null;

  // "fromUserId" field.
  String? _fromUserId;
  String get fromUserId => _fromUserId ?? '';
  bool hasFromUserId() => _fromUserId != null;

  // "toUserType" field.
  String? _toUserType;
  String get toUserType => _toUserType ?? '';
  bool hasToUserType() => _toUserType != null;

  // "toUserName" field.
  String? _toUserName;
  String get toUserName => _toUserName ?? '';
  bool hasToUserName() => _toUserName != null;

  // "toUserId" field.
  String? _toUserId;
  String get toUserId => _toUserId ?? '';
  bool hasToUserId() => _toUserId != null;

  // "warehouseName" field.
  String? _warehouseName;
  String get warehouseName => _warehouseName ?? '';
  bool hasWarehouseName() => _warehouseName != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "proofDocUrls" field.
  List<String>? _proofDocUrls;
  List<String> get proofDocUrls => _proofDocUrls ?? const [];
  bool hasProofDocUrls() => _proofDocUrls != null;

  // "isConfirmed" field.
  bool? _isConfirmed;
  bool get isConfirmed => _isConfirmed ?? false;
  bool hasIsConfirmed() => _isConfirmed != null;

  // "confirmedDate" field.
  DateTime? _confirmedDate;
  DateTime? get confirmedDate => _confirmedDate;
  bool hasConfirmedDate() => _confirmedDate != null;

  // "confirmedByName" field.
  String? _confirmedByName;
  String get confirmedByName => _confirmedByName ?? '';
  bool hasConfirmedByName() => _confirmedByName != null;

  // "confirmedById" field.
  String? _confirmedById;
  String get confirmedById => _confirmedById ?? '';
  bool hasConfirmedById() => _confirmedById != null;

  // "isOfflineSale" field.
  bool? _isOfflineSale;
  bool get isOfflineSale => _isOfflineSale ?? false;
  bool hasIsOfflineSale() => _isOfflineSale != null;

  // "offlineSaleId" field.
  String? _offlineSaleId;
  String get offlineSaleId => _offlineSaleId ?? '';
  bool hasOfflineSaleId() => _offlineSaleId != null;

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

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "movementType" field.
  CashTransactionsEnum? _movementType;
  CashTransactionsEnum? get movementType => _movementType;
  bool hasMovementType() => _movementType != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "paymentDate" field.
  DateTime? _paymentDate;
  DateTime? get paymentDate => _paymentDate;
  bool hasPaymentDate() => _paymentDate != null;

  // "saleRetunDate" field.
  DateTime? _saleRetunDate;
  DateTime? get saleRetunDate => _saleRetunDate;
  bool hasSaleRetunDate() => _saleRetunDate != null;

  // "isSaleReturned" field.
  bool? _isSaleReturned;
  bool get isSaleReturned => _isSaleReturned ?? false;
  bool hasIsSaleReturned() => _isSaleReturned != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

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

  void _initializeFields() {
    _isActive = snapshotData['isActive'] as bool?;
    _transactionNumber = snapshotData['transactionNumber'] as String?;
    _isOutstanding = snapshotData['isOutstanding'] as bool?;
    _fromUserType = snapshotData['fromUserType'] as String?;
    _fromName = snapshotData['fromName'] as String?;
    _fromUserId = snapshotData['fromUserId'] as String?;
    _toUserType = snapshotData['toUserType'] as String?;
    _toUserName = snapshotData['toUserName'] as String?;
    _toUserId = snapshotData['toUserId'] as String?;
    _warehouseName = snapshotData['warehouseName'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _proofDocUrls = getDataList(snapshotData['proofDocUrls']);
    _isConfirmed = snapshotData['isConfirmed'] as bool?;
    _confirmedDate = snapshotData['confirmedDate'] as DateTime?;
    _confirmedByName = snapshotData['confirmedByName'] as String?;
    _confirmedById = snapshotData['confirmedById'] as String?;
    _isOfflineSale = snapshotData['isOfflineSale'] as bool?;
    _offlineSaleId = snapshotData['offlineSaleId'] as String?;
    _byUserId = snapshotData['byUserId'] as String?;
    _byUserName = snapshotData['byUserName'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
    _warehouseId = snapshotData['warehouseId'] as String?;
    _movementType = snapshotData['movementType'] is CashTransactionsEnum
        ? snapshotData['movementType']
        : deserializeEnum<CashTransactionsEnum>(snapshotData['movementType']);
    _transactionId = snapshotData['transactionId'] as String?;
    _paymentDate = snapshotData['paymentDate'] as DateTime?;
    _saleRetunDate = snapshotData['saleRetunDate'] as DateTime?;
    _isSaleReturned = snapshotData['isSaleReturned'] as bool?;
    _createdBy = snapshotData['createdBy'] as String?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _updateDate = snapshotData['updateDate'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cashTransactions');

  static Stream<CashTransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CashTransactionsRecord.fromSnapshot(s));

  static Future<CashTransactionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CashTransactionsRecord.fromSnapshot(s));

  static CashTransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CashTransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CashTransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CashTransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CashTransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CashTransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCashTransactionsRecordData({
  bool? isActive,
  String? transactionNumber,
  bool? isOutstanding,
  String? fromUserType,
  String? fromName,
  String? fromUserId,
  String? toUserType,
  String? toUserName,
  String? toUserId,
  String? warehouseName,
  double? amount,
  bool? isConfirmed,
  DateTime? confirmedDate,
  String? confirmedByName,
  String? confirmedById,
  bool? isOfflineSale,
  String? offlineSaleId,
  String? byUserId,
  String? byUserName,
  DateTime? createdDate,
  String? notes,
  String? warehouseId,
  CashTransactionsEnum? movementType,
  String? transactionId,
  DateTime? paymentDate,
  DateTime? saleRetunDate,
  bool? isSaleReturned,
  String? createdBy,
  String? updatedBy,
  DateTime? updateDate,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isActive': isActive,
      'transactionNumber': transactionNumber,
      'isOutstanding': isOutstanding,
      'fromUserType': fromUserType,
      'fromName': fromName,
      'fromUserId': fromUserId,
      'toUserType': toUserType,
      'toUserName': toUserName,
      'toUserId': toUserId,
      'warehouseName': warehouseName,
      'amount': amount,
      'isConfirmed': isConfirmed,
      'confirmedDate': confirmedDate,
      'confirmedByName': confirmedByName,
      'confirmedById': confirmedById,
      'isOfflineSale': isOfflineSale,
      'offlineSaleId': offlineSaleId,
      'byUserId': byUserId,
      'byUserName': byUserName,
      'createdDate': createdDate,
      'notes': notes,
      'warehouseId': warehouseId,
      'movementType': movementType,
      'transactionId': transactionId,
      'paymentDate': paymentDate,
      'saleRetunDate': saleRetunDate,
      'isSaleReturned': isSaleReturned,
      'createdBy': createdBy,
      'updatedBy': updatedBy,
      'updateDate': updateDate,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class CashTransactionsRecordDocumentEquality
    implements Equality<CashTransactionsRecord> {
  const CashTransactionsRecordDocumentEquality();

  @override
  bool equals(CashTransactionsRecord? e1, CashTransactionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.isActive == e2?.isActive &&
        e1?.transactionNumber == e2?.transactionNumber &&
        e1?.isOutstanding == e2?.isOutstanding &&
        e1?.fromUserType == e2?.fromUserType &&
        e1?.fromName == e2?.fromName &&
        e1?.fromUserId == e2?.fromUserId &&
        e1?.toUserType == e2?.toUserType &&
        e1?.toUserName == e2?.toUserName &&
        e1?.toUserId == e2?.toUserId &&
        e1?.warehouseName == e2?.warehouseName &&
        e1?.amount == e2?.amount &&
        listEquality.equals(e1?.proofDocUrls, e2?.proofDocUrls) &&
        e1?.isConfirmed == e2?.isConfirmed &&
        e1?.confirmedDate == e2?.confirmedDate &&
        e1?.confirmedByName == e2?.confirmedByName &&
        e1?.confirmedById == e2?.confirmedById &&
        e1?.isOfflineSale == e2?.isOfflineSale &&
        e1?.offlineSaleId == e2?.offlineSaleId &&
        e1?.byUserId == e2?.byUserId &&
        e1?.byUserName == e2?.byUserName &&
        e1?.createdDate == e2?.createdDate &&
        e1?.notes == e2?.notes &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.movementType == e2?.movementType &&
        e1?.transactionId == e2?.transactionId &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.saleRetunDate == e2?.saleRetunDate &&
        e1?.isSaleReturned == e2?.isSaleReturned &&
        e1?.createdBy == e2?.createdBy &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.status == e2?.status;
  }

  @override
  int hash(CashTransactionsRecord? e) => const ListEquality().hash([
        e?.isActive,
        e?.transactionNumber,
        e?.isOutstanding,
        e?.fromUserType,
        e?.fromName,
        e?.fromUserId,
        e?.toUserType,
        e?.toUserName,
        e?.toUserId,
        e?.warehouseName,
        e?.amount,
        e?.proofDocUrls,
        e?.isConfirmed,
        e?.confirmedDate,
        e?.confirmedByName,
        e?.confirmedById,
        e?.isOfflineSale,
        e?.offlineSaleId,
        e?.byUserId,
        e?.byUserName,
        e?.createdDate,
        e?.notes,
        e?.warehouseId,
        e?.movementType,
        e?.transactionId,
        e?.paymentDate,
        e?.saleRetunDate,
        e?.isSaleReturned,
        e?.createdBy,
        e?.updatedBy,
        e?.updateDate,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is CashTransactionsRecord;
}
