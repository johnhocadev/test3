import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Fishingzone2Record extends FirestoreRecord {
  Fishingzone2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "no" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "address2" field.
  String? _address2;
  String get address2 => _address2 ?? '';
  bool hasAddress2() => _address2 != null;

  // "phoneNum" field.
  String? _phoneNum;
  String get phoneNum => _phoneNum ?? '';
  bool hasPhoneNum() => _phoneNum != null;

  // "area" field.
  double? _area;
  double get area => _area ?? 0.0;
  bool hasArea() => _area != null;

  // "mainFish" field.
  String? _mainFish;
  String get mainFish => _mainFish ?? '';
  bool hasMainFish() => _mainFish != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  bool hasCapacity() => _capacity != null;

  // "type2" field.
  String? _type2;
  String get type2 => _type2 ?? '';
  bool hasType2() => _type2 != null;

  // "fee" field.
  String? _fee;
  String get fee => _fee ?? '';
  bool hasFee() => _fee != null;

  // "safety" field.
  String? _safety;
  String get safety => _safety ?? '';
  bool hasSafety() => _safety != null;

  // "comfortable" field.
  String? _comfortable;
  String get comfortable => _comfortable ?? '';
  bool hasComfortable() => _comfortable != null;

  // "nearby" field.
  String? _nearby;
  String get nearby => _nearby ?? '';
  bool hasNearby() => _nearby != null;

  // "phoneNum2" field.
  String? _phoneNum2;
  String get phoneNum2 => _phoneNum2 ?? '';
  bool hasPhoneNum2() => _phoneNum2 != null;

  // "agency" field.
  String? _agency;
  String get agency => _agency ?? '';
  bool hasAgency() => _agency != null;

  // "lat" field.
  String? _lat;
  String get lat => _lat ?? '';
  bool hasLat() => _lat != null;

  // "lng" field.
  String? _lng;
  String get lng => _lng ?? '';
  bool hasLng() => _lng != null;

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

  // "intro" field.
  String? _intro;
  String get intro => _intro ?? '';
  bool hasIntro() => _intro != null;

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

  // "uploadUser" field.
  String? _uploadUser;
  String get uploadUser => _uploadUser ?? '';
  bool hasUploadUser() => _uploadUser != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "pcommentsref" field.
  List<DocumentReference>? _pcommentsref;
  List<DocumentReference> get pcommentsref => _pcommentsref ?? const [];
  bool hasPcommentsref() => _pcommentsref != null;

  // "reviewref" field.
  List<DocumentReference>? _reviewref;
  List<DocumentReference> get reviewref => _reviewref ?? const [];
  bool hasReviewref() => _reviewref != null;

  void _initializeFields() {
    _no = castToType<int>(snapshotData['no']);
    _name = snapshotData['name'] as String?;
    _type = snapshotData['type'] as String?;
    _address = snapshotData['address'] as String?;
    _address2 = snapshotData['address2'] as String?;
    _phoneNum = snapshotData['phoneNum'] as String?;
    _area = castToType<double>(snapshotData['area']);
    _mainFish = snapshotData['mainFish'] as String?;
    _capacity = castToType<int>(snapshotData['capacity']);
    _type2 = snapshotData['type2'] as String?;
    _fee = snapshotData['fee'] as String?;
    _safety = snapshotData['safety'] as String?;
    _comfortable = snapshotData['comfortable'] as String?;
    _nearby = snapshotData['nearby'] as String?;
    _phoneNum2 = snapshotData['phoneNum2'] as String?;
    _agency = snapshotData['agency'] as String?;
    _lat = snapshotData['lat'] as String?;
    _lng = snapshotData['lng'] as String?;
    _sailingstart = snapshotData['sailingstart'] as DateTime?;
    _sailingend = snapshotData['sailingend'] as DateTime?;
    _costtitle = snapshotData['costtitle'] as String?;
    _costmoney = castToType<int>(snapshotData['costmoney']);
    _intro = snapshotData['intro'] as String?;
    _bank = snapshotData['bank'] as String?;
    _accountholder = snapshotData['accountholder'] as String?;
    _bankaccountnum = snapshotData['bankaccountnum'] as String?;
    _uploadUser = snapshotData['uploadUser'] as String?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _image = getDataList(snapshotData['image']);
    _pcommentsref = getDataList(snapshotData['pcommentsref']);
    _reviewref = getDataList(snapshotData['reviewref']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fishingzone2');

  static Stream<Fishingzone2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Fishingzone2Record.fromSnapshot(s));

  static Future<Fishingzone2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Fishingzone2Record.fromSnapshot(s));

  static Fishingzone2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Fishingzone2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Fishingzone2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Fishingzone2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Fishingzone2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Fishingzone2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFishingzone2RecordData({
  int? no,
  String? name,
  String? type,
  String? address,
  String? address2,
  String? phoneNum,
  double? area,
  String? mainFish,
  int? capacity,
  String? type2,
  String? fee,
  String? safety,
  String? comfortable,
  String? nearby,
  String? phoneNum2,
  String? agency,
  String? lat,
  String? lng,
  DateTime? sailingstart,
  DateTime? sailingend,
  String? costtitle,
  int? costmoney,
  String? intro,
  String? bank,
  String? accountholder,
  String? bankaccountnum,
  String? uploadUser,
  DateTime? uploadDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'no': no,
      'name': name,
      'type': type,
      'address': address,
      'address2': address2,
      'phoneNum': phoneNum,
      'area': area,
      'mainFish': mainFish,
      'capacity': capacity,
      'type2': type2,
      'fee': fee,
      'safety': safety,
      'comfortable': comfortable,
      'nearby': nearby,
      'phoneNum2': phoneNum2,
      'agency': agency,
      'lat': lat,
      'lng': lng,
      'sailingstart': sailingstart,
      'sailingend': sailingend,
      'costtitle': costtitle,
      'costmoney': costmoney,
      'intro': intro,
      'bank': bank,
      'accountholder': accountholder,
      'bankaccountnum': bankaccountnum,
      'uploadUser': uploadUser,
      'uploadDate': uploadDate,
    }.withoutNulls,
  );

  return firestoreData;
}
