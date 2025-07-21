import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "assignedWarehouseName" field.
  String? _assignedWarehouseName;
  String get assignedWarehouseName => _assignedWarehouseName ?? '';
  bool hasAssignedWarehouseName() => _assignedWarehouseName != null;

  // "assignedWarehouseRef" field.
  DocumentReference? _assignedWarehouseRef;
  DocumentReference? get assignedWarehouseRef => _assignedWarehouseRef;
  bool hasAssignedWarehouseRef() => _assignedWarehouseRef != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isAdmin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "isLead" field.
  bool? _isLead;
  bool get isLead => _isLead ?? false;
  bool hasIsLead() => _isLead != null;

  // "isVolunteer" field.
  bool? _isVolunteer;
  bool get isVolunteer => _isVolunteer ?? false;
  bool hasIsVolunteer() => _isVolunteer != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "total_allProductAvailableStock" field.
  int? _totalAllProductAvailableStock;
  int get totalAllProductAvailableStock => _totalAllProductAvailableStock ?? 0;
  bool hasTotalAllProductAvailableStock() =>
      _totalAllProductAvailableStock != null;

  // "total_assignedOnlineOrders" field.
  int? _totalAssignedOnlineOrders;
  int get totalAssignedOnlineOrders => _totalAssignedOnlineOrders ?? 0;
  bool hasTotalAssignedOnlineOrders() => _totalAssignedOnlineOrders != null;

  // "total_assignedOnlineOrdersSla" field.
  int? _totalAssignedOnlineOrdersSla;
  int get totalAssignedOnlineOrdersSla => _totalAssignedOnlineOrdersSla ?? 0;
  bool hasTotalAssignedOnlineOrdersSla() =>
      _totalAssignedOnlineOrdersSla != null;

  // "total_pendingDeliveryOnlineOrders" field.
  int? _totalPendingDeliveryOnlineOrders;
  int get totalPendingDeliveryOnlineOrders =>
      _totalPendingDeliveryOnlineOrders ?? 0;
  bool hasTotalPendingDeliveryOnlineOrders() =>
      _totalPendingDeliveryOnlineOrders != null;

  // "volunteerPostcodeList" field.
  List<String>? _volunteerPostcodeList;
  List<String> get volunteerPostcodeList => _volunteerPostcodeList ?? const [];
  bool hasVolunteerPostcodeList() => _volunteerPostcodeList != null;

  // "warehouseKey" field.
  String? _warehouseKey;
  String get warehouseKey => _warehouseKey ?? '';
  bool hasWarehouseKey() => _warehouseKey != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _assignedWarehouseName = snapshotData['assignedWarehouseName'] as String?;
    _assignedWarehouseRef =
        snapshotData['assignedWarehouseRef'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _isAdmin = snapshotData['isAdmin'] as bool?;
    _isLead = snapshotData['isLead'] as bool?;
    _isVolunteer = snapshotData['isVolunteer'] as bool?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _totalAllProductAvailableStock =
        castToType<int>(snapshotData['total_allProductAvailableStock']);
    _totalAssignedOnlineOrders =
        castToType<int>(snapshotData['total_assignedOnlineOrders']);
    _totalAssignedOnlineOrdersSla =
        castToType<int>(snapshotData['total_assignedOnlineOrdersSla']);
    _totalPendingDeliveryOnlineOrders =
        castToType<int>(snapshotData['total_pendingDeliveryOnlineOrders']);
    _volunteerPostcodeList = getDataList(snapshotData['volunteerPostcodeList']);
    _warehouseKey = snapshotData['warehouseKey'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'assignedWarehouseName': snapshot.data['assignedWarehouseName'],
          'assignedWarehouseRef': convertAlgoliaParam(
            snapshot.data['assignedWarehouseRef'],
            ParamType.DocumentReference,
            false,
          ),
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'display_name': snapshot.data['display_name'],
          'email': snapshot.data['email'],
          'isActive': snapshot.data['isActive'],
          'isAdmin': snapshot.data['isAdmin'],
          'isLead': snapshot.data['isLead'],
          'isVolunteer': snapshot.data['isVolunteer'],
          'phone_number': snapshot.data['phone_number'],
          'photo_url': snapshot.data['photo_url'],
          'total_allProductAvailableStock': convertAlgoliaParam(
            snapshot.data['total_allProductAvailableStock'],
            ParamType.int,
            false,
          ),
          'total_assignedOnlineOrders': convertAlgoliaParam(
            snapshot.data['total_assignedOnlineOrders'],
            ParamType.int,
            false,
          ),
          'total_assignedOnlineOrdersSla': convertAlgoliaParam(
            snapshot.data['total_assignedOnlineOrdersSla'],
            ParamType.int,
            false,
          ),
          'total_pendingDeliveryOnlineOrders': convertAlgoliaParam(
            snapshot.data['total_pendingDeliveryOnlineOrders'],
            ParamType.int,
            false,
          ),
          'volunteerPostcodeList': safeGet(
            () => snapshot.data['volunteerPostcodeList'].toList(),
          ),
          'warehouseKey': snapshot.data['warehouseKey'],
          'uid': snapshot.data['uid'],
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? assignedWarehouseName,
  DocumentReference? assignedWarehouseRef,
  DateTime? createdTime,
  String? displayName,
  String? email,
  bool? isActive,
  bool? isAdmin,
  bool? isLead,
  bool? isVolunteer,
  String? phoneNumber,
  String? photoUrl,
  int? totalAllProductAvailableStock,
  int? totalAssignedOnlineOrders,
  int? totalAssignedOnlineOrdersSla,
  int? totalPendingDeliveryOnlineOrders,
  String? warehouseKey,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignedWarehouseName': assignedWarehouseName,
      'assignedWarehouseRef': assignedWarehouseRef,
      'created_time': createdTime,
      'display_name': displayName,
      'email': email,
      'isActive': isActive,
      'isAdmin': isAdmin,
      'isLead': isLead,
      'isVolunteer': isVolunteer,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'total_allProductAvailableStock': totalAllProductAvailableStock,
      'total_assignedOnlineOrders': totalAssignedOnlineOrders,
      'total_assignedOnlineOrdersSla': totalAssignedOnlineOrdersSla,
      'total_pendingDeliveryOnlineOrders': totalPendingDeliveryOnlineOrders,
      'warehouseKey': warehouseKey,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.assignedWarehouseName == e2?.assignedWarehouseName &&
        e1?.assignedWarehouseRef == e2?.assignedWarehouseRef &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.isActive == e2?.isActive &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.isLead == e2?.isLead &&
        e1?.isVolunteer == e2?.isVolunteer &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.totalAllProductAvailableStock ==
            e2?.totalAllProductAvailableStock &&
        e1?.totalAssignedOnlineOrders == e2?.totalAssignedOnlineOrders &&
        e1?.totalAssignedOnlineOrdersSla == e2?.totalAssignedOnlineOrdersSla &&
        e1?.totalPendingDeliveryOnlineOrders ==
            e2?.totalPendingDeliveryOnlineOrders &&
        listEquality.equals(
            e1?.volunteerPostcodeList, e2?.volunteerPostcodeList) &&
        e1?.warehouseKey == e2?.warehouseKey &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.assignedWarehouseName,
        e?.assignedWarehouseRef,
        e?.createdTime,
        e?.displayName,
        e?.email,
        e?.isActive,
        e?.isAdmin,
        e?.isLead,
        e?.isVolunteer,
        e?.phoneNumber,
        e?.photoUrl,
        e?.totalAllProductAvailableStock,
        e?.totalAssignedOnlineOrders,
        e?.totalAssignedOnlineOrdersSla,
        e?.totalPendingDeliveryOnlineOrders,
        e?.volunteerPostcodeList,
        e?.warehouseKey,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
