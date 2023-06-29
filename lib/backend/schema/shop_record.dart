import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopRecord extends FirestoreRecord {
  ShopRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productimage" field.
  List<String>? _productimage;
  List<String> get productimage => _productimage ?? const [];
  bool hasProductimage() => _productimage != null;

  // "seller" field.
  DocumentReference? _seller;
  DocumentReference? get seller => _seller;
  bool hasSeller() => _seller != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "saleprice" field.
  int? _saleprice;
  int get saleprice => _saleprice ?? 0;
  bool hasSaleprice() => _saleprice != null;

  // "rating" field.
  List<int>? _rating;
  List<int> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  // "ratinguser" field.
  List<DocumentReference>? _ratinguser;
  List<DocumentReference> get ratinguser => _ratinguser ?? const [];
  bool hasRatinguser() => _ratinguser != null;

  // "call" field.
  String? _call;
  String get call => _call ?? '';
  bool hasCall() => _call != null;

  // "modelname" field.
  String? _modelname;
  String get modelname => _modelname ?? '';
  bool hasModelname() => _modelname != null;

  // "manufacturer" field.
  String? _manufacturer;
  String get manufacturer => _manufacturer ?? '';
  bool hasManufacturer() => _manufacturer != null;

  // "certified" field.
  String? _certified;
  String get certified => _certified ?? '';
  bool hasCertified() => _certified != null;

  // "detailimage" field.
  String? _detailimage;
  String get detailimage => _detailimage ?? '';
  bool hasDetailimage() => _detailimage != null;

  // "deliver" field.
  String? _deliver;
  String get deliver => _deliver ?? '';
  bool hasDeliver() => _deliver != null;

  // "deliverfee" field.
  int? _deliverfee;
  int get deliverfee => _deliverfee ?? 0;
  bool hasDeliverfee() => _deliverfee != null;

  // "topImage" field.
  String? _topImage;
  String get topImage => _topImage ?? '';
  bool hasTopImage() => _topImage != null;

  // "soldout" field.
  bool? _soldout;
  bool get soldout => _soldout ?? false;
  bool hasSoldout() => _soldout != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "likeUsers" field.
  List<DocumentReference>? _likeUsers;
  List<DocumentReference> get likeUsers => _likeUsers ?? const [];
  bool hasLikeUsers() => _likeUsers != null;

  // "review_ref" field.
  List<DocumentReference>? _reviewRef;
  List<DocumentReference> get reviewRef => _reviewRef ?? const [];
  bool hasReviewRef() => _reviewRef != null;

  void _initializeFields() {
    _productimage = getDataList(snapshotData['productimage']);
    _seller = snapshotData['seller'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _saleprice = castToType<int>(snapshotData['saleprice']);
    _rating = getDataList(snapshotData['rating']);
    _ratinguser = getDataList(snapshotData['ratinguser']);
    _call = snapshotData['call'] as String?;
    _modelname = snapshotData['modelname'] as String?;
    _manufacturer = snapshotData['manufacturer'] as String?;
    _certified = snapshotData['certified'] as String?;
    _detailimage = snapshotData['detailimage'] as String?;
    _deliver = snapshotData['deliver'] as String?;
    _deliverfee = castToType<int>(snapshotData['deliverfee']);
    _topImage = snapshotData['topImage'] as String?;
    _soldout = snapshotData['soldout'] as bool?;
    _contents = snapshotData['contents'] as String?;
    _likeUsers = getDataList(snapshotData['likeUsers']);
    _reviewRef = getDataList(snapshotData['review_ref']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shop');

  static Stream<ShopRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShopRecord.fromSnapshot(s));

  static Future<ShopRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShopRecord.fromSnapshot(s));

  static ShopRecord fromSnapshot(DocumentSnapshot snapshot) => ShopRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShopRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShopRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShopRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShopRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShopRecordData({
  DocumentReference? seller,
  String? title,
  int? price,
  int? saleprice,
  String? call,
  String? modelname,
  String? manufacturer,
  String? certified,
  String? detailimage,
  String? deliver,
  int? deliverfee,
  String? topImage,
  bool? soldout,
  String? contents,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seller': seller,
      'title': title,
      'price': price,
      'saleprice': saleprice,
      'call': call,
      'modelname': modelname,
      'manufacturer': manufacturer,
      'certified': certified,
      'detailimage': detailimage,
      'deliver': deliver,
      'deliverfee': deliverfee,
      'topImage': topImage,
      'soldout': soldout,
      'contents': contents,
    }.withoutNulls,
  );

  return firestoreData;
}
