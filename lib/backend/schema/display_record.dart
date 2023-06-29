import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisplayRecord extends FirestoreRecord {
  DisplayRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post1" field.
  DocumentReference? _post1;
  DocumentReference? get post1 => _post1;
  bool hasPost1() => _post1 != null;

  // "post2" field.
  DocumentReference? _post2;
  DocumentReference? get post2 => _post2;
  bool hasPost2() => _post2 != null;

  // "recommend" field.
  DocumentReference? _recommend;
  DocumentReference? get recommend => _recommend;
  bool hasRecommend() => _recommend != null;

  // "comment" field.
  DocumentReference? _comment;
  DocumentReference? get comment => _comment;
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _post1 = snapshotData['post1'] as DocumentReference?;
    _post2 = snapshotData['post2'] as DocumentReference?;
    _recommend = snapshotData['recommend'] as DocumentReference?;
    _comment = snapshotData['comment'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('display');

  static Stream<DisplayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DisplayRecord.fromSnapshot(s));

  static Future<DisplayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DisplayRecord.fromSnapshot(s));

  static DisplayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DisplayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DisplayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DisplayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DisplayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DisplayRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDisplayRecordData({
  DocumentReference? post1,
  DocumentReference? post2,
  DocumentReference? recommend,
  DocumentReference? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post1': post1,
      'post2': post2,
      'recommend': recommend,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}
