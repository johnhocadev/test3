import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeaRecord extends FirestoreRecord {
  SeaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "sailingstart" field.
  DateTime? _sailingstart;
  DateTime? get sailingstart => _sailingstart;
  bool hasSailingstart() => _sailingstart != null;

  // "sailingend" field.
  DateTime? _sailingend;
  DateTime? get sailingend => _sailingend;
  bool hasSailingend() => _sailingend != null;

  // "costtitle" field.
  String? _costtitle;
  String get costtitle => _costtitle ?? '';
  bool hasCosttitle() => _costtitle != null;

  // "costmoney" field.
  int? _costmoney;
  int get costmoney => _costmoney ?? 0;
  bool hasCostmoney() => _costmoney != null;

  // "shipscale" field.
  String? _shipscale;
  String get shipscale => _shipscale ?? '';
  bool hasShipscale() => _shipscale != null;

  // "peoplelimit" field.
  int? _peoplelimit;
  int get peoplelimit => _peoplelimit ?? 0;
  bool hasPeoplelimit() => _peoplelimit != null;

  // "seats" field.
  String? _seats;
  String get seats => _seats ?? '';
  bool hasSeats() => _seats != null;

  // "heart" field.
  List<DocumentReference>? _heart;
  List<DocumentReference> get heart => _heart ?? const [];
  bool hasHeart() => _heart != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "latlng" field.
  LatLng? _latlng;
  LatLng? get latlng => _latlng;
  bool hasLatlng() => _latlng != null;

  // "intro" field.
  String? _intro;
  String get intro => _intro ?? '';
  bool hasIntro() => _intro != null;

  // "frontimage" field.
  String? _frontimage;
  String get frontimage => _frontimage ?? '';
  bool hasFrontimage() => _frontimage != null;

  // "bank" field.
  String? _bank;
  String get bank => _bank ?? '';
  bool hasBank() => _bank != null;

  // "accountholder" field.
  String? _accountholder;
  String get accountholder => _accountholder ?? '';
  bool hasAccountholder() => _accountholder != null;

  // "bankaccountnum" field.
  String? _bankaccountnum;
  String get bankaccountnum => _bankaccountnum ?? '';
  bool hasBankaccountnum() => _bankaccountnum != null;

  // "commentsref" field.
  List<DocumentReference>? _commentsref;
  List<DocumentReference> get commentsref => _commentsref ?? const [];
  bool hasCommentsref() => _commentsref != null;

  // "costlist" field.
  List<String>? _costlist;
  List<String> get costlist => _costlist ?? const [];
  bool hasCostlist() => _costlist != null;

  // "costmoneylist" field.
  List<int>? _costmoneylist;
  List<int> get costmoneylist => _costmoneylist ?? const [];
  bool hasCostmoneylist() => _costmoneylist != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "call" field.
  int? _call;
  int get call => _call ?? 0;
  bool hasCall() => _call != null;

  // "reviewref" field.
  List<DocumentReference>? _reviewref;
  List<DocumentReference> get reviewref => _reviewref ?? const [];
  bool hasReviewref() => _reviewref != null;

  // "fishtype" field.
  String? _fishtype;
  String get fishtype => _fishtype ?? '';
  bool hasFishtype() => _fishtype != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _image = getDataList(snapshotData['image']);
    _sailingstart = snapshotData['sailingstart'] as DateTime?;
    _sailingend = snapshotData['sailingend'] as DateTime?;
    _costtitle = snapshotData['costtitle'] as String?;
    _costmoney = castToType<int>(snapshotData['costmoney']);
    _shipscale = snapshotData['shipscale'] as String?;
    _peoplelimit = castToType<int>(snapshotData['peoplelimit']);
    _seats = snapshotData['seats'] as String?;
    _heart = getDataList(snapshotData['heart']);
    _location = snapshotData['location'] as String?;
    _latlng = snapshotData['latlng'] as LatLng?;
    _intro = snapshotData['intro'] as String?;
    _frontimage = snapshotData['frontimage'] as String?;
    _bank = snapshotData['bank'] as String?;
    _accountholder = snapshotData['accountholder'] as String?;
    _bankaccountnum = snapshotData['bankaccountnum'] as String?;
    _commentsref = getDataList(snapshotData['commentsref']);
    _costlist = getDataList(snapshotData['costlist']);
    _costmoneylist = getDataList(snapshotData['costmoneylist']);
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _call = castToType<int>(snapshotData['call']);
    _reviewref = getDataList(snapshotData['reviewref']);
    _fishtype = snapshotData['fishtype'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sea');

  static Stream<SeaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeaRecord.fromSnapshot(s));

  static Future<SeaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeaRecord.fromSnapshot(s));

  static SeaRecord fromSnapshot(DocumentSnapshot snapshot) => SeaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeaRecordData({
  String? title,
  DateTime? sailingstart,
  DateTime? sailingend,
  String? costtitle,
  int? costmoney,
  String? shipscale,
  int? peoplelimit,
  String? seats,
  String? location,
  LatLng? latlng,
  String? intro,
  String? frontimage,
  String? bank,
  String? accountholder,
  String? bankaccountnum,
  DocumentReference? uploadUser,
  DateTime? uploadDate,
  int? call,
  String? fishtype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'sailingstart': sailingstart,
      'sailingend': sailingend,
      'costtitle': costtitle,
      'costmoney': costmoney,
      'shipscale': shipscale,
      'peoplelimit': peoplelimit,
      'seats': seats,
      'location': location,
      'latlng': latlng,
      'intro': intro,
      'frontimage': frontimage,
      'bank': bank,
      'accountholder': accountholder,
      'bankaccountnum': bankaccountnum,
      'uploadUser': uploadUser,
      'uploadDate': uploadDate,
      'call': call,
      'fishtype': fishtype,
    }.withoutNulls,
  );

  return firestoreData;
}
