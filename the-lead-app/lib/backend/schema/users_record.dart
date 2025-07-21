import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

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

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "warehouseKey" field.
  String? _warehouseKey;
  String get warehouseKey => _warehouseKey ?? '';
  bool hasWarehouseKey() => _warehouseKey != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "cashBalance" field.
  double? _cashBalance;
  double get cashBalance => _cashBalance ?? 0.0;
  bool hasCashBalance() => _cashBalance != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "updatedDate" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "recordStatus" field.
  List<String>? _recordStatus;
  List<String> get recordStatus => _recordStatus ?? const [];
  bool hasRecordStatus() => _recordStatus != null;

  // "recordNotes" field.
  String? _recordNotes;
  String get recordNotes => _recordNotes ?? '';
  bool hasRecordNotes() => _recordNotes != null;

  // "outstandingCash" field.
  double? _outstandingCash;
  double get outstandingCash => _outstandingCash ?? 0.0;
  bool hasOutstandingCash() => _outstandingCash != null;

  // "appVersion" field.
  String? _appVersion;
  String get appVersion => _appVersion ?? '';
  bool hasAppVersion() => _appVersion != null;

  // "orderChaseMsg" field.
  List<String>? _orderChaseMsg;
  List<String> get orderChaseMsg => _orderChaseMsg ?? const [];
  bool hasOrderChaseMsg() => _orderChaseMsg != null;

  // "assignedWarehouseId" field.
  String? _assignedWarehouseId;
  String get assignedWarehouseId => _assignedWarehouseId ?? '';
  bool hasAssignedWarehouseId() => _assignedWarehouseId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "authType" field.
  String? _authType;
  String get authType => _authType ?? '';
  bool hasAuthType() => _authType != null;

  // "isRegistered" field.
  bool? _isRegistered;
  bool get isRegistered => _isRegistered ?? false;
  bool hasIsRegistered() => _isRegistered != null;

  // "updatedBy" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "isWarehouseAssigned" field.
  bool? _isWarehouseAssigned;
  bool get isWarehouseAssigned => _isWarehouseAssigned ?? false;
  bool hasIsWarehouseAssigned() => _isWarehouseAssigned != null;

  // "isDualRoleAllowed" field.
  bool? _isDualRoleAllowed;
  bool get isDualRoleAllowed => _isDualRoleAllowed ?? false;
  bool hasIsDualRoleAllowed() => _isDualRoleAllowed != null;

  void _initializeFields() {
    _assignedWarehouseName = snapshotData['assignedWarehouseName'] as String?;
    _assignedWarehouseRef =
        snapshotData['assignedWarehouseRef'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _warehouseKey = snapshotData['warehouseKey'] as String?;
    _uid = snapshotData['uid'] as String?;
    _cashBalance = castToType<double>(snapshotData['cashBalance']);
    _userRole = snapshotData['userRole'] as String?;
    _updatedDate = snapshotData['updatedDate'] as DateTime?;
    _recordStatus = getDataList(snapshotData['recordStatus']);
    _recordNotes = snapshotData['recordNotes'] as String?;
    _outstandingCash = castToType<double>(snapshotData['outstandingCash']);
    _appVersion = snapshotData['appVersion'] as String?;
    _orderChaseMsg = getDataList(snapshotData['orderChaseMsg']);
    _assignedWarehouseId = snapshotData['assignedWarehouseId'] as String?;
    _status = snapshotData['status'] as String?;
    _authType = snapshotData['authType'] as String?;
    _isRegistered = snapshotData['isRegistered'] as bool?;
    _updatedBy = snapshotData['updatedBy'] as String?;
    _createdBy = snapshotData['createdBy'] as String?;
    _isWarehouseAssigned = snapshotData['isWarehouseAssigned'] as bool?;
    _isDualRoleAllowed = snapshotData['isDualRoleAllowed'] as bool?;
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
          'phone_number': snapshot.data['phone_number'],
          'photo_url': snapshot.data['photo_url'],
          'warehouseKey': snapshot.data['warehouseKey'],
          'uid': snapshot.data['uid'],
          'cashBalance': convertAlgoliaParam(
            snapshot.data['cashBalance'],
            ParamType.double,
            false,
          ),
          'userRole': snapshot.data['userRole'],
          'updatedDate': convertAlgoliaParam(
            snapshot.data['updatedDate'],
            ParamType.DateTime,
            false,
          ),
          'recordStatus': safeGet(
            () => snapshot.data['recordStatus'].toList(),
          ),
          'recordNotes': snapshot.data['recordNotes'],
          'outstandingCash': convertAlgoliaParam(
            snapshot.data['outstandingCash'],
            ParamType.double,
            false,
          ),
          'appVersion': snapshot.data['appVersion'],
          'orderChaseMsg': safeGet(
            () => snapshot.data['orderChaseMsg'].toList(),
          ),
          'assignedWarehouseId': snapshot.data['assignedWarehouseId'],
          'status': snapshot.data['status'],
          'authType': snapshot.data['authType'],
          'isRegistered': snapshot.data['isRegistered'],
          'updatedBy': snapshot.data['updatedBy'],
          'createdBy': snapshot.data['createdBy'],
          'isWarehouseAssigned': snapshot.data['isWarehouseAssigned'],
          'isDualRoleAllowed': snapshot.data['isDualRoleAllowed'],
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
  String? phoneNumber,
  String? photoUrl,
  String? warehouseKey,
  String? uid,
  double? cashBalance,
  String? userRole,
  DateTime? updatedDate,
  String? recordNotes,
  double? outstandingCash,
  String? appVersion,
  String? assignedWarehouseId,
  String? status,
  String? authType,
  bool? isRegistered,
  String? updatedBy,
  String? createdBy,
  bool? isWarehouseAssigned,
  bool? isDualRoleAllowed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'assignedWarehouseName': assignedWarehouseName,
      'assignedWarehouseRef': assignedWarehouseRef,
      'created_time': createdTime,
      'display_name': displayName,
      'email': email,
      'isActive': isActive,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'warehouseKey': warehouseKey,
      'uid': uid,
      'cashBalance': cashBalance,
      'userRole': userRole,
      'updatedDate': updatedDate,
      'recordNotes': recordNotes,
      'outstandingCash': outstandingCash,
      'appVersion': appVersion,
      'assignedWarehouseId': assignedWarehouseId,
      'status': status,
      'authType': authType,
      'isRegistered': isRegistered,
      'updatedBy': updatedBy,
      'createdBy': createdBy,
      'isWarehouseAssigned': isWarehouseAssigned,
      'isDualRoleAllowed': isDualRoleAllowed,
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
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.warehouseKey == e2?.warehouseKey &&
        e1?.uid == e2?.uid &&
        e1?.cashBalance == e2?.cashBalance &&
        e1?.userRole == e2?.userRole &&
        e1?.updatedDate == e2?.updatedDate &&
        listEquality.equals(e1?.recordStatus, e2?.recordStatus) &&
        e1?.recordNotes == e2?.recordNotes &&
        e1?.outstandingCash == e2?.outstandingCash &&
        e1?.appVersion == e2?.appVersion &&
        listEquality.equals(e1?.orderChaseMsg, e2?.orderChaseMsg) &&
        e1?.assignedWarehouseId == e2?.assignedWarehouseId &&
        e1?.status == e2?.status &&
        e1?.authType == e2?.authType &&
        e1?.isRegistered == e2?.isRegistered &&
        e1?.updatedBy == e2?.updatedBy &&
        e1?.createdBy == e2?.createdBy &&
        e1?.isWarehouseAssigned == e2?.isWarehouseAssigned &&
        e1?.isDualRoleAllowed == e2?.isDualRoleAllowed;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.assignedWarehouseName,
        e?.assignedWarehouseRef,
        e?.createdTime,
        e?.displayName,
        e?.email,
        e?.isActive,
        e?.phoneNumber,
        e?.photoUrl,
        e?.warehouseKey,
        e?.uid,
        e?.cashBalance,
        e?.userRole,
        e?.updatedDate,
        e?.recordStatus,
        e?.recordNotes,
        e?.outstandingCash,
        e?.appVersion,
        e?.orderChaseMsg,
        e?.assignedWarehouseId,
        e?.status,
        e?.authType,
        e?.isRegistered,
        e?.updatedBy,
        e?.createdBy,
        e?.isWarehouseAssigned,
        e?.isDualRoleAllowed
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
