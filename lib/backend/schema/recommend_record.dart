import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecommendRecord extends FirestoreRecord {
  RecommendRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fishType" field.
  String? _fishType;
  String get fishType => _fishType ?? '';
  bool hasFishType() => _fishType != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "latlng" field.
  LatLng? _latlng;
  LatLng? get latlng => _latlng;
  bool hasLatlng() => _latlng != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "likeUser" field.
  List<DocumentReference>? _likeUser;
  List<DocumentReference> get likeUser => _likeUser ?? const [];
  bool hasLikeUser() => _likeUser != null;

  // "seeUser" field.
  List<DocumentReference>? _seeUser;
  List<DocumentReference> get seeUser => _seeUser ?? const [];
  bool hasSeeUser() => _seeUser != null;

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

  void _initializeFields() {
    _fishType = snapshotData['fishType'] as String?;
    _location = snapshotData['location'] as String?;
    _latlng = snapshotData['latlng'] as LatLng?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _likeUser = getDataList(snapshotData['likeUser']);
    _seeUser = getDataList(snapshotData['seeUser']);
    _more = snapshotData['more'] as bool?;
    _photo = getDataList(snapshotData['photo']);
    _report = snapshotData['report'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recommend');

  static Stream<RecommendRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecommendRecord.fromSnapshot(s));

  static Future<RecommendRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecommendRecord.fromSnapshot(s));

  static RecommendRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecommendRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecommendRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecommendRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecommendRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecommendRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecommendRecordData({
  String? fishType,
  String? location,
  LatLng? latlng,
  String? title,
  String? contents,
  DateTime? uploadDate,
  DocumentReference? uploadUser,
  bool? more,
  bool? report,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fishType': fishType,
      'location': location,
      'latlng': latlng,
      'title': title,
      'contents': contents,
      'uploadDate': uploadDate,
      'uploadUser': uploadUser,
      'more': more,
      'report': report,
    }.withoutNulls,
  );

  return firestoreData;
}
