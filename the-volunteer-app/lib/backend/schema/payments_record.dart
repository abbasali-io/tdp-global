import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "paymentId" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "isVolunteer" field.
  bool? _isVolunteer;
  bool get isVolunteer => _isVolunteer ?? false;
  bool hasIsVolunteer() => _isVolunteer != null;

  // "isLead" field.
  bool? _isLead;
  bool get isLead => _isLead ?? false;
  bool hasIsLead() => _isLead != null;

  // "total_offlineOrder" field.
  int? _totalOfflineOrder;
  int get totalOfflineOrder => _totalOfflineOrder ?? 0;
  bool hasTotalOfflineOrder() => _totalOfflineOrder != null;

  // "total_paymentRequestValue" field.
  double? _totalPaymentRequestValue;
  double get totalPaymentRequestValue => _totalPaymentRequestValue ?? 0.0;
  bool hasTotalPaymentRequestValue() => _totalPaymentRequestValue != null;

  // "paymentMode" field.
  String? _paymentMode;
  String get paymentMode => _paymentMode ?? '';
  bool hasPaymentMode() => _paymentMode != null;

  // "paymentRefNumber" field.
  String? _paymentRefNumber;
  String get paymentRefNumber => _paymentRefNumber ?? '';
  bool hasPaymentRefNumber() => _paymentRefNumber != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "paymentNotes" field.
  String? _paymentNotes;
  String get paymentNotes => _paymentNotes ?? '';
  bool hasPaymentNotes() => _paymentNotes != null;

  // "paymentAttachments" field.
  String? _paymentAttachments;
  String get paymentAttachments => _paymentAttachments ?? '';
  bool hasPaymentAttachments() => _paymentAttachments != null;

  // "isApproved" field.
  bool? _isApproved;
  bool get isApproved => _isApproved ?? false;
  bool hasIsApproved() => _isApproved != null;

  // "isRejected" field.
  bool? _isRejected;
  bool get isRejected => _isRejected ?? false;
  bool hasIsRejected() => _isRejected != null;

  // "createdByImageUrl" field.
  String? _createdByImageUrl;
  String get createdByImageUrl => _createdByImageUrl ?? '';
  bool hasCreatedByImageUrl() => _createdByImageUrl != null;

  // "assignedWarehouse" field.
  String? _assignedWarehouse;
  String get assignedWarehouse => _assignedWarehouse ?? '';
  bool hasAssignedWarehouse() => _assignedWarehouse != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isPaidToLead" field.
  bool? _isPaidToLead;
  bool get isPaidToLead => _isPaidToLead ?? false;
  bool hasIsPaidToLead() => _isPaidToLead != null;

  // "volunteerRef" field.
  DocumentReference? _volunteerRef;
  DocumentReference? get volunteerRef => _volunteerRef;
  bool hasVolunteerRef() => _volunteerRef != null;

  // "warehouseRef" field.
  DocumentReference? _warehouseRef;
  DocumentReference? get warehouseRef => _warehouseRef;
  bool hasWarehouseRef() => _warehouseRef != null;

  // "offlineOrdersRef" field.
  List<DocumentReference>? _offlineOrdersRef;
  List<DocumentReference> get offlineOrdersRef => _offlineOrdersRef ?? const [];
  bool hasOfflineOrdersRef() => _offlineOrdersRef != null;

  // "isNew" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  bool hasIsNew() => _isNew != null;

  void _initializeFields() {
    _paymentId = snapshotData['paymentId'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _isVolunteer = snapshotData['isVolunteer'] as bool?;
    _isLead = snapshotData['isLead'] as bool?;
    _totalOfflineOrder = castToType<int>(snapshotData['total_offlineOrder']);
    _totalPaymentRequestValue =
        castToType<double>(snapshotData['total_paymentRequestValue']);
    _paymentMode = snapshotData['paymentMode'] as String?;
    _paymentRefNumber = snapshotData['paymentRefNumber'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _paymentNotes = snapshotData['paymentNotes'] as String?;
    _paymentAttachments = snapshotData['paymentAttachments'] as String?;
    _isApproved = snapshotData['isApproved'] as bool?;
    _isRejected = snapshotData['isRejected'] as bool?;
    _createdByImageUrl = snapshotData['createdByImageUrl'] as String?;
    _assignedWarehouse = snapshotData['assignedWarehouse'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _isPaidToLead = snapshotData['isPaidToLead'] as bool?;
    _volunteerRef = snapshotData['volunteerRef'] as DocumentReference?;
    _warehouseRef = snapshotData['warehouseRef'] as DocumentReference?;
    _offlineOrdersRef = getDataList(snapshotData['offlineOrdersRef']);
    _isNew = snapshotData['isNew'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  String? paymentId,
  String? createdBy,
  bool? isVolunteer,
  bool? isLead,
  int? totalOfflineOrder,
  double? totalPaymentRequestValue,
  String? paymentMode,
  String? paymentRefNumber,
  DateTime? createdDate,
  String? paymentNotes,
  String? paymentAttachments,
  bool? isApproved,
  bool? isRejected,
  String? createdByImageUrl,
  String? assignedWarehouse,
  String? phoneNumber,
  bool? isPaidToLead,
  DocumentReference? volunteerRef,
  DocumentReference? warehouseRef,
  bool? isNew,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'paymentId': paymentId,
      'createdBy': createdBy,
      'isVolunteer': isVolunteer,
      'isLead': isLead,
      'total_offlineOrder': totalOfflineOrder,
      'total_paymentRequestValue': totalPaymentRequestValue,
      'paymentMode': paymentMode,
      'paymentRefNumber': paymentRefNumber,
      'createdDate': createdDate,
      'paymentNotes': paymentNotes,
      'paymentAttachments': paymentAttachments,
      'isApproved': isApproved,
      'isRejected': isRejected,
      'createdByImageUrl': createdByImageUrl,
      'assignedWarehouse': assignedWarehouse,
      'phoneNumber': phoneNumber,
      'isPaidToLead': isPaidToLead,
      'volunteerRef': volunteerRef,
      'warehouseRef': warehouseRef,
      'isNew': isNew,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.paymentId == e2?.paymentId &&
        e1?.createdBy == e2?.createdBy &&
        e1?.isVolunteer == e2?.isVolunteer &&
        e1?.isLead == e2?.isLead &&
        e1?.totalOfflineOrder == e2?.totalOfflineOrder &&
        e1?.totalPaymentRequestValue == e2?.totalPaymentRequestValue &&
        e1?.paymentMode == e2?.paymentMode &&
        e1?.paymentRefNumber == e2?.paymentRefNumber &&
        e1?.createdDate == e2?.createdDate &&
        e1?.paymentNotes == e2?.paymentNotes &&
        e1?.paymentAttachments == e2?.paymentAttachments &&
        e1?.isApproved == e2?.isApproved &&
        e1?.isRejected == e2?.isRejected &&
        e1?.createdByImageUrl == e2?.createdByImageUrl &&
        e1?.assignedWarehouse == e2?.assignedWarehouse &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isPaidToLead == e2?.isPaidToLead &&
        e1?.volunteerRef == e2?.volunteerRef &&
        e1?.warehouseRef == e2?.warehouseRef &&
        listEquality.equals(e1?.offlineOrdersRef, e2?.offlineOrdersRef) &&
        e1?.isNew == e2?.isNew;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.paymentId,
        e?.createdBy,
        e?.isVolunteer,
        e?.isLead,
        e?.totalOfflineOrder,
        e?.totalPaymentRequestValue,
        e?.paymentMode,
        e?.paymentRefNumber,
        e?.createdDate,
        e?.paymentNotes,
        e?.paymentAttachments,
        e?.isApproved,
        e?.isRejected,
        e?.createdByImageUrl,
        e?.assignedWarehouse,
        e?.phoneNumber,
        e?.isPaidToLead,
        e?.volunteerRef,
        e?.warehouseRef,
        e?.offlineOrdersRef,
        e?.isNew
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
