// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OptimisedDeliveryItemStruct extends FFFirebaseStruct {
  OptimisedDeliveryItemStruct({
    String? orderNumber,
    String? deliveryAddressLine1,
    String? deliveryAddressLine2,
    String? deliveryPostcode,
    String? deliveryFirstName,
    String? deliveryLastName,
    DocumentReference? deliveryRef,
    int? originalIndex,
    int? waypointIndex,
    String? legDistance,
    String? legDuration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _orderNumber = orderNumber,
        _deliveryAddressLine1 = deliveryAddressLine1,
        _deliveryAddressLine2 = deliveryAddressLine2,
        _deliveryPostcode = deliveryPostcode,
        _deliveryFirstName = deliveryFirstName,
        _deliveryLastName = deliveryLastName,
        _deliveryRef = deliveryRef,
        _originalIndex = originalIndex,
        _waypointIndex = waypointIndex,
        _legDistance = legDistance,
        _legDuration = legDuration,
        super(firestoreUtilData);

  // "orderNumber" field.
  String? _orderNumber;
  String get orderNumber => _orderNumber ?? '';
  set orderNumber(String? val) => _orderNumber = val;

  bool hasOrderNumber() => _orderNumber != null;

  // "deliveryAddressLine1" field.
  String? _deliveryAddressLine1;
  String get deliveryAddressLine1 => _deliveryAddressLine1 ?? '';
  set deliveryAddressLine1(String? val) => _deliveryAddressLine1 = val;

  bool hasDeliveryAddressLine1() => _deliveryAddressLine1 != null;

  // "deliveryAddressLine2" field.
  String? _deliveryAddressLine2;
  String get deliveryAddressLine2 => _deliveryAddressLine2 ?? '';
  set deliveryAddressLine2(String? val) => _deliveryAddressLine2 = val;

  bool hasDeliveryAddressLine2() => _deliveryAddressLine2 != null;

  // "deliveryPostcode" field.
  String? _deliveryPostcode;
  String get deliveryPostcode => _deliveryPostcode ?? '';
  set deliveryPostcode(String? val) => _deliveryPostcode = val;

  bool hasDeliveryPostcode() => _deliveryPostcode != null;

  // "deliveryFirstName" field.
  String? _deliveryFirstName;
  String get deliveryFirstName => _deliveryFirstName ?? '';
  set deliveryFirstName(String? val) => _deliveryFirstName = val;

  bool hasDeliveryFirstName() => _deliveryFirstName != null;

  // "deliveryLastName" field.
  String? _deliveryLastName;
  String get deliveryLastName => _deliveryLastName ?? '';
  set deliveryLastName(String? val) => _deliveryLastName = val;

  bool hasDeliveryLastName() => _deliveryLastName != null;

  // "deliveryRef" field.
  DocumentReference? _deliveryRef;
  DocumentReference? get deliveryRef => _deliveryRef;
  set deliveryRef(DocumentReference? val) => _deliveryRef = val;

  bool hasDeliveryRef() => _deliveryRef != null;

  // "originalIndex" field.
  int? _originalIndex;
  int get originalIndex => _originalIndex ?? 0;
  set originalIndex(int? val) => _originalIndex = val;

  void incrementOriginalIndex(int amount) =>
      originalIndex = originalIndex + amount;

  bool hasOriginalIndex() => _originalIndex != null;

  // "waypointIndex" field.
  int? _waypointIndex;
  int get waypointIndex => _waypointIndex ?? 0;
  set waypointIndex(int? val) => _waypointIndex = val;

  void incrementWaypointIndex(int amount) =>
      waypointIndex = waypointIndex + amount;

  bool hasWaypointIndex() => _waypointIndex != null;

  // "legDistance" field.
  String? _legDistance;
  String get legDistance => _legDistance ?? '';
  set legDistance(String? val) => _legDistance = val;

  bool hasLegDistance() => _legDistance != null;

  // "legDuration" field.
  String? _legDuration;
  String get legDuration => _legDuration ?? '';
  set legDuration(String? val) => _legDuration = val;

  bool hasLegDuration() => _legDuration != null;

  static OptimisedDeliveryItemStruct fromMap(Map<String, dynamic> data) =>
      OptimisedDeliveryItemStruct(
        orderNumber: data['orderNumber'] as String?,
        deliveryAddressLine1: data['deliveryAddressLine1'] as String?,
        deliveryAddressLine2: data['deliveryAddressLine2'] as String?,
        deliveryPostcode: data['deliveryPostcode'] as String?,
        deliveryFirstName: data['deliveryFirstName'] as String?,
        deliveryLastName: data['deliveryLastName'] as String?,
        deliveryRef: data['deliveryRef'] as DocumentReference?,
        originalIndex: castToType<int>(data['originalIndex']),
        waypointIndex: castToType<int>(data['waypointIndex']),
        legDistance: data['legDistance'] as String?,
        legDuration: data['legDuration'] as String?,
      );

  static OptimisedDeliveryItemStruct? maybeFromMap(dynamic data) => data is Map
      ? OptimisedDeliveryItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'orderNumber': _orderNumber,
        'deliveryAddressLine1': _deliveryAddressLine1,
        'deliveryAddressLine2': _deliveryAddressLine2,
        'deliveryPostcode': _deliveryPostcode,
        'deliveryFirstName': _deliveryFirstName,
        'deliveryLastName': _deliveryLastName,
        'deliveryRef': _deliveryRef,
        'originalIndex': _originalIndex,
        'waypointIndex': _waypointIndex,
        'legDistance': _legDistance,
        'legDuration': _legDuration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orderNumber': serializeParam(
          _orderNumber,
          ParamType.String,
        ),
        'deliveryAddressLine1': serializeParam(
          _deliveryAddressLine1,
          ParamType.String,
        ),
        'deliveryAddressLine2': serializeParam(
          _deliveryAddressLine2,
          ParamType.String,
        ),
        'deliveryPostcode': serializeParam(
          _deliveryPostcode,
          ParamType.String,
        ),
        'deliveryFirstName': serializeParam(
          _deliveryFirstName,
          ParamType.String,
        ),
        'deliveryLastName': serializeParam(
          _deliveryLastName,
          ParamType.String,
        ),
        'deliveryRef': serializeParam(
          _deliveryRef,
          ParamType.DocumentReference,
        ),
        'originalIndex': serializeParam(
          _originalIndex,
          ParamType.int,
        ),
        'waypointIndex': serializeParam(
          _waypointIndex,
          ParamType.int,
        ),
        'legDistance': serializeParam(
          _legDistance,
          ParamType.String,
        ),
        'legDuration': serializeParam(
          _legDuration,
          ParamType.String,
        ),
      }.withoutNulls;

  static OptimisedDeliveryItemStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      OptimisedDeliveryItemStruct(
        orderNumber: deserializeParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
        deliveryAddressLine1: deserializeParam(
          data['deliveryAddressLine1'],
          ParamType.String,
          false,
        ),
        deliveryAddressLine2: deserializeParam(
          data['deliveryAddressLine2'],
          ParamType.String,
          false,
        ),
        deliveryPostcode: deserializeParam(
          data['deliveryPostcode'],
          ParamType.String,
          false,
        ),
        deliveryFirstName: deserializeParam(
          data['deliveryFirstName'],
          ParamType.String,
          false,
        ),
        deliveryLastName: deserializeParam(
          data['deliveryLastName'],
          ParamType.String,
          false,
        ),
        deliveryRef: deserializeParam(
          data['deliveryRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['deliveries'],
        ),
        originalIndex: deserializeParam(
          data['originalIndex'],
          ParamType.int,
          false,
        ),
        waypointIndex: deserializeParam(
          data['waypointIndex'],
          ParamType.int,
          false,
        ),
        legDistance: deserializeParam(
          data['legDistance'],
          ParamType.String,
          false,
        ),
        legDuration: deserializeParam(
          data['legDuration'],
          ParamType.String,
          false,
        ),
      );

  static OptimisedDeliveryItemStruct fromAlgoliaData(
          Map<String, dynamic> data) =>
      OptimisedDeliveryItemStruct(
        orderNumber: convertAlgoliaParam(
          data['orderNumber'],
          ParamType.String,
          false,
        ),
        deliveryAddressLine1: convertAlgoliaParam(
          data['deliveryAddressLine1'],
          ParamType.String,
          false,
        ),
        deliveryAddressLine2: convertAlgoliaParam(
          data['deliveryAddressLine2'],
          ParamType.String,
          false,
        ),
        deliveryPostcode: convertAlgoliaParam(
          data['deliveryPostcode'],
          ParamType.String,
          false,
        ),
        deliveryFirstName: convertAlgoliaParam(
          data['deliveryFirstName'],
          ParamType.String,
          false,
        ),
        deliveryLastName: convertAlgoliaParam(
          data['deliveryLastName'],
          ParamType.String,
          false,
        ),
        deliveryRef: convertAlgoliaParam(
          data['deliveryRef'],
          ParamType.DocumentReference,
          false,
        ),
        originalIndex: convertAlgoliaParam(
          data['originalIndex'],
          ParamType.int,
          false,
        ),
        waypointIndex: convertAlgoliaParam(
          data['waypointIndex'],
          ParamType.int,
          false,
        ),
        legDistance: convertAlgoliaParam(
          data['legDistance'],
          ParamType.String,
          false,
        ),
        legDuration: convertAlgoliaParam(
          data['legDuration'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'OptimisedDeliveryItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OptimisedDeliveryItemStruct &&
        orderNumber == other.orderNumber &&
        deliveryAddressLine1 == other.deliveryAddressLine1 &&
        deliveryAddressLine2 == other.deliveryAddressLine2 &&
        deliveryPostcode == other.deliveryPostcode &&
        deliveryFirstName == other.deliveryFirstName &&
        deliveryLastName == other.deliveryLastName &&
        deliveryRef == other.deliveryRef &&
        originalIndex == other.originalIndex &&
        waypointIndex == other.waypointIndex &&
        legDistance == other.legDistance &&
        legDuration == other.legDuration;
  }

  @override
  int get hashCode => const ListEquality().hash([
        orderNumber,
        deliveryAddressLine1,
        deliveryAddressLine2,
        deliveryPostcode,
        deliveryFirstName,
        deliveryLastName,
        deliveryRef,
        originalIndex,
        waypointIndex,
        legDistance,
        legDuration
      ]);
}

OptimisedDeliveryItemStruct createOptimisedDeliveryItemStruct({
  String? orderNumber,
  String? deliveryAddressLine1,
  String? deliveryAddressLine2,
  String? deliveryPostcode,
  String? deliveryFirstName,
  String? deliveryLastName,
  DocumentReference? deliveryRef,
  int? originalIndex,
  int? waypointIndex,
  String? legDistance,
  String? legDuration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OptimisedDeliveryItemStruct(
      orderNumber: orderNumber,
      deliveryAddressLine1: deliveryAddressLine1,
      deliveryAddressLine2: deliveryAddressLine2,
      deliveryPostcode: deliveryPostcode,
      deliveryFirstName: deliveryFirstName,
      deliveryLastName: deliveryLastName,
      deliveryRef: deliveryRef,
      originalIndex: originalIndex,
      waypointIndex: waypointIndex,
      legDistance: legDistance,
      legDuration: legDuration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OptimisedDeliveryItemStruct? updateOptimisedDeliveryItemStruct(
  OptimisedDeliveryItemStruct? optimisedDeliveryItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    optimisedDeliveryItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOptimisedDeliveryItemStructData(
  Map<String, dynamic> firestoreData,
  OptimisedDeliveryItemStruct? optimisedDeliveryItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (optimisedDeliveryItem == null) {
    return;
  }
  if (optimisedDeliveryItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      optimisedDeliveryItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final optimisedDeliveryItemData = getOptimisedDeliveryItemFirestoreData(
      optimisedDeliveryItem, forFieldValue);
  final nestedData =
      optimisedDeliveryItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      optimisedDeliveryItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOptimisedDeliveryItemFirestoreData(
  OptimisedDeliveryItemStruct? optimisedDeliveryItem, [
  bool forFieldValue = false,
]) {
  if (optimisedDeliveryItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(optimisedDeliveryItem.toMap());

  // Add any Firestore field values
  optimisedDeliveryItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOptimisedDeliveryItemListFirestoreData(
  List<OptimisedDeliveryItemStruct>? optimisedDeliveryItems,
) =>
    optimisedDeliveryItems
        ?.map((e) => getOptimisedDeliveryItemFirestoreData(e, true))
        .toList() ??
    [];
