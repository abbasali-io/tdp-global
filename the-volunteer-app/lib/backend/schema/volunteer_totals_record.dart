import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VolunteerTotalsRecord extends FirestoreRecord {
  VolunteerTotalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "value_outstandingAmount" field.
  double? _valueOutstandingAmount;
  double get valueOutstandingAmount => _valueOutstandingAmount ?? 0.0;
  bool hasValueOutstandingAmount() => _valueOutstandingAmount != null;

  // "value_offlineSales" field.
  double? _valueOfflineSales;
  double get valueOfflineSales => _valueOfflineSales ?? 0.0;
  bool hasValueOfflineSales() => _valueOfflineSales != null;

  // "total_deliveredOnlineOrders" field.
  int? _totalDeliveredOnlineOrders;
  int get totalDeliveredOnlineOrders => _totalDeliveredOnlineOrders ?? 0;
  bool hasTotalDeliveredOnlineOrders() => _totalDeliveredOnlineOrders != null;

  // "total_productDeliveredOnline" field.
  int? _totalProductDeliveredOnline;
  int get totalProductDeliveredOnline => _totalProductDeliveredOnline ?? 0;
  bool hasTotalProductDeliveredOnline() => _totalProductDeliveredOnline != null;

  // "total_productSoldOffline" field.
  int? _totalProductSoldOffline;
  int get totalProductSoldOffline => _totalProductSoldOffline ?? 0;
  bool hasTotalProductSoldOffline() => _totalProductSoldOffline != null;

  // "total_damagedProducts" field.
  int? _totalDamagedProducts;
  int get totalDamagedProducts => _totalDamagedProducts ?? 0;
  bool hasTotalDamagedProducts() => _totalDamagedProducts != null;

  // "total_stockReservedForOnlineOrders" field.
  int? _totalStockReservedForOnlineOrders;
  int get totalStockReservedForOnlineOrders =>
      _totalStockReservedForOnlineOrders ?? 0;
  bool hasTotalStockReservedForOnlineOrders() =>
      _totalStockReservedForOnlineOrders != null;

  // "total_postcodeSelected" field.
  int? _totalPostcodeSelected;
  int get totalPostcodeSelected => _totalPostcodeSelected ?? 0;
  bool hasTotalPostcodeSelected() => _totalPostcodeSelected != null;

  // "total_assignedTypeOfProducts" field.
  int? _totalAssignedTypeOfProducts;
  int get totalAssignedTypeOfProducts => _totalAssignedTypeOfProducts ?? 0;
  bool hasTotalAssignedTypeOfProducts() => _totalAssignedTypeOfProducts != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _valueOutstandingAmount =
        castToType<double>(snapshotData['value_outstandingAmount']);
    _valueOfflineSales = castToType<double>(snapshotData['value_offlineSales']);
    _totalDeliveredOnlineOrders =
        castToType<int>(snapshotData['total_deliveredOnlineOrders']);
    _totalProductDeliveredOnline =
        castToType<int>(snapshotData['total_productDeliveredOnline']);
    _totalProductSoldOffline =
        castToType<int>(snapshotData['total_productSoldOffline']);
    _totalDamagedProducts =
        castToType<int>(snapshotData['total_damagedProducts']);
    _totalStockReservedForOnlineOrders =
        castToType<int>(snapshotData['total_stockReservedForOnlineOrders']);
    _totalPostcodeSelected =
        castToType<int>(snapshotData['total_postcodeSelected']);
    _totalAssignedTypeOfProducts =
        castToType<int>(snapshotData['total_assignedTypeOfProducts']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('volunteer_totals')
          : FirebaseFirestore.instance.collectionGroup('volunteer_totals');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('volunteer_totals').doc(id);

  static Stream<VolunteerTotalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VolunteerTotalsRecord.fromSnapshot(s));

  static Future<VolunteerTotalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VolunteerTotalsRecord.fromSnapshot(s));

  static VolunteerTotalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VolunteerTotalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VolunteerTotalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VolunteerTotalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VolunteerTotalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VolunteerTotalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVolunteerTotalsRecordData({
  double? valueOutstandingAmount,
  double? valueOfflineSales,
  int? totalDeliveredOnlineOrders,
  int? totalProductDeliveredOnline,
  int? totalProductSoldOffline,
  int? totalDamagedProducts,
  int? totalStockReservedForOnlineOrders,
  int? totalPostcodeSelected,
  int? totalAssignedTypeOfProducts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'value_outstandingAmount': valueOutstandingAmount,
      'value_offlineSales': valueOfflineSales,
      'total_deliveredOnlineOrders': totalDeliveredOnlineOrders,
      'total_productDeliveredOnline': totalProductDeliveredOnline,
      'total_productSoldOffline': totalProductSoldOffline,
      'total_damagedProducts': totalDamagedProducts,
      'total_stockReservedForOnlineOrders': totalStockReservedForOnlineOrders,
      'total_postcodeSelected': totalPostcodeSelected,
      'total_assignedTypeOfProducts': totalAssignedTypeOfProducts,
    }.withoutNulls,
  );

  return firestoreData;
}

class VolunteerTotalsRecordDocumentEquality
    implements Equality<VolunteerTotalsRecord> {
  const VolunteerTotalsRecordDocumentEquality();

  @override
  bool equals(VolunteerTotalsRecord? e1, VolunteerTotalsRecord? e2) {
    return e1?.valueOutstandingAmount == e2?.valueOutstandingAmount &&
        e1?.valueOfflineSales == e2?.valueOfflineSales &&
        e1?.totalDeliveredOnlineOrders == e2?.totalDeliveredOnlineOrders &&
        e1?.totalProductDeliveredOnline == e2?.totalProductDeliveredOnline &&
        e1?.totalProductSoldOffline == e2?.totalProductSoldOffline &&
        e1?.totalDamagedProducts == e2?.totalDamagedProducts &&
        e1?.totalStockReservedForOnlineOrders ==
            e2?.totalStockReservedForOnlineOrders &&
        e1?.totalPostcodeSelected == e2?.totalPostcodeSelected &&
        e1?.totalAssignedTypeOfProducts == e2?.totalAssignedTypeOfProducts;
  }

  @override
  int hash(VolunteerTotalsRecord? e) => const ListEquality().hash([
        e?.valueOutstandingAmount,
        e?.valueOfflineSales,
        e?.totalDeliveredOnlineOrders,
        e?.totalProductDeliveredOnline,
        e?.totalProductSoldOffline,
        e?.totalDamagedProducts,
        e?.totalStockReservedForOnlineOrders,
        e?.totalPostcodeSelected,
        e?.totalAssignedTypeOfProducts
      ]);

  @override
  bool isValidKey(Object? o) => o is VolunteerTotalsRecord;
}
