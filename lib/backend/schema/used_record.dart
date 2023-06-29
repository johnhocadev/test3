import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsedRecord extends FirestoreRecord {
  UsedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "imagelist" field.
  List<String>? _imagelist;
  List<String> get imagelist => _imagelist ?? const [];
  bool hasImagelist() => _imagelist != null;

  // "productname" field.
  String? _productname;
  String get productname => _productname ?? '';
  bool hasProductname() => _productname != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "negotiation" field.
  String? _negotiation;
  String get negotiation => _negotiation ?? '';
  bool hasNegotiation() => _negotiation != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "deliver" field.
  String? _deliver;
  String get deliver => _deliver ?? '';
  bool hasDeliver() => _deliver != null;

  // "refund" field.
  String? _refund;
  String get refund => _refund ?? '';
  bool hasRefund() => _refund != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "detailImage" field.
  String? _detailImage;
  String get detailImage => _detailImage ?? '';
  bool hasDetailImage() => _detailImage != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "likeUsers" field.
  List<DocumentReference>? _likeUsers;
  List<DocumentReference> get likeUsers => _likeUsers ?? const [];
  bool hasLikeUsers() => _likeUsers != null;

  // "soldout" field.
  bool? _soldout;
  bool get soldout => _soldout ?? false;
  bool hasSoldout() => _soldout != null;

  void _initializeFields() {
    _imagelist = getDataList(snapshotData['imagelist']);
    _productname = snapshotData['productname'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _negotiation = snapshotData['negotiation'] as String?;
    _condition = snapshotData['condition'] as String?;
    _deliver = snapshotData['deliver'] as String?;
    _refund = snapshotData['refund'] as String?;
    _area = snapshotData['area'] as String?;
    _detailImage = snapshotData['detailImage'] as String?;
    _contents = snapshotData['contents'] as String?;
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _likeUsers = getDataList(snapshotData['likeUsers']);
    _soldout = snapshotData['soldout'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Used');

  static Stream<UsedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsedRecord.fromSnapshot(s));

  static Future<UsedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsedRecord.fromSnapshot(s));

  static UsedRecord fromSnapshot(DocumentSnapshot snapshot) => UsedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsedRecordData({
  String? productname,
  int? price,
  String? negotiation,
  String? condition,
  String? deliver,
  String? refund,
  String? area,
  String? detailImage,
  String? contents,
  DocumentReference? uploadUser,
  DateTime? uploadDate,
  bool? soldout,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productname': productname,
      'price': price,
      'negotiation': negotiation,
      'condition': condition,
      'deliver': deliver,
      'refund': refund,
      'area': area,
      'detailImage': detailImage,
      'contents': contents,
      'uploadUser': uploadUser,
      'uploadDate': uploadDate,
      'soldout': soldout,
    }.withoutNulls,
  );

  return firestoreData;
}
