import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "txt" field.
  String? _txt;
  String get txt => _txt ?? '';
  bool hasTxt() => _txt != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "postref" field.
  DocumentReference? _postref;
  DocumentReference? get postref => _postref;
  bool hasPostref() => _postref != null;

  // "rereref" field.
  DocumentReference? _rereref;
  DocumentReference? get rereref => _rereref;
  bool hasRereref() => _rereref != null;

  // "report" field.
  bool? _report;
  bool get report => _report ?? false;
  bool hasReport() => _report != null;

  void _initializeFields() {
    _txt = snapshotData['txt'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _postref = snapshotData['postref'] as DocumentReference?;
    _rereref = snapshotData['rereref'] as DocumentReference?;
    _report = snapshotData['report'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? txt,
  DateTime? date,
  DocumentReference? userref,
  DocumentReference? postref,
  DocumentReference? rereref,
  bool? report,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'txt': txt,
      'date': date,
      'userref': userref,
      'postref': postref,
      'rereref': rereref,
      'report': report,
    }.withoutNulls,
  );

  return firestoreData;
}
