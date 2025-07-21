import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  bool hasOrderNumber() => _orderNumber != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "totalOrderItems" field.
  int? _totalOrderItems;
  int get totalOrderItems => _totalOrderItems ?? 0;
  bool hasTotalOrderItems() => _totalOrderItems != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "targetDeliveryDate" field.
  DateTime? _targetDeliveryDate;
  DateTime? get targetDeliveryDate => _targetDeliveryDate;
  bool hasTargetDeliveryDate() => _targetDeliveryDate != null;

  // "trackingNumber" field.
  String? _trackingNumber;
  String get trackingNumber => _trackingNumber ?? '';
  bool hasTrackingNumber() => _trackingNumber != null;

  // "paymentRefNumber" field.
  String? _paymentRefNumber;
  String get paymentRefNumber => _paymentRefNumber ?? '';
  bool hasPaymentRefNumber() => _paymentRefNumber != null;

  // "isOnline" field.
  bool? _isOnline;
  bool get isOnline => _isOnline ?? false;
  bool hasIsOnline() => _isOnline != null;

  // "isOffline" field.
  bool? _isOffline;
  bool get isOffline => _isOffline ?? false;
  bool hasIsOffline() => _isOffline != null;

  // "assignedWarehousName" field.
  String? _assignedWarehousName;
  String get assignedWarehousName => _assignedWarehousName ?? '';
  bool hasAssignedWarehousName() => _assignedWarehousName != null;

  // "isCashDue" field.
  bool? _isCashDue;
  bool get isCashDue => _isCashDue ?? false;
  bool hasIsCashDue() => _isCashDue != null;

  // "isCashPaid" field.
  bool? _isCashPaid;
  bool get isCashPaid => _isCashPaid ?? false;
  bool hasIsCashPaid() => _isCashPaid != null;

  // "isFailed" field.
  bool? _isFailed;
  bool get isFailed => _isFailed ?? false;
  bool hasIsFailed() => _isFailed != null;

  // "isDelivered" field.
  bool? _isDelivered;
  bool get isDelivered => _isDelivered ?? false;
  bool hasIsDelivered() => _isDelivered != null;

  // "isAssigned" field.
  bool? _isAssigned;
  bool get isAssigned => _isAssigned ?? false;
  bool hasIsAssigned() => _isAssigned != null;

  // "isNew" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  bool hasIsNew() => _isNew != null;

  // "isPaidToLead" field.
  bool? _isPaidToLead;
  bool get isPaidToLead => _isPaidToLead ?? false;
  bool hasIsPaidToLead() => _isPaidToLead != null;

  // "assignedWarehouseRef" field.
  DocumentReference? _assignedWarehouseRef;
  DocumentReference? get assignedWarehouseRef => _assignedWarehouseRef;
  bool hasAssignedWarehouseRef() => _assignedWarehouseRef != null;

  // "assignedVolunteerRef" field.
  DocumentReference? _assignedVolunteerRef;
  DocumentReference? get assignedVolunteerRef => _assignedVolunteerRef;
  bool hasAssignedVolunteerRef() => _assignedVolunteerRef != null;

  // "deliveryAddressLine1" field.
  String? _deliveryAddressLine1;
  String get deliveryAddressLine1 => _deliveryAddressLine1 ?? '';
  bool hasDeliveryAddressLine1() => _deliveryAddressLine1 != null;

  // "deliveryAddressLine2" field.
  String? _deliveryAddressLine2;
  String get deliveryAddressLine2 => _deliveryAddressLine2 ?? '';
  bool hasDeliveryAddressLine2() => _deliveryAddressLine2 != null;

  // "deliveryPhoneNumber" field.
  String? _deliveryPhoneNumber;
  String get deliveryPhoneNumber => _deliveryPhoneNumber ?? '';
  bool hasDeliveryPhoneNumber() => _deliveryPhoneNumber != null;

  // "deliveryFirstName" field.
  String? _deliveryFirstName;
  String get deliveryFirstName => _deliveryFirstName ?? '';
  bool hasDeliveryFirstName() => _deliveryFirstName != null;

  // "deliverySurname" field.
  String? _deliverySurname;
  String get deliverySurname => _deliverySurname ?? '';
  bool hasDeliverySurname() => _deliverySurname != null;

  // "deliveryCity" field.
  String? _deliveryCity;
  String get deliveryCity => _deliveryCity ?? '';
  bool hasDeliveryCity() => _deliveryCity != null;

  // "deliveryPostcode" field.
  String? _deliveryPostcode;
  String get deliveryPostcode => _deliveryPostcode ?? '';
  bool hasDeliveryPostcode() => _deliveryPostcode != null;

  // "billingFirstName" field.
  String? _billingFirstName;
  String get billingFirstName => _billingFirstName ?? '';
  bool hasBillingFirstName() => _billingFirstName != null;

  // "billingSurName" field.
  String? _billingSurName;
  String get billingSurName => _billingSurName ?? '';
  bool hasBillingSurName() => _billingSurName != null;

  // "billingEmail" field.
  String? _billingEmail;
  String get billingEmail => _billingEmail ?? '';
  bool hasBillingEmail() => _billingEmail != null;

  // "billingPhoneNumber" field.
  String? _billingPhoneNumber;
  String get billingPhoneNumber => _billingPhoneNumber ?? '';
  bool hasBillingPhoneNumber() => _billingPhoneNumber != null;

  // "giftCardFromMessage" field.
  String? _giftCardFromMessage;
  String get giftCardFromMessage => _giftCardFromMessage ?? '';
  bool hasGiftCardFromMessage() => _giftCardFromMessage != null;

  // "giftCardToMessage" field.
  String? _giftCardToMessage;
  String get giftCardToMessage => _giftCardToMessage ?? '';
  bool hasGiftCardToMessage() => _giftCardToMessage != null;

  // "orderDeliveryReferences" field.
  List<DocumentReference>? _orderDeliveryReferences;
  List<DocumentReference> get orderDeliveryReferences =>
      _orderDeliveryReferences ?? const [];
  bool hasOrderDeliveryReferences() => _orderDeliveryReferences != null;

  // "deliveryCounty" field.
  String? _deliveryCounty;
  String get deliveryCounty => _deliveryCounty ?? '';
  bool hasDeliveryCounty() => _deliveryCounty != null;

  // "offlineOrder_volunteerName" field.
  String? _offlineOrderVolunteerName;
  String get offlineOrderVolunteerName => _offlineOrderVolunteerName ?? '';
  bool hasOfflineOrderVolunteerName() => _offlineOrderVolunteerName != null;

  // "total_qty" field.
  int? _totalQty;
  int get totalQty => _totalQty ?? 0;
  bool hasTotalQty() => _totalQty != null;

  // "assignedForDelivery" field.
  bool? _assignedForDelivery;
  bool get assignedForDelivery => _assignedForDelivery ?? false;
  bool hasAssignedForDelivery() => _assignedForDelivery != null;

  // "total_orderAmount" field.
  double? _totalOrderAmount;
  double get totalOrderAmount => _totalOrderAmount ?? 0.0;
  bool hasTotalOrderAmount() => _totalOrderAmount != null;

  // "leaveWithNeighbour" field.
  bool? _leaveWithNeighbour;
  bool get leaveWithNeighbour => _leaveWithNeighbour ?? false;
  bool hasLeaveWithNeighbour() => _leaveWithNeighbour != null;

  // "noContactDelivery" field.
  bool? _noContactDelivery;
  bool get noContactDelivery => _noContactDelivery ?? false;
  bool hasNoContactDelivery() => _noContactDelivery != null;

  // "orderNote" field.
  String? _orderNote;
  String get orderNote => _orderNote ?? '';
  bool hasOrderNote() => _orderNote != null;

  // "portalOrderNumber" field.
  String? _portalOrderNumber;
  String get portalOrderNumber => _portalOrderNumber ?? '';
  bool hasPortalOrderNumber() => _portalOrderNumber != null;

  // "warehousePortalId" field.
  String? _warehousePortalId;
  String get warehousePortalId => _warehousePortalId ?? '';
  bool hasWarehousePortalId() => _warehousePortalId != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "orderItems" field.
  List<DocumentReference>? _orderItems;
  List<DocumentReference> get orderItems => _orderItems ?? const [];
  bool hasOrderItems() => _orderItems != null;

  // "firstPostCode" field.
  String? _firstPostCode;
  String get firstPostCode => _firstPostCode ?? '';
  bool hasFirstPostCode() => _firstPostCode != null;

  void _initializeFields() {
    _orderNumber = snapshotData['orderNumber'] as String?;
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _totalOrderItems = castToType<int>(snapshotData['totalOrderItems']);
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _isActive = snapshotData['isActive'] as bool?;
    _targetDeliveryDate = snapshotData['targetDeliveryDate'] as DateTime?;
    _trackingNumber = snapshotData['trackingNumber'] as String?;
    _paymentRefNumber = snapshotData['paymentRefNumber'] as String?;
    _isOnline = snapshotData['isOnline'] as bool?;
    _isOffline = snapshotData['isOffline'] as bool?;
    _assignedWarehousName = snapshotData['assignedWarehousName'] as String?;
    _isCashDue = snapshotData['isCashDue'] as bool?;
    _isCashPaid = snapshotData['isCashPaid'] as bool?;
    _isFailed = snapshotData['isFailed'] as bool?;
    _isDelivered = snapshotData['isDelivered'] as bool?;
    _isAssigned = snapshotData['isAssigned'] as bool?;
    _isNew = snapshotData['isNew'] as bool?;
    _isPaidToLead = snapshotData['isPaidToLead'] as bool?;
    _assignedWarehouseRef =
        snapshotData['assignedWarehouseRef'] as DocumentReference?;
    _assignedVolunteerRef =
        snapshotData['assignedVolunteerRef'] as DocumentReference?;
    _deliveryAddressLine1 = snapshotData['deliveryAddressLine1'] as String?;
    _deliveryAddressLine2 = snapshotData['deliveryAddressLine2'] as String?;
    _deliveryPhoneNumber = snapshotData['deliveryPhoneNumber'] as String?;
    _deliveryFirstName = snapshotData['deliveryFirstName'] as String?;
    _deliverySurname = snapshotData['deliverySurname'] as String?;
    _deliveryCity = snapshotData['deliveryCity'] as String?;
    _deliveryPostcode = snapshotData['deliveryPostcode'] as String?;
    _billingFirstName = snapshotData['billingFirstName'] as String?;
    _billingSurName = snapshotData['billingSurName'] as String?;
    _billingEmail = snapshotData['billingEmail'] as String?;
    _billingPhoneNumber = snapshotData['billingPhoneNumber'] as String?;
    _giftCardFromMessage = snapshotData['giftCardFromMessage'] as String?;
    _giftCardToMessage = snapshotData['giftCardToMessage'] as String?;
    _orderDeliveryReferences =
        getDataList(snapshotData['orderDeliveryReferences']);
    _deliveryCounty = snapshotData['deliveryCounty'] as String?;
    _offlineOrderVolunteerName =
        snapshotData['offlineOrder_volunteerName'] as String?;
    _totalQty = castToType<int>(snapshotData['total_qty']);
    _assignedForDelivery = snapshotData['assignedForDelivery'] as bool?;
    _totalOrderAmount = castToType<double>(snapshotData['total_orderAmount']);
    _leaveWithNeighbour = snapshotData['leaveWithNeighbour'] as bool?;
    _noContactDelivery = snapshotData['noContactDelivery'] as bool?;
    _orderNote = snapshotData['orderNote'] as String?;
    _portalOrderNumber = snapshotData['portalOrderNumber'] as String?;
    _warehousePortalId = snapshotData['warehousePortalId'] as String?;
    _orderId = snapshotData['orderId'] as String?;
    _orderItems = getDataList(snapshotData['orderItems']);
    _firstPostCode = snapshotData['firstPostCode'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderNumber,
  String? paymentMethod,
  int? totalOrderItems,
  DateTime? createdDate,
  bool? isActive,
  DateTime? targetDeliveryDate,
  String? trackingNumber,
  String? paymentRefNumber,
  bool? isOnline,
  bool? isOffline,
  String? assignedWarehousName,
  bool? isCashDue,
  bool? isCashPaid,
  bool? isFailed,
  bool? isDelivered,
  bool? isAssigned,
  bool? isNew,
  bool? isPaidToLead,
  DocumentReference? assignedWarehouseRef,
  DocumentReference? assignedVolunteerRef,
  String? deliveryAddressLine1,
  String? deliveryAddressLine2,
  String? deliveryPhoneNumber,
  String? deliveryFirstName,
  String? deliverySurname,
  String? deliveryCity,
  String? deliveryPostcode,
  String? billingFirstName,
  String? billingSurName,
  String? billingEmail,
  String? billingPhoneNumber,
  String? giftCardFromMessage,
  String? giftCardToMessage,
  String? deliveryCounty,
  String? offlineOrderVolunteerName,
  int? totalQty,
  bool? assignedForDelivery,
  double? totalOrderAmount,
  bool? leaveWithNeighbour,
  bool? noContactDelivery,
  String? orderNote,
  String? portalOrderNumber,
  String? warehousePortalId,
  String? orderId,
  String? firstPostCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderNumber': orderNumber,
      'paymentMethod': paymentMethod,
      'totalOrderItems': totalOrderItems,
      'createdDate': createdDate,
      'isActive': isActive,
      'targetDeliveryDate': targetDeliveryDate,
      'trackingNumber': trackingNumber,
      'paymentRefNumber': paymentRefNumber,
      'isOnline': isOnline,
      'isOffline': isOffline,
      'assignedWarehousName': assignedWarehousName,
      'isCashDue': isCashDue,
      'isCashPaid': isCashPaid,
      'isFailed': isFailed,
      'isDelivered': isDelivered,
      'isAssigned': isAssigned,
      'isNew': isNew,
      'isPaidToLead': isPaidToLead,
      'assignedWarehouseRef': assignedWarehouseRef,
      'assignedVolunteerRef': assignedVolunteerRef,
      'deliveryAddressLine1': deliveryAddressLine1,
      'deliveryAddressLine2': deliveryAddressLine2,
      'deliveryPhoneNumber': deliveryPhoneNumber,
      'deliveryFirstName': deliveryFirstName,
      'deliverySurname': deliverySurname,
      'deliveryCity': deliveryCity,
      'deliveryPostcode': deliveryPostcode,
      'billingFirstName': billingFirstName,
      'billingSurName': billingSurName,
      'billingEmail': billingEmail,
      'billingPhoneNumber': billingPhoneNumber,
      'giftCardFromMessage': giftCardFromMessage,
      'giftCardToMessage': giftCardToMessage,
      'deliveryCounty': deliveryCounty,
      'offlineOrder_volunteerName': offlineOrderVolunteerName,
      'total_qty': totalQty,
      'assignedForDelivery': assignedForDelivery,
      'total_orderAmount': totalOrderAmount,
      'leaveWithNeighbour': leaveWithNeighbour,
      'noContactDelivery': noContactDelivery,
      'orderNote': orderNote,
      'portalOrderNumber': portalOrderNumber,
      'warehousePortalId': warehousePortalId,
      'orderId': orderId,
      'firstPostCode': firstPostCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.orderNumber == e2?.orderNumber &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.totalOrderItems == e2?.totalOrderItems &&
        e1?.createdDate == e2?.createdDate &&
        e1?.isActive == e2?.isActive &&
        e1?.targetDeliveryDate == e2?.targetDeliveryDate &&
        e1?.trackingNumber == e2?.trackingNumber &&
        e1?.paymentRefNumber == e2?.paymentRefNumber &&
        e1?.isOnline == e2?.isOnline &&
        e1?.isOffline == e2?.isOffline &&
        e1?.assignedWarehousName == e2?.assignedWarehousName &&
        e1?.isCashDue == e2?.isCashDue &&
        e1?.isCashPaid == e2?.isCashPaid &&
        e1?.isFailed == e2?.isFailed &&
        e1?.isDelivered == e2?.isDelivered &&
        e1?.isAssigned == e2?.isAssigned &&
        e1?.isNew == e2?.isNew &&
        e1?.isPaidToLead == e2?.isPaidToLead &&
        e1?.assignedWarehouseRef == e2?.assignedWarehouseRef &&
        e1?.assignedVolunteerRef == e2?.assignedVolunteerRef &&
        e1?.deliveryAddressLine1 == e2?.deliveryAddressLine1 &&
        e1?.deliveryAddressLine2 == e2?.deliveryAddressLine2 &&
        e1?.deliveryPhoneNumber == e2?.deliveryPhoneNumber &&
        e1?.deliveryFirstName == e2?.deliveryFirstName &&
        e1?.deliverySurname == e2?.deliverySurname &&
        e1?.deliveryCity == e2?.deliveryCity &&
        e1?.deliveryPostcode == e2?.deliveryPostcode &&
        e1?.billingFirstName == e2?.billingFirstName &&
        e1?.billingSurName == e2?.billingSurName &&
        e1?.billingEmail == e2?.billingEmail &&
        e1?.billingPhoneNumber == e2?.billingPhoneNumber &&
        e1?.giftCardFromMessage == e2?.giftCardFromMessage &&
        e1?.giftCardToMessage == e2?.giftCardToMessage &&
        listEquality.equals(
            e1?.orderDeliveryReferences, e2?.orderDeliveryReferences) &&
        e1?.deliveryCounty == e2?.deliveryCounty &&
        e1?.offlineOrderVolunteerName == e2?.offlineOrderVolunteerName &&
        e1?.totalQty == e2?.totalQty &&
        e1?.assignedForDelivery == e2?.assignedForDelivery &&
        e1?.totalOrderAmount == e2?.totalOrderAmount &&
        e1?.leaveWithNeighbour == e2?.leaveWithNeighbour &&
        e1?.noContactDelivery == e2?.noContactDelivery &&
        e1?.orderNote == e2?.orderNote &&
        e1?.portalOrderNumber == e2?.portalOrderNumber &&
        e1?.warehousePortalId == e2?.warehousePortalId &&
        e1?.orderId == e2?.orderId &&
        listEquality.equals(e1?.orderItems, e2?.orderItems) &&
        e1?.firstPostCode == e2?.firstPostCode;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderNumber,
        e?.paymentMethod,
        e?.totalOrderItems,
        e?.createdDate,
        e?.isActive,
        e?.targetDeliveryDate,
        e?.trackingNumber,
        e?.paymentRefNumber,
        e?.isOnline,
        e?.isOffline,
        e?.assignedWarehousName,
        e?.isCashDue,
        e?.isCashPaid,
        e?.isFailed,
        e?.isDelivered,
        e?.isAssigned,
        e?.isNew,
        e?.isPaidToLead,
        e?.assignedWarehouseRef,
        e?.assignedVolunteerRef,
        e?.deliveryAddressLine1,
        e?.deliveryAddressLine2,
        e?.deliveryPhoneNumber,
        e?.deliveryFirstName,
        e?.deliverySurname,
        e?.deliveryCity,
        e?.deliveryPostcode,
        e?.billingFirstName,
        e?.billingSurName,
        e?.billingEmail,
        e?.billingPhoneNumber,
        e?.giftCardFromMessage,
        e?.giftCardToMessage,
        e?.orderDeliveryReferences,
        e?.deliveryCounty,
        e?.offlineOrderVolunteerName,
        e?.totalQty,
        e?.assignedForDelivery,
        e?.totalOrderAmount,
        e?.leaveWithNeighbour,
        e?.noContactDelivery,
        e?.orderNote,
        e?.portalOrderNumber,
        e?.warehousePortalId,
        e?.orderId,
        e?.orderItems,
        e?.firstPostCode
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
