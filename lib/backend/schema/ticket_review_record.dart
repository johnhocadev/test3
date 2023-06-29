import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketReviewRecord extends FirestoreRecord {
  TicketReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ticket" field.
  DocumentReference? _ticket;
  DocumentReference? get ticket => _ticket;
  bool hasTicket() => _ticket != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "star1" field.
  int? _star1;
  int get star1 => _star1 ?? 0;
  bool hasStar1() => _star1 != null;

  // "star2" field.
  int? _star2;
  int get star2 => _star2 ?? 0;
  bool hasStar2() => _star2 != null;

  // "star3" field.
  int? _star3;
  int get star3 => _star3 ?? 0;
  bool hasStar3() => _star3 != null;

  // "uploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  // "starAll" field.
  int? _starAll;
  int get starAll => _starAll ?? 0;
  bool hasStarAll() => _starAll != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  void _initializeFields() {
    _ticket = snapshotData['ticket'] as DocumentReference?;
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _star1 = castToType<int>(snapshotData['star1']);
    _star2 = castToType<int>(snapshotData['star2']);
    _star3 = castToType<int>(snapshotData['star3']);
    _uploadTime = snapshotData['uploadTime'] as DateTime?;
    _starAll = castToType<int>(snapshotData['starAll']);
    _like = getDataList(snapshotData['like']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ticket_review');

  static Stream<TicketReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketReviewRecord.fromSnapshot(s));

  static Future<TicketReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketReviewRecord.fromSnapshot(s));

  static TicketReviewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TicketReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketReviewRecordData({
  DocumentReference? ticket,
  DocumentReference? uploadUser,
  String? image,
  String? title,
  String? contents,
  int? star1,
  int? star2,
  int? star3,
  DateTime? uploadTime,
  int? starAll,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ticket': ticket,
      'uploadUser': uploadUser,
      'image': image,
      'title': title,
      'contents': contents,
      'star1': star1,
      'star2': star2,
      'star3': star3,
      'uploadTime': uploadTime,
      'starAll': starAll,
    }.withoutNulls,
  );

  return firestoreData;
}
