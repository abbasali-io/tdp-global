import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GlobalSettingsRecord extends FirestoreRecord {
  GlobalSettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appVersion" field.
  String? _appVersion;
  String get appVersion => _appVersion ?? '';
  bool hasAppVersion() => _appVersion != null;

  // "adminCode" field.
  String? _adminCode;
  String get adminCode => _adminCode ?? '';
  bool hasAdminCode() => _adminCode != null;

  // "minBuild" field.
  int? _minBuild;
  int get minBuild => _minBuild ?? 0;
  bool hasMinBuild() => _minBuild != null;

  void _initializeFields() {
    _appVersion = snapshotData['appVersion'] as String?;
    _adminCode = snapshotData['adminCode'] as String?;
    _minBuild = castToType<int>(snapshotData['minBuild']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('globalSettings');

  static Stream<GlobalSettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GlobalSettingsRecord.fromSnapshot(s));

  static Future<GlobalSettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GlobalSettingsRecord.fromSnapshot(s));

  static GlobalSettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GlobalSettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GlobalSettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GlobalSettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GlobalSettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GlobalSettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGlobalSettingsRecordData({
  String? appVersion,
  String? adminCode,
  int? minBuild,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appVersion': appVersion,
      'adminCode': adminCode,
      'minBuild': minBuild,
    }.withoutNulls,
  );

  return firestoreData;
}

class GlobalSettingsRecordDocumentEquality
    implements Equality<GlobalSettingsRecord> {
  const GlobalSettingsRecordDocumentEquality();

  @override
  bool equals(GlobalSettingsRecord? e1, GlobalSettingsRecord? e2) {
    return e1?.appVersion == e2?.appVersion &&
        e1?.adminCode == e2?.adminCode &&
        e1?.minBuild == e2?.minBuild;
  }

  @override
  int hash(GlobalSettingsRecord? e) =>
      const ListEquality().hash([e?.appVersion, e?.adminCode, e?.minBuild]);

  @override
  bool isValidKey(Object? o) => o is GlobalSettingsRecord;
}
