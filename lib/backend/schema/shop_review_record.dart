import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopReviewRecord extends FirestoreRecord {
  ShopReviewRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "shopref" field.
  DocumentReference? _shopref;
  DocumentReference? get shopref => _shopref;
  bool hasShopref() => _shopref != null;

  // "postedUser" field.
  DocumentReference? _postedUser;
  DocumentReference? get postedUser => _postedUser;
  bool hasPostedUser() => _postedUser != null;

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

  // "uploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

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

  void _initializeFields() {
    _shopref = snapshotData['shopref'] as DocumentReference?;
    _postedUser = snapshotData['postedUser'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
    _contents = snapshotData['contents'] as String?;
    _uploadTime = snapshotData['uploadTime'] as DateTime?;
    _star1 = castToType<int>(snapshotData['star1']);
    _star2 = castToType<int>(snapshotData['star2']);
    _star3 = castToType<int>(snapshotData['star3']);
    _starAll = castToType<int>(snapshotData['starAll']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shopReview');

  static Stream<ShopReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopReviewRecord.fromSnapshot(s));

  static Future<ShopReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopReviewRecord.fromSnapshot(s));

  static ShopReviewRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShopReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopReviewRecordData({
  DocumentReference? shopref,
  DocumentReference? postedUser,
  String? image,
  String? title,
  String? contents,
  DateTime? uploadTime,
  int? star1,
  int? star2,
  int? star3,
  int? starAll,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'shopref': shopref,
      'postedUser': postedUser,
      'image': image,
      'title': title,
      'contents': contents,
      'uploadTime': uploadTime,
      'star1': star1,
      'star2': star2,
      'star3': star3,
      'starAll': starAll,
    }.withoutNulls,
  );

  return firestoreData;
}
