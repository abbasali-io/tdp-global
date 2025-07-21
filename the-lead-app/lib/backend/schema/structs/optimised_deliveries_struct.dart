// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptimisedDeliveriesStruct extends FFFirebaseStruct {
  OptimisedDeliveriesStruct({
    List<OptimisedDeliveryItemStruct>? optimisedDeliveriesList,
    String? totalDistance,
    String? totalDuration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _optimisedDeliveriesList = optimisedDeliveriesList,
        _totalDistance = totalDistance,
        _totalDuration = totalDuration,
        super(firestoreUtilData);

  // "optimisedDeliveriesList" field.
  List<OptimisedDeliveryItemStruct>? _optimisedDeliveriesList;
  List<OptimisedDeliveryItemStruct> get optimisedDeliveriesList =>
      _optimisedDeliveriesList ?? const [];
  set optimisedDeliveriesList(List<OptimisedDeliveryItemStruct>? val) =>
      _optimisedDeliveriesList = val;

  void updateOptimisedDeliveriesList(
      Function(List<OptimisedDeliveryItemStruct>) updateFn) {
    updateFn(_optimisedDeliveriesList ??= []);
  }

  bool hasOptimisedDeliveriesList() => _optimisedDeliveriesList != null;

  // "totalDistance" field.
  String? _totalDistance;
  String get totalDistance => _totalDistance ?? '';
  set totalDistance(String? val) => _totalDistance = val;

  bool hasTotalDistance() => _totalDistance != null;

  // "totalDuration" field.
  String? _totalDuration;
  String get totalDuration => _totalDuration ?? '';
  set totalDuration(String? val) => _totalDuration = val;

  bool hasTotalDuration() => _totalDuration != null;

  static OptimisedDeliveriesStruct fromMap(Map<String, dynamic> data) =>
      OptimisedDeliveriesStruct(
        optimisedDeliveriesList: getStructList(
          data['optimisedDeliveriesList'],
          OptimisedDeliveryItemStruct.fromMap,
        ),
        totalDistance: data['totalDistance'] as String?,
        totalDuration: data['totalDuration'] as String?,
      );

  static OptimisedDeliveriesStruct? maybeFromMap(dynamic data) => data is Map
      ? OptimisedDeliveriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'optimisedDeliveriesList':
            _optimisedDeliveriesList?.map((e) => e.toMap()).toList(),
        'totalDistance': _totalDistance,
        'totalDuration': _totalDuration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'optimisedDeliveriesList': serializeParam(
          _optimisedDeliveriesList,
          ParamType.DataStruct,
          isList: true,
        ),
        'totalDistance': serializeParam(
          _totalDistance,
          ParamType.String,
        ),
        'totalDuration': serializeParam(
          _totalDuration,
          ParamType.String,
        ),
      }.withoutNulls;

  static OptimisedDeliveriesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OptimisedDeliveriesStruct(
        optimisedDeliveriesList:
            deserializeStructParam<OptimisedDeliveryItemStruct>(
          data['optimisedDeliveriesList'],
          ParamType.DataStruct,
          true,
          structBuilder: OptimisedDeliveryItemStruct.fromSerializableMap,
        ),
        totalDistance: deserializeParam(
          data['totalDistance'],
          ParamType.String,
          false,
        ),
        totalDuration: deserializeParam(
          data['totalDuration'],
          ParamType.String,
          false,
        ),
      );

  static OptimisedDeliveriesStruct fromAlgoliaData(Map<String, dynamic> data) =>
      OptimisedDeliveriesStruct(
        optimisedDeliveriesList:
            convertAlgoliaParam<OptimisedDeliveryItemStruct>(
          data['optimisedDeliveriesList'],
          ParamType.DataStruct,
          true,
          structBuilder: OptimisedDeliveryItemStruct.fromAlgoliaData,
        ),
        totalDistance: convertAlgoliaParam(
          data['totalDistance'],
          ParamType.String,
          false,
        ),
        totalDuration: convertAlgoliaParam(
          data['totalDuration'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OptimisedDeliveriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OptimisedDeliveriesStruct &&
        listEquality.equals(
            optimisedDeliveriesList, other.optimisedDeliveriesList) &&
        totalDistance == other.totalDistance &&
        totalDuration == other.totalDuration;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([optimisedDeliveriesList, totalDistance, totalDuration]);
}

OptimisedDeliveriesStruct createOptimisedDeliveriesStruct({
  String? totalDistance,
  String? totalDuration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OptimisedDeliveriesStruct(
      totalDistance: totalDistance,
      totalDuration: totalDuration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OptimisedDeliveriesStruct? updateOptimisedDeliveriesStruct(
  OptimisedDeliveriesStruct? optimisedDeliveries, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    optimisedDeliveries
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOptimisedDeliveriesStructData(
  Map<String, dynamic> firestoreData,
  OptimisedDeliveriesStruct? optimisedDeliveries,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (optimisedDeliveries == null) {
    return;
  }
  if (optimisedDeliveries.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && optimisedDeliveries.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final optimisedDeliveriesData =
      getOptimisedDeliveriesFirestoreData(optimisedDeliveries, forFieldValue);
  final nestedData =
      optimisedDeliveriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      optimisedDeliveries.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOptimisedDeliveriesFirestoreData(
  OptimisedDeliveriesStruct? optimisedDeliveries, [
  bool forFieldValue = false,
]) {
  if (optimisedDeliveries == null) {
    return {};
  }
  final firestoreData = mapToFirestore(optimisedDeliveries.toMap());

  // Add any Firestore field values
  optimisedDeliveries.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOptimisedDeliveriesListFirestoreData(
  List<OptimisedDeliveriesStruct>? optimisedDeliveriess,
) =>
    optimisedDeliveriess
        ?.map((e) => getOptimisedDeliveriesFirestoreData(e, true))
        .toList() ??
    [];
