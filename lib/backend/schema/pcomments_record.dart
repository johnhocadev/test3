import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PcommentsRecord extends FirestoreRecord {
  PcommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "txt" field.
  String? _txt;
  String get txt => _txt ?? '';
  bool hasTxt() => _txt != null;

  // "updatetime" field.
  DateTime? _updatetime;
  DateTime? get updatetime => _updatetime;
  bool hasUpdatetime() => _updatetime != null;

  // "pref" field.
  DocumentReference? _pref;
  DocumentReference? get pref => _pref;
  bool hasPref() => _pref != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _txt = snapshotData['txt'] as String?;
    _updatetime = snapshotData['updatetime'] as DateTime?;
    _pref = snapshotData['pref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pcomments');

  static Stream<PcommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PcommentsRecord.fromSnapshot(s));

  static Future<PcommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PcommentsRecord.fromSnapshot(s));

  static PcommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PcommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PcommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PcommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PcommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PcommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPcommentsRecordData({
  DocumentReference? userref,
  String? txt,
  DateTime? updatetime,
  DocumentReference? pref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'txt': txt,
      'updatetime': updatetime,
      'pref': pref,
    }.withoutNulls,
  );

  return firestoreData;
}
