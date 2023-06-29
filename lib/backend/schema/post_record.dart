import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fishtype" field.
  String? _fishtype;
  String get fishtype => _fishtype ?? '';
  bool hasFishtype() => _fishtype != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "watertime" field.
  DateTime? _watertime;
  DateTime? get watertime => _watertime;
  bool hasWatertime() => _watertime != null;

  // "fishingplace" field.
  String? _fishingplace;
  String get fishingplace => _fishingplace ?? '';
  bool hasFishingplace() => _fishingplace != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "notice" field.
  bool? _notice;
  bool get notice => _notice ?? false;
  bool hasNotice() => _notice != null;

  // "createtime" field.
  DateTime? _createtime;
  DateTime? get createtime => _createtime;
  bool hasCreatetime() => _createtime != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  // "comments" field.
  List<DocumentReference>? _comments;
  List<DocumentReference> get comments => _comments ?? const [];
  bool hasComments() => _comments != null;

  // "postType" field.
  String? _postType;
  String get postType => _postType ?? '';
  bool hasPostType() => _postType != null;

  // "partner" field.
  String? _partner;
  String get partner => _partner ?? '';
  bool hasPartner() => _partner != null;

  // "rod" field.
  String? _rod;
  String get rod => _rod ?? '';
  bool hasRod() => _rod != null;

  // "float" field.
  String? _float;
  String get float => _float ?? '';
  bool hasFloat() => _float != null;

  // "fishingLine" field.
  String? _fishingLine;
  String get fishingLine => _fishingLine ?? '';
  bool hasFishingLine() => _fishingLine != null;

  // "needle" field.
  String? _needle;
  String get needle => _needle ?? '';
  bool hasNeedle() => _needle != null;

  // "bait" field.
  String? _bait;
  String get bait => _bait ?? '';
  bool hasBait() => _bait != null;

  // "technique" field.
  String? _technique;
  String get technique => _technique ?? '';
  bool hasTechnique() => _technique != null;

  // "see" field.
  List<DocumentReference>? _see;
  List<DocumentReference> get see => _see ?? const [];
  bool hasSee() => _see != null;

  // "reportPost" field.
  bool? _reportPost;
  bool get reportPost => _reportPost ?? false;
  bool hasReportPost() => _reportPost != null;

  // "reportref" field.
  List<DocumentReference>? _reportref;
  List<DocumentReference> get reportref => _reportref ?? const [];
  bool hasReportref() => _reportref != null;

  // "more" field.
  bool? _more;
  bool get more => _more ?? false;
  bool hasMore() => _more != null;

  // "photo" field.
  List<String>? _photo;
  List<String> get photo => _photo ?? const [];
  bool hasPhoto() => _photo != null;

  // "report" field.
  bool? _report;
  bool get report => _report ?? false;
  bool hasReport() => _report != null;

  // "shipref" field.
  DocumentReference? _shipref;
  DocumentReference? get shipref => _shipref;
  bool hasShipref() => _shipref != null;

  // "sea" field.
  DocumentReference? _sea;
  DocumentReference? get sea => _sea;
  bool hasSea() => _sea != null;

  // "fishingzoneref" field.
  DocumentReference? _fishingzoneref;
  DocumentReference? get fishingzoneref => _fishingzoneref;
  bool hasFishingzoneref() => _fishingzoneref != null;

  void _initializeFields() {
    _fishtype = snapshotData['fishtype'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _watertime = snapshotData['watertime'] as DateTime?;
    _fishingplace = snapshotData['fishingplace'] as String?;
    _location = snapshotData['location'] as String?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _notice = snapshotData['notice'] as bool?;
    _createtime = snapshotData['createtime'] as DateTime?;
    _like = getDataList(snapshotData['like']);
    _comments = getDataList(snapshotData['comments']);
    _postType = snapshotData['postType'] as String?;
    _partner = snapshotData['partner'] as String?;
    _rod = snapshotData['rod'] as String?;
    _float = snapshotData['float'] as String?;
    _fishingLine = snapshotData['fishingLine'] as String?;
    _needle = snapshotData['needle'] as String?;
    _bait = snapshotData['bait'] as String?;
    _technique = snapshotData['technique'] as String?;
    _see = getDataList(snapshotData['see']);
    _reportPost = snapshotData['reportPost'] as bool?;
    _reportref = getDataList(snapshotData['reportref']);
    _more = snapshotData['more'] as bool?;
    _photo = getDataList(snapshotData['photo']);
    _report = snapshotData['report'] as bool?;
    _shipref = snapshotData['shipref'] as DocumentReference?;
    _sea = snapshotData['sea'] as DocumentReference?;
    _fishingzoneref = snapshotData['fishingzoneref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? fishtype,
  DateTime? date,
  DateTime? watertime,
  String? fishingplace,
  String? location,
  String? title,
  String? contents,
  DocumentReference? userref,
  bool? notice,
  DateTime? createtime,
  String? postType,
  String? partner,
  String? rod,
  String? float,
  String? fishingLine,
  String? needle,
  String? bait,
  String? technique,
  bool? reportPost,
  bool? more,
  bool? report,
  DocumentReference? shipref,
  DocumentReference? sea,
  DocumentReference? fishingzoneref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fishtype': fishtype,
      'date': date,
      'watertime': watertime,
      'fishingplace': fishingplace,
      'location': location,
      'title': title,
      'contents': contents,
      'userref': userref,
      'notice': notice,
      'createtime': createtime,
      'postType': postType,
      'partner': partner,
      'rod': rod,
      'float': float,
      'fishingLine': fishingLine,
      'needle': needle,
      'bait': bait,
      'technique': technique,
      'reportPost': reportPost,
      'more': more,
      'report': report,
      'shipref': shipref,
      'sea': sea,
      'fishingzoneref': fishingzoneref,
    }.withoutNulls,
  );

  return firestoreData;
}
