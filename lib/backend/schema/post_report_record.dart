import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostReportRecord extends FirestoreRecord {
  PostReportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reportedUser" field.
  DocumentReference? _reportedUser;
  DocumentReference? get reportedUser => _reportedUser;
  bool hasReportedUser() => _reportedUser != null;

  // "Postref" field.
  DocumentReference? _postref;
  DocumentReference? get postref => _postref;
  bool hasPostref() => _postref != null;

  // "reportTime" field.
  DateTime? _reportTime;
  DateTime? get reportTime => _reportTime;
  bool hasReportTime() => _reportTime != null;

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

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "replyType" field.
  String? _replyType;
  String get replyType => _replyType ?? '';
  bool hasReplyType() => _replyType != null;

  // "replyTime" field.
  DateTime? _replyTime;
  DateTime? get replyTime => _replyTime;
  bool hasReplyTime() => _replyTime != null;

  // "replycontents" field.
  List<String>? _replycontents;
  List<String> get replycontents => _replycontents ?? const [];
  bool hasReplycontents() => _replycontents != null;

  // "recommendref" field.
  DocumentReference? _recommendref;
  DocumentReference? get recommendref => _recommendref;
  bool hasRecommendref() => _recommendref != null;

  void _initializeFields() {
    _reportedUser = snapshotData['reportedUser'] as DocumentReference?;
    _postref = snapshotData['Postref'] as DocumentReference?;
    _reportTime = snapshotData['reportTime'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _image = snapshotData['image'] as String?;
    _replyType = snapshotData['replyType'] as String?;
    _replyTime = snapshotData['replyTime'] as DateTime?;
    _replycontents = getDataList(snapshotData['replycontents']);
    _recommendref = snapshotData['recommendref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Post_report');

  static Stream<PostReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostReportRecord.fromSnapshot(s));

  static Future<PostReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostReportRecord.fromSnapshot(s));

  static PostReportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostReportRecordData({
  DocumentReference? reportedUser,
  DocumentReference? postref,
  DateTime? reportTime,
  String? type,
  String? title,
  String? contents,
  String? image,
  String? replyType,
  DateTime? replyTime,
  DocumentReference? recommendref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reportedUser': reportedUser,
      'Postref': postref,
      'reportTime': reportTime,
      'type': type,
      'title': title,
      'contents': contents,
      'image': image,
      'replyType': replyType,
      'replyTime': replyTime,
      'recommendref': recommendref,
    }.withoutNulls,
  );

  return firestoreData;
}
