import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketRecord extends FirestoreRecord {
  TicketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "business_start" field.
  DateTime? _businessStart;
  DateTime? get businessStart => _businessStart;
  bool hasBusinessStart() => _businessStart != null;

  // "business_end" field.
  DateTime? _businessEnd;
  DateTime? get businessEnd => _businessEnd;
  bool hasBusinessEnd() => _businessEnd != null;

  // "reserve_per" field.
  int? _reservePer;
  int get reservePer => _reservePer ?? 0;
  bool hasReservePer() => _reservePer != null;

  // "reserve_per_ref" field.
  List<DocumentReference>? _reservePerRef;
  List<DocumentReference> get reservePerRef => _reservePerRef ?? const [];
  bool hasReservePerRef() => _reservePerRef != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "call" field.
  String? _call;
  String get call => _call ?? '';
  bool hasCall() => _call != null;

  // "manufacture" field.
  String? _manufacture;
  String get manufacture => _manufacture ?? '';
  bool hasManufacture() => _manufacture != null;

  // "detail_image" field.
  String? _detailImage;
  String get detailImage => _detailImage ?? '';
  bool hasDetailImage() => _detailImage != null;

  // "review_ref" field.
  List<DocumentReference>? _reviewRef;
  List<DocumentReference> get reviewRef => _reviewRef ?? const [];
  bool hasReviewRef() => _reviewRef != null;

  // "special_priceT1" field.
  String? _specialPriceT1;
  String get specialPriceT1 => _specialPriceT1 ?? '';
  bool hasSpecialPriceT1() => _specialPriceT1 != null;

  // "special_priceT2" field.
  String? _specialPriceT2;
  String get specialPriceT2 => _specialPriceT2 ?? '';
  bool hasSpecialPriceT2() => _specialPriceT2 != null;

  // "special_priceT3" field.
  String? _specialPriceT3;
  String get specialPriceT3 => _specialPriceT3 ?? '';
  bool hasSpecialPriceT3() => _specialPriceT3 != null;

  // "special_priceT4" field.
  String? _specialPriceT4;
  String get specialPriceT4 => _specialPriceT4 ?? '';
  bool hasSpecialPriceT4() => _specialPriceT4 != null;

  // "special_priceT5" field.
  String? _specialPriceT5;
  String get specialPriceT5 => _specialPriceT5 ?? '';
  bool hasSpecialPriceT5() => _specialPriceT5 != null;

  // "special_price1" field.
  int? _specialPrice1;
  int get specialPrice1 => _specialPrice1 ?? 0;
  bool hasSpecialPrice1() => _specialPrice1 != null;

  // "special_price2" field.
  int? _specialPrice2;
  int get specialPrice2 => _specialPrice2 ?? 0;
  bool hasSpecialPrice2() => _specialPrice2 != null;

  // "special_price3" field.
  int? _specialPrice3;
  int get specialPrice3 => _specialPrice3 ?? 0;
  bool hasSpecialPrice3() => _specialPrice3 != null;

  // "special_price4" field.
  int? _specialPrice4;
  int get specialPrice4 => _specialPrice4 ?? 0;
  bool hasSpecialPrice4() => _specialPrice4 != null;

  // "special_price5" field.
  int? _specialPrice5;
  int get specialPrice5 => _specialPrice5 ?? 0;
  bool hasSpecialPrice5() => _specialPrice5 != null;

  // "ProductInfo" field.
  String? _productInfo;
  String get productInfo => _productInfo ?? '';
  bool hasProductInfo() => _productInfo != null;

  // "business_detail" field.
  String? _businessDetail;
  String get businessDetail => _businessDetail ?? '';
  bool hasBusinessDetail() => _businessDetail != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "originalP1" field.
  int? _originalP1;
  int get originalP1 => _originalP1 ?? 0;
  bool hasOriginalP1() => _originalP1 != null;

  // "originalP2" field.
  int? _originalP2;
  int get originalP2 => _originalP2 ?? 0;
  bool hasOriginalP2() => _originalP2 != null;

  // "originalP3" field.
  int? _originalP3;
  int get originalP3 => _originalP3 ?? 0;
  bool hasOriginalP3() => _originalP3 != null;

  // "originalP4" field.
  int? _originalP4;
  int get originalP4 => _originalP4 ?? 0;
  bool hasOriginalP4() => _originalP4 != null;

  // "originalP5" field.
  int? _originalP5;
  int get originalP5 => _originalP5 ?? 0;
  bool hasOriginalP5() => _originalP5 != null;

  // "soldout" field.
  bool? _soldout;
  bool get soldout => _soldout ?? false;
  bool hasSoldout() => _soldout != null;

  // "eventEndDate" field.
  DateTime? _eventEndDate;
  DateTime? get eventEndDate => _eventEndDate;
  bool hasEventEndDate() => _eventEndDate != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "ticketList" field.
  List<String>? _ticketList;
  List<String> get ticketList => _ticketList ?? const [];
  bool hasTicketList() => _ticketList != null;

  // "likeUsers" field.
  List<DocumentReference>? _likeUsers;
  List<DocumentReference> get likeUsers => _likeUsers ?? const [];
  bool hasLikeUsers() => _likeUsers != null;

  void _initializeFields() {
    _image = getDataList(snapshotData['image']);
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _businessStart = snapshotData['business_start'] as DateTime?;
    _businessEnd = snapshotData['business_end'] as DateTime?;
    _reservePer = castToType<int>(snapshotData['reserve_per']);
    _reservePerRef = getDataList(snapshotData['reserve_per_ref']);
    _rating = castToType<int>(snapshotData['rating']);
    _call = snapshotData['call'] as String?;
    _manufacture = snapshotData['manufacture'] as String?;
    _detailImage = snapshotData['detail_image'] as String?;
    _reviewRef = getDataList(snapshotData['review_ref']);
    _specialPriceT1 = snapshotData['special_priceT1'] as String?;
    _specialPriceT2 = snapshotData['special_priceT2'] as String?;
    _specialPriceT3 = snapshotData['special_priceT3'] as String?;
    _specialPriceT4 = snapshotData['special_priceT4'] as String?;
    _specialPriceT5 = snapshotData['special_priceT5'] as String?;
    _specialPrice1 = castToType<int>(snapshotData['special_price1']);
    _specialPrice2 = castToType<int>(snapshotData['special_price2']);
    _specialPrice3 = castToType<int>(snapshotData['special_price3']);
    _specialPrice4 = castToType<int>(snapshotData['special_price4']);
    _specialPrice5 = castToType<int>(snapshotData['special_price5']);
    _productInfo = snapshotData['ProductInfo'] as String?;
    _businessDetail = snapshotData['business_detail'] as String?;
    _area = snapshotData['area'] as String?;
    _originalP1 = castToType<int>(snapshotData['originalP1']);
    _originalP2 = castToType<int>(snapshotData['originalP2']);
    _originalP3 = castToType<int>(snapshotData['originalP3']);
    _originalP4 = castToType<int>(snapshotData['originalP4']);
    _originalP5 = castToType<int>(snapshotData['originalP5']);
    _soldout = snapshotData['soldout'] as bool?;
    _eventEndDate = snapshotData['eventEndDate'] as DateTime?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _ticketList = getDataList(snapshotData['ticketList']);
    _likeUsers = getDataList(snapshotData['likeUsers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ticket');

  static Stream<TicketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TicketRecord.fromSnapshot(s));

  static Future<TicketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TicketRecord.fromSnapshot(s));

  static TicketRecord fromSnapshot(DocumentSnapshot snapshot) => TicketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TicketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TicketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TicketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TicketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTicketRecordData({
  DocumentReference? uploadUser,
  String? title,
  DateTime? businessStart,
  DateTime? businessEnd,
  int? reservePer,
  int? rating,
  String? call,
  String? manufacture,
  String? detailImage,
  String? specialPriceT1,
  String? specialPriceT2,
  String? specialPriceT3,
  String? specialPriceT4,
  String? specialPriceT5,
  int? specialPrice1,
  int? specialPrice2,
  int? specialPrice3,
  int? specialPrice4,
  int? specialPrice5,
  String? productInfo,
  String? businessDetail,
  String? area,
  int? originalP1,
  int? originalP2,
  int? originalP3,
  int? originalP4,
  int? originalP5,
  bool? soldout,
  DateTime? eventEndDate,
  DateTime? uploadDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uploadUser': uploadUser,
      'title': title,
      'business_start': businessStart,
      'business_end': businessEnd,
      'reserve_per': reservePer,
      'rating': rating,
      'call': call,
      'manufacture': manufacture,
      'detail_image': detailImage,
      'special_priceT1': specialPriceT1,
      'special_priceT2': specialPriceT2,
      'special_priceT3': specialPriceT3,
      'special_priceT4': specialPriceT4,
      'special_priceT5': specialPriceT5,
      'special_price1': specialPrice1,
      'special_price2': specialPrice2,
      'special_price3': specialPrice3,
      'special_price4': specialPrice4,
      'special_price5': specialPrice5,
      'ProductInfo': productInfo,
      'business_detail': businessDetail,
      'area': area,
      'originalP1': originalP1,
      'originalP2': originalP2,
      'originalP3': originalP3,
      'originalP4': originalP4,
      'originalP5': originalP5,
      'soldout': soldout,
      'eventEndDate': eventEndDate,
      'uploadDate': uploadDate,
    }.withoutNulls,
  );

  return firestoreData;
}
