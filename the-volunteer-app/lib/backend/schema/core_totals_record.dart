import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoreTotalsRecord extends FirestoreRecord {
  CoreTotalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "admin_value_onlineOrders" field.
  double? _adminValueOnlineOrders;
  double get adminValueOnlineOrders => _adminValueOnlineOrders ?? 0.0;
  bool hasAdminValueOnlineOrders() => _adminValueOnlineOrders != null;

  // "admin_total_onlineOrders" field.
  int? _adminTotalOnlineOrders;
  int get adminTotalOnlineOrders => _adminTotalOnlineOrders ?? 0;
  bool hasAdminTotalOnlineOrders() => _adminTotalOnlineOrders != null;

  // "admin_total_offlineOrders" field.
  int? _adminTotalOfflineOrders;
  int get adminTotalOfflineOrders => _adminTotalOfflineOrders ?? 0;
  bool hasAdminTotalOfflineOrders() => _adminTotalOfflineOrders != null;

  // "admin_value_offlineOrders" field.
  double? _adminValueOfflineOrders;
  double get adminValueOfflineOrders => _adminValueOfflineOrders ?? 0.0;
  bool hasAdminValueOfflineOrders() => _adminValueOfflineOrders != null;

  // "admin_value_outstandingAmount" field.
  double? _adminValueOutstandingAmount;
  double get adminValueOutstandingAmount => _adminValueOutstandingAmount ?? 0.0;
  bool hasAdminValueOutstandingAmount() => _adminValueOutstandingAmount != null;

  // "admin_total_noOfwarehouse" field.
  int? _adminTotalNoOfwarehouse;
  int get adminTotalNoOfwarehouse => _adminTotalNoOfwarehouse ?? 0;
  bool hasAdminTotalNoOfwarehouse() => _adminTotalNoOfwarehouse != null;

  // "admin_total_noOfVolunteers" field.
  int? _adminTotalNoOfVolunteers;
  int get adminTotalNoOfVolunteers => _adminTotalNoOfVolunteers ?? 0;
  bool hasAdminTotalNoOfVolunteers() => _adminTotalNoOfVolunteers != null;

  // "admin_total_noOfLeads" field.
  int? _adminTotalNoOfLeads;
  int get adminTotalNoOfLeads => _adminTotalNoOfLeads ?? 0;
  bool hasAdminTotalNoOfLeads() => _adminTotalNoOfLeads != null;

  // "admin_totalAvailableStockAllProducts" field.
  int? _adminTotalAvailableStockAllProducts;
  int get adminTotalAvailableStockAllProducts =>
      _adminTotalAvailableStockAllProducts ?? 0;
  bool hasAdminTotalAvailableStockAllProducts() =>
      _adminTotalAvailableStockAllProducts != null;

  void _initializeFields() {
    _adminValueOnlineOrders =
        castToType<double>(snapshotData['admin_value_onlineOrders']);
    _adminTotalOnlineOrders =
        castToType<int>(snapshotData['admin_total_onlineOrders']);
    _adminTotalOfflineOrders =
        castToType<int>(snapshotData['admin_total_offlineOrders']);
    _adminValueOfflineOrders =
        castToType<double>(snapshotData['admin_value_offlineOrders']);
    _adminValueOutstandingAmount =
        castToType<double>(snapshotData['admin_value_outstandingAmount']);
    _adminTotalNoOfwarehouse =
        castToType<int>(snapshotData['admin_total_noOfwarehouse']);
    _adminTotalNoOfVolunteers =
        castToType<int>(snapshotData['admin_total_noOfVolunteers']);
    _adminTotalNoOfLeads =
        castToType<int>(snapshotData['admin_total_noOfLeads']);
    _adminTotalAvailableStockAllProducts =
        castToType<int>(snapshotData['admin_totalAvailableStockAllProducts']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coreTotals');

  static Stream<CoreTotalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoreTotalsRecord.fromSnapshot(s));

  static Future<CoreTotalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoreTotalsRecord.fromSnapshot(s));

  static CoreTotalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoreTotalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoreTotalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoreTotalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoreTotalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoreTotalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoreTotalsRecordData({
  double? adminValueOnlineOrders,
  int? adminTotalOnlineOrders,
  int? adminTotalOfflineOrders,
  double? adminValueOfflineOrders,
  double? adminValueOutstandingAmount,
  int? adminTotalNoOfwarehouse,
  int? adminTotalNoOfVolunteers,
  int? adminTotalNoOfLeads,
  int? adminTotalAvailableStockAllProducts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'admin_value_onlineOrders': adminValueOnlineOrders,
      'admin_total_onlineOrders': adminTotalOnlineOrders,
      'admin_total_offlineOrders': adminTotalOfflineOrders,
      'admin_value_offlineOrders': adminValueOfflineOrders,
      'admin_value_outstandingAmount': adminValueOutstandingAmount,
      'admin_total_noOfwarehouse': adminTotalNoOfwarehouse,
      'admin_total_noOfVolunteers': adminTotalNoOfVolunteers,
      'admin_total_noOfLeads': adminTotalNoOfLeads,
      'admin_totalAvailableStockAllProducts':
          adminTotalAvailableStockAllProducts,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoreTotalsRecordDocumentEquality implements Equality<CoreTotalsRecord> {
  const CoreTotalsRecordDocumentEquality();

  @override
  bool equals(CoreTotalsRecord? e1, CoreTotalsRecord? e2) {
    return e1?.adminValueOnlineOrders == e2?.adminValueOnlineOrders &&
        e1?.adminTotalOnlineOrders == e2?.adminTotalOnlineOrders &&
        e1?.adminTotalOfflineOrders == e2?.adminTotalOfflineOrders &&
        e1?.adminValueOfflineOrders == e2?.adminValueOfflineOrders &&
        e1?.adminValueOutstandingAmount == e2?.adminValueOutstandingAmount &&
        e1?.adminTotalNoOfwarehouse == e2?.adminTotalNoOfwarehouse &&
        e1?.adminTotalNoOfVolunteers == e2?.adminTotalNoOfVolunteers &&
        e1?.adminTotalNoOfLeads == e2?.adminTotalNoOfLeads &&
        e1?.adminTotalAvailableStockAllProducts ==
            e2?.adminTotalAvailableStockAllProducts;
  }

  @override
  int hash(CoreTotalsRecord? e) => const ListEquality().hash([
        e?.adminValueOnlineOrders,
        e?.adminTotalOnlineOrders,
        e?.adminTotalOfflineOrders,
        e?.adminValueOfflineOrders,
        e?.adminValueOutstandingAmount,
        e?.adminTotalNoOfwarehouse,
        e?.adminTotalNoOfVolunteers,
        e?.adminTotalNoOfLeads,
        e?.adminTotalAvailableStockAllProducts
      ]);

  @override
  bool isValidKey(Object? o) => o is CoreTotalsRecord;
}
