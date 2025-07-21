import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WarehousesRecord extends FirestoreRecord {
  WarehousesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "isPublished" field.
  bool? _isPublished;
  bool get isPublished => _isPublished ?? false;
  bool hasIsPublished() => _isPublished != null;

  // "leadAssignedRef" field.
  DocumentReference? _leadAssignedRef;
  DocumentReference? get leadAssignedRef => _leadAssignedRef;
  bool hasLeadAssignedRef() => _leadAssignedRef != null;

  // "leadAssigned" field.
  String? _leadAssigned;
  String get leadAssigned => _leadAssigned ?? '';
  bool hasLeadAssigned() => _leadAssigned != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isLeadAssigned" field.
  bool? _isLeadAssigned;
  bool get isLeadAssigned => _isLeadAssigned ?? false;
  bool hasIsLeadAssigned() => _isLeadAssigned != null;

  // "leadEmail" field.
  String? _leadEmail;
  String get leadEmail => _leadEmail ?? '';
  bool hasLeadEmail() => _leadEmail != null;

  // "leadPhoneNumber" field.
  String? _leadPhoneNumber;
  String get leadPhoneNumber => _leadPhoneNumber ?? '';
  bool hasLeadPhoneNumber() => _leadPhoneNumber != null;

  // "total_availableStockAllProducts" field.
  int? _totalAvailableStockAllProducts;
  int get totalAvailableStockAllProducts =>
      _totalAvailableStockAllProducts ?? 0;
  bool hasTotalAvailableStockAllProducts() =>
      _totalAvailableStockAllProducts != null;

  // "total_damagedStock" field.
  int? _totalDamagedStock;
  int get totalDamagedStock => _totalDamagedStock ?? 0;
  bool hasTotalDamagedStock() => _totalDamagedStock != null;

  // "total_offlineOrders" field.
  int? _totalOfflineOrders;
  int get totalOfflineOrders => _totalOfflineOrders ?? 0;
  bool hasTotalOfflineOrders() => _totalOfflineOrders != null;

  // "total_onlineOrders" field.
  int? _totalOnlineOrders;
  int get totalOnlineOrders => _totalOnlineOrders ?? 0;
  bool hasTotalOnlineOrders() => _totalOnlineOrders != null;

  // "total_onlineOrdersSla" field.
  int? _totalOnlineOrdersSla;
  int get totalOnlineOrdersSla => _totalOnlineOrdersSla ?? 0;
  bool hasTotalOnlineOrdersSla() => _totalOnlineOrdersSla != null;

  // "total_outstandingOfflineOrders" field.
  int? _totalOutstandingOfflineOrders;
  int get totalOutstandingOfflineOrders => _totalOutstandingOfflineOrders ?? 0;
  bool hasTotalOutstandingOfflineOrders() =>
      _totalOutstandingOfflineOrders != null;

  // "total_pendingOnlineOrders" field.
  int? _totalPendingOnlineOrders;
  int get totalPendingOnlineOrders => _totalPendingOnlineOrders ?? 0;
  bool hasTotalPendingOnlineOrders() => _totalPendingOnlineOrders != null;

  // "total_postcodes" field.
  int? _totalPostcodes;
  int get totalPostcodes => _totalPostcodes ?? 0;
  bool hasTotalPostcodes() => _totalPostcodes != null;

  // "total_postcodesNoVolunteers" field.
  int? _totalPostcodesNoVolunteers;
  int get totalPostcodesNoVolunteers => _totalPostcodesNoVolunteers ?? 0;
  bool hasTotalPostcodesNoVolunteers() => _totalPostcodesNoVolunteers != null;

  // "total_productSoldOffline" field.
  int? _totalProductSoldOffline;
  int get totalProductSoldOffline => _totalProductSoldOffline ?? 0;
  bool hasTotalProductSoldOffline() => _totalProductSoldOffline != null;

  // "total_productsDeliveredOnline" field.
  int? _totalProductsDeliveredOnline;
  int get totalProductsDeliveredOnline => _totalProductsDeliveredOnline ?? 0;
  bool hasTotalProductsDeliveredOnline() =>
      _totalProductsDeliveredOnline != null;

  // "total_reservedForOnlineOrders" field.
  int? _totalReservedForOnlineOrders;
  int get totalReservedForOnlineOrders => _totalReservedForOnlineOrders ?? 0;
  bool hasTotalReservedForOnlineOrders() =>
      _totalReservedForOnlineOrders != null;

  // "total_stockWithVolunteers" field.
  int? _totalStockWithVolunteers;
  int get totalStockWithVolunteers => _totalStockWithVolunteers ?? 0;
  bool hasTotalStockWithVolunteers() => _totalStockWithVolunteers != null;

  // "total_typeOfProducts" field.
  int? _totalTypeOfProducts;
  int get totalTypeOfProducts => _totalTypeOfProducts ?? 0;
  bool hasTotalTypeOfProducts() => _totalTypeOfProducts != null;

  // "total_volunteers" field.
  int? _totalVolunteers;
  int get totalVolunteers => _totalVolunteers ?? 0;
  bool hasTotalVolunteers() => _totalVolunteers != null;

  // "value_offlineOrders" field.
  double? _valueOfflineOrders;
  double get valueOfflineOrders => _valueOfflineOrders ?? 0.0;
  bool hasValueOfflineOrders() => _valueOfflineOrders != null;

  // "value_onlineOrders" field.
  double? _valueOnlineOrders;
  double get valueOnlineOrders => _valueOnlineOrders ?? 0.0;
  bool hasValueOnlineOrders() => _valueOnlineOrders != null;

  // "value_outstandingOfflineOrders" field.
  double? _valueOutstandingOfflineOrders;
  double get valueOutstandingOfflineOrders =>
      _valueOutstandingOfflineOrders ?? 0.0;
  bool hasValueOutstandingOfflineOrders() =>
      _valueOutstandingOfflineOrders != null;

  // "warehouseId" field.
  String? _warehouseId;
  String get warehouseId => _warehouseId ?? '';
  bool hasWarehouseId() => _warehouseId != null;

  // "warehouseKey" field.
  String? _warehouseKey;
  String get warehouseKey => _warehouseKey ?? '';
  bool hasWarehouseKey() => _warehouseKey != null;

  // "warehousePortalId" field.
  String? _warehousePortalId;
  String get warehousePortalId => _warehousePortalId ?? '';
  bool hasWarehousePortalId() => _warehousePortalId != null;

  void _initializeFields() {
    _isPublished = snapshotData['isPublished'] as bool?;
    _leadAssignedRef = snapshotData['leadAssignedRef'] as DocumentReference?;
    _leadAssigned = snapshotData['leadAssigned'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _isLeadAssigned = snapshotData['isLeadAssigned'] as bool?;
    _leadEmail = snapshotData['leadEmail'] as String?;
    _leadPhoneNumber = snapshotData['leadPhoneNumber'] as String?;
    _totalAvailableStockAllProducts =
        castToType<int>(snapshotData['total_availableStockAllProducts']);
    _totalDamagedStock = castToType<int>(snapshotData['total_damagedStock']);
    _totalOfflineOrders = castToType<int>(snapshotData['total_offlineOrders']);
    _totalOnlineOrders = castToType<int>(snapshotData['total_onlineOrders']);
    _totalOnlineOrdersSla =
        castToType<int>(snapshotData['total_onlineOrdersSla']);
    _totalOutstandingOfflineOrders =
        castToType<int>(snapshotData['total_outstandingOfflineOrders']);
    _totalPendingOnlineOrders =
        castToType<int>(snapshotData['total_pendingOnlineOrders']);
    _totalPostcodes = castToType<int>(snapshotData['total_postcodes']);
    _totalPostcodesNoVolunteers =
        castToType<int>(snapshotData['total_postcodesNoVolunteers']);
    _totalProductSoldOffline =
        castToType<int>(snapshotData['total_productSoldOffline']);
    _totalProductsDeliveredOnline =
        castToType<int>(snapshotData['total_productsDeliveredOnline']);
    _totalReservedForOnlineOrders =
        castToType<int>(snapshotData['total_reservedForOnlineOrders']);
    _totalStockWithVolunteers =
        castToType<int>(snapshotData['total_stockWithVolunteers']);
    _totalTypeOfProducts =
        castToType<int>(snapshotData['total_typeOfProducts']);
    _totalVolunteers = castToType<int>(snapshotData['total_volunteers']);
    _valueOfflineOrders =
        castToType<double>(snapshotData['value_offlineOrders']);
    _valueOnlineOrders = castToType<double>(snapshotData['value_onlineOrders']);
    _valueOutstandingOfflineOrders =
        castToType<double>(snapshotData['value_outstandingOfflineOrders']);
    _warehouseId = snapshotData['warehouseId'] as String?;
    _warehouseKey = snapshotData['warehouseKey'] as String?;
    _warehousePortalId = snapshotData['warehousePortalId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('warehouses');

  static Stream<WarehousesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WarehousesRecord.fromSnapshot(s));

  static Future<WarehousesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WarehousesRecord.fromSnapshot(s));

  static WarehousesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WarehousesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WarehousesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WarehousesRecord._(reference, mapFromFirestore(data));

  static WarehousesRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      WarehousesRecord.getDocumentFromData(
        {
          'isPublished': snapshot.data['isPublished'],
          'leadAssignedRef': convertAlgoliaParam(
            snapshot.data['leadAssignedRef'],
            ParamType.DocumentReference,
            false,
          ),
          'leadAssigned': snapshot.data['leadAssigned'],
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'display_name': snapshot.data['display_name'],
          'isActive': snapshot.data['isActive'],
          'isLeadAssigned': snapshot.data['isLeadAssigned'],
          'leadEmail': snapshot.data['leadEmail'],
          'leadPhoneNumber': snapshot.data['leadPhoneNumber'],
          'total_availableStockAllProducts': convertAlgoliaParam(
            snapshot.data['total_availableStockAllProducts'],
            ParamType.int,
            false,
          ),
          'total_damagedStock': convertAlgoliaParam(
            snapshot.data['total_damagedStock'],
            ParamType.int,
            false,
          ),
          'total_offlineOrders': convertAlgoliaParam(
            snapshot.data['total_offlineOrders'],
            ParamType.int,
            false,
          ),
          'total_onlineOrders': convertAlgoliaParam(
            snapshot.data['total_onlineOrders'],
            ParamType.int,
            false,
          ),
          'total_onlineOrdersSla': convertAlgoliaParam(
            snapshot.data['total_onlineOrdersSla'],
            ParamType.int,
            false,
          ),
          'total_outstandingOfflineOrders': convertAlgoliaParam(
            snapshot.data['total_outstandingOfflineOrders'],
            ParamType.int,
            false,
          ),
          'total_pendingOnlineOrders': convertAlgoliaParam(
            snapshot.data['total_pendingOnlineOrders'],
            ParamType.int,
            false,
          ),
          'total_postcodes': convertAlgoliaParam(
            snapshot.data['total_postcodes'],
            ParamType.int,
            false,
          ),
          'total_postcodesNoVolunteers': convertAlgoliaParam(
            snapshot.data['total_postcodesNoVolunteers'],
            ParamType.int,
            false,
          ),
          'total_productSoldOffline': convertAlgoliaParam(
            snapshot.data['total_productSoldOffline'],
            ParamType.int,
            false,
          ),
          'total_productsDeliveredOnline': convertAlgoliaParam(
            snapshot.data['total_productsDeliveredOnline'],
            ParamType.int,
            false,
          ),
          'total_reservedForOnlineOrders': convertAlgoliaParam(
            snapshot.data['total_reservedForOnlineOrders'],
            ParamType.int,
            false,
          ),
          'total_stockWithVolunteers': convertAlgoliaParam(
            snapshot.data['total_stockWithVolunteers'],
            ParamType.int,
            false,
          ),
          'total_typeOfProducts': convertAlgoliaParam(
            snapshot.data['total_typeOfProducts'],
            ParamType.int,
            false,
          ),
          'total_volunteers': convertAlgoliaParam(
            snapshot.data['total_volunteers'],
            ParamType.int,
            false,
          ),
          'value_offlineOrders': convertAlgoliaParam(
            snapshot.data['value_offlineOrders'],
            ParamType.double,
            false,
          ),
          'value_onlineOrders': convertAlgoliaParam(
            snapshot.data['value_onlineOrders'],
            ParamType.double,
            false,
          ),
          'value_outstandingOfflineOrders': convertAlgoliaParam(
            snapshot.data['value_outstandingOfflineOrders'],
            ParamType.double,
            false,
          ),
          'warehouseId': snapshot.data['warehouseId'],
          'warehouseKey': snapshot.data['warehouseKey'],
          'warehousePortalId': snapshot.data['warehousePortalId'],
        },
        WarehousesRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<WarehousesRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'warehouses',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'WarehousesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WarehousesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWarehousesRecordData({
  bool? isPublished,
  DocumentReference? leadAssignedRef,
  String? leadAssigned,
  DateTime? createdTime,
  String? displayName,
  bool? isActive,
  bool? isLeadAssigned,
  String? leadEmail,
  String? leadPhoneNumber,
  int? totalAvailableStockAllProducts,
  int? totalDamagedStock,
  int? totalOfflineOrders,
  int? totalOnlineOrders,
  int? totalOnlineOrdersSla,
  int? totalOutstandingOfflineOrders,
  int? totalPendingOnlineOrders,
  int? totalPostcodes,
  int? totalPostcodesNoVolunteers,
  int? totalProductSoldOffline,
  int? totalProductsDeliveredOnline,
  int? totalReservedForOnlineOrders,
  int? totalStockWithVolunteers,
  int? totalTypeOfProducts,
  int? totalVolunteers,
  double? valueOfflineOrders,
  double? valueOnlineOrders,
  double? valueOutstandingOfflineOrders,
  String? warehouseId,
  String? warehouseKey,
  String? warehousePortalId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isPublished': isPublished,
      'leadAssignedRef': leadAssignedRef,
      'leadAssigned': leadAssigned,
      'created_time': createdTime,
      'display_name': displayName,
      'isActive': isActive,
      'isLeadAssigned': isLeadAssigned,
      'leadEmail': leadEmail,
      'leadPhoneNumber': leadPhoneNumber,
      'total_availableStockAllProducts': totalAvailableStockAllProducts,
      'total_damagedStock': totalDamagedStock,
      'total_offlineOrders': totalOfflineOrders,
      'total_onlineOrders': totalOnlineOrders,
      'total_onlineOrdersSla': totalOnlineOrdersSla,
      'total_outstandingOfflineOrders': totalOutstandingOfflineOrders,
      'total_pendingOnlineOrders': totalPendingOnlineOrders,
      'total_postcodes': totalPostcodes,
      'total_postcodesNoVolunteers': totalPostcodesNoVolunteers,
      'total_productSoldOffline': totalProductSoldOffline,
      'total_productsDeliveredOnline': totalProductsDeliveredOnline,
      'total_reservedForOnlineOrders': totalReservedForOnlineOrders,
      'total_stockWithVolunteers': totalStockWithVolunteers,
      'total_typeOfProducts': totalTypeOfProducts,
      'total_volunteers': totalVolunteers,
      'value_offlineOrders': valueOfflineOrders,
      'value_onlineOrders': valueOnlineOrders,
      'value_outstandingOfflineOrders': valueOutstandingOfflineOrders,
      'warehouseId': warehouseId,
      'warehouseKey': warehouseKey,
      'warehousePortalId': warehousePortalId,
    }.withoutNulls,
  );

  return firestoreData;
}

