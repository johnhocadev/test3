import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContestReportRecord extends FirestoreRecord {
  ContestReportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "contestref" field.
  DocumentReference? _contestref;
  DocumentReference? get contestref => _contestref;
  bool hasContestref() => _contestref != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _contestref = snapshotData['contestref'] as DocumentReference?;
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contest_Report');

  static Stream<ContestReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContestReportRecord.fromSnapshot(s));

  static Future<ContestReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContestReportRecord.fromSnapshot(s));

  static ContestReportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContestReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContestReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContestReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContestReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContestReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContestReportRecordData({
  DateTime? date,
  String? type,
  String? title,
  String? contents,
  DocumentReference? contestref,
  DocumentReference? uploadUser,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'type': type,
      'title': title,
      'contents': contents,
      'contestref': contestref,
      'uploadUser': uploadUser,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}
