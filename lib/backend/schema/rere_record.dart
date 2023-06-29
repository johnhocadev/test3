import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RereRecord extends FirestoreRecord {
  RereRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commentsref" field.
  DocumentReference? _commentsref;
  DocumentReference? get commentsref => _commentsref;
  bool hasCommentsref() => _commentsref != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "uploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  // "txt" field.
  String? _txt;
  String get txt => _txt ?? '';
  bool hasTxt() => _txt != null;

  // "postref" field.
  DocumentReference? _postref;
  DocumentReference? get postref => _postref;
  bool hasPostref() => _postref != null;

  void _initializeFields() {
    _commentsref = snapshotData['commentsref'] as DocumentReference?;
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _uploadTime = snapshotData['uploadTime'] as DateTime?;
    _txt = snapshotData['txt'] as String?;
    _postref = snapshotData['postref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rere');

  static Stream<RereRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RereRecord.fromSnapshot(s));

  static Future<RereRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RereRecord.fromSnapshot(s));

  static RereRecord fromSnapshot(DocumentSnapshot snapshot) => RereRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RereRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RereRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RereRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RereRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRereRecordData({
  DocumentReference? commentsref,
  DocumentReference? uploadUser,
  DateTime? uploadTime,
  String? txt,
  DocumentReference? postref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentsref': commentsref,
      'uploadUser': uploadUser,
      'uploadTime': uploadTime,
      'txt': txt,
      'postref': postref,
    }.withoutNulls,
  );

  return firestoreData;
}