class WarehousesRecordDocumentEquality implements Equality<WarehousesRecord> {
  const WarehousesRecordDocumentEquality();

  @override
  bool equals(WarehousesRecord? e1, WarehousesRecord? e2) {
    return e1?.isPublished == e2?.isPublished &&
        e1?.leadAssignedRef == e2?.leadAssignedRef &&
        e1?.leadAssigned == e2?.leadAssigned &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.isActive == e2?.isActive &&
        e1?.isLeadAssigned == e2?.isLeadAssigned &&
        e1?.leadEmail == e2?.leadEmail &&
        e1?.leadPhoneNumber == e2?.leadPhoneNumber &&
        e1?.totalAvailableStockAllProducts ==
            e2?.totalAvailableStockAllProducts &&
        e1?.totalDamagedStock == e2?.totalDamagedStock &&
        e1?.totalOfflineOrders == e2?.totalOfflineOrders &&
        e1?.totalOnlineOrders == e2?.totalOnlineOrders &&
        e1?.totalOnlineOrdersSla == e2?.totalOnlineOrdersSla &&
        e1?.totalOutstandingOfflineOrders ==
            e2?.totalOutstandingOfflineOrders &&
        e1?.totalPendingOnlineOrders == e2?.totalPendingOnlineOrders &&
        e1?.totalPostcodes == e2?.totalPostcodes &&
        e1?.totalPostcodesNoVolunteers == e2?.totalPostcodesNoVolunteers &&
        e1?.totalProductSoldOffline == e2?.totalProductSoldOffline &&
        e1?.totalProductsDeliveredOnline == e2?.totalProductsDeliveredOnline &&
        e1?.totalReservedForOnlineOrders == e2?.totalReservedForOnlineOrders &&
        e1?.totalStockWithVolunteers == e2?.totalStockWithVolunteers &&
        e1?.totalTypeOfProducts == e2?.totalTypeOfProducts &&
        e1?.totalVolunteers == e2?.totalVolunteers &&
        e1?.valueOfflineOrders == e2?.valueOfflineOrders &&
        e1?.valueOnlineOrders == e2?.valueOnlineOrders &&
        e1?.valueOutstandingOfflineOrders ==
            e2?.valueOutstandingOfflineOrders &&
        e1?.warehouseId == e2?.warehouseId &&
        e1?.warehouseKey == e2?.warehouseKey &&
        e1?.warehousePortalId == e2?.warehousePortalId;
  }

  @override
  int hash(WarehousesRecord? e) => const ListEquality().hash([
        e?.isPublished,
        e?.leadAssignedRef,
        e?.leadAssigned,
        e?.createdTime,
        e?.displayName,
        e?.isActive,
        e?.isLeadAssigned,
        e?.leadEmail,
        e?.leadPhoneNumber,
        e?.totalAvailableStockAllProducts,
        e?.totalDamagedStock,
        e?.totalOfflineOrders,
        e?.totalOnlineOrders,
        e?.totalOnlineOrdersSla,
        e?.totalOutstandingOfflineOrders,
        e?.totalPendingOnlineOrders,
        e?.totalPostcodes,
        e?.totalPostcodesNoVolunteers,
        e?.totalProductSoldOffline,
        e?.totalProductsDeliveredOnline,
        e?.totalReservedForOnlineOrders,
        e?.totalStockWithVolunteers,
        e?.totalTypeOfProducts,
        e?.totalVolunteers,
        e?.valueOfflineOrders,
        e?.valueOnlineOrders,
        e?.valueOutstandingOfflineOrders,
        e?.warehouseId,
        e?.warehouseKey,
        e?.warehousePortalId
      ]);

  @override
  bool isValidKey(Object? o) => o is WarehousesRecord;
}
