import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UpdateUser" field.
  DocumentReference? _updateUser;
  DocumentReference? get updateUser => _updateUser;
  bool hasUpdateUser() => _updateUser != null;

  // "UpdateTime" field.
  DateTime? _updateTime;
  DateTime? get updateTime => _updateTime;
  bool hasUpdateTime() => _updateTime != null;

  // "shipref" field.
  DocumentReference? _shipref;
  DocumentReference? get shipref => _shipref;
  bool hasShipref() => _shipref != null;

  // "lodgeref" field.
  DocumentReference? _lodgeref;
  DocumentReference? get lodgeref => _lodgeref;
  bool hasLodgeref() => _lodgeref != null;

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

  // "starAll" field.
  int? _starAll;
  int get starAll => _starAll ?? 0;
  bool hasStarAll() => _starAll != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "reviewref" field.
  List<DocumentReference>? _reviewref;
  List<DocumentReference> get reviewref => _reviewref ?? const [];
  bool hasReviewref() => _reviewref != null;

  // "searef" field.
  DocumentReference? _searef;
  DocumentReference? get searef => _searef;
  bool hasSearef() => _searef != null;

  // "placeref" field.
  DocumentReference? _placeref;
  DocumentReference? get placeref => _placeref;
  bool hasPlaceref() => _placeref != null;

  void _initializeFields() {
    _updateUser = snapshotData['UpdateUser'] as DocumentReference?;
    _updateTime = snapshotData['UpdateTime'] as DateTime?;
    _shipref = snapshotData['shipref'] as DocumentReference?;
    _lodgeref = snapshotData['lodgeref'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _star1 = castToType<int>(snapshotData['star1']);
    _star2 = castToType<int>(snapshotData['star2']);
    _star3 = castToType<int>(snapshotData['star3']);
    _starAll = castToType<int>(snapshotData['starAll']);
    _image = snapshotData['image'] as String?;
    _reviewref = getDataList(snapshotData['reviewref']);
    _searef = snapshotData['searef'] as DocumentReference?;
    _placeref = snapshotData['placeref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  DocumentReference? updateUser,
  DateTime? updateTime,
  DocumentReference? shipref,
  DocumentReference? lodgeref,
  String? title,
  String? contents,
  int? star1,
  int? star2,
  int? star3,
  int? starAll,
  String? image,
  DocumentReference? searef,
  DocumentReference? placeref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UpdateUser': updateUser,
      'UpdateTime': updateTime,
      'shipref': shipref,
      'lodgeref': lodgeref,
      'title': title,
      'contents': contents,
      'star1': star1,
      'star2': star2,
      'star3': star3,
      'starAll': starAll,
      'image': image,
      'searef': searef,
      'placeref': placeref,
    }.withoutNulls,
  );

  return firestoreData;
}
