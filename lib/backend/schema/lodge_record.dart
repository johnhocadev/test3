import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LodgeRecord extends FirestoreRecord {
  LodgeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "call" field.
  int? _call;
  int get call => _call ?? 0;
  bool hasCall() => _call != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "openTime" field.
  DateTime? _openTime;
  DateTime? get openTime => _openTime;
  bool hasOpenTime() => _openTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "peopleLimit" field.
  int? _peopleLimit;
  int get peopleLimit => _peopleLimit ?? 0;
  bool hasPeopleLimit() => _peopleLimit != null;

  // "room" field.
  int? _room;
  int get room => _room ?? 0;
  bool hasRoom() => _room != null;

  // "bed" field.
  int? _bed;
  int get bed => _bed ?? 0;
  bool hasBed() => _bed != null;

  // "amenities" field.
  String? _amenities;
  String get amenities => _amenities ?? '';
  bool hasAmenities() => _amenities != null;

  // "add" field.
  String? _add;
  String get add => _add ?? '';
  bool hasAdd() => _add != null;

  // "Intro" field.
  String? _intro;
  String get intro => _intro ?? '';
  bool hasIntro() => _intro != null;

  // "Bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  bool hasBankname() => _bankname != null;

  // "AccountHolder" field.
  String? _accountHolder;
  String get accountHolder => _accountHolder ?? '';
  bool hasAccountHolder() => _accountHolder != null;

  // "accountNum" field.
  String? _accountNum;
  String get accountNum => _accountNum ?? '';
  bool hasAccountNum() => _accountNum != null;

  // "UploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "UploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  // "reviewref" field.
  List<DocumentReference>? _reviewref;
  List<DocumentReference> get reviewref => _reviewref ?? const [];
  bool hasReviewref() => _reviewref != null;

  // "latlng" field.
  LatLng? _latlng;
  LatLng? get latlng => _latlng;
  bool hasLatlng() => _latlng != null;

  // "fishtype" field.
  String? _fishtype;
  String get fishtype => _fishtype ?? '';
  bool hasFishtype() => _fishtype != null;

  void _initializeFields() {
    _image = getDataList(snapshotData['image']);
    _call = castToType<int>(snapshotData['call']);
    _title = snapshotData['title'] as String?;
    _openTime = snapshotData['openTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _cost = castToType<int>(snapshotData['cost']);
    _peopleLimit = castToType<int>(snapshotData['peopleLimit']);
    _room = castToType<int>(snapshotData['room']);
    _bed = castToType<int>(snapshotData['bed']);
    _amenities = snapshotData['amenities'] as String?;
    _add = snapshotData['add'] as String?;
    _intro = snapshotData['Intro'] as String?;
    _bankname = snapshotData['Bankname'] as String?;
    _accountHolder = snapshotData['AccountHolder'] as String?;
    _accountNum = snapshotData['accountNum'] as String?;
    _uploadUser = snapshotData['UploadUser'] as DocumentReference?;
    _uploadTime = snapshotData['UploadTime'] as DateTime?;
    _reviewref = getDataList(snapshotData['reviewref']);
    _latlng = snapshotData['latlng'] as LatLng?;
    _fishtype = snapshotData['fishtype'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lodge');

  static Stream<LodgeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LodgeRecord.fromSnapshot(s));

  static Future<LodgeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LodgeRecord.fromSnapshot(s));

  static LodgeRecord fromSnapshot(DocumentSnapshot snapshot) => LodgeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LodgeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LodgeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LodgeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LodgeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLodgeRecordData({
  int? call,
  String? title,
  DateTime? openTime,
  DateTime? endTime,
  int? cost,
  int? peopleLimit,
  int? room,
  int? bed,
  String? amenities,
  String? add,
  String? intro,
  String? bankname,
  String? accountHolder,
  String? accountNum,
  DocumentReference? uploadUser,
  DateTime? uploadTime,
  LatLng? latlng,
  String? fishtype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'call': call,
      'title': title,
      'openTime': openTime,
      'endTime': endTime,
      'cost': cost,
      'peopleLimit': peopleLimit,
      'room': room,
      'bed': bed,
      'amenities': amenities,
      'add': add,
      'Intro': intro,
      'Bankname': bankname,
      'AccountHolder': accountHolder,
      'accountNum': accountNum,
      'UploadUser': uploadUser,
      'UploadTime': uploadTime,
      'latlng': latlng,
      'fishtype': fishtype,
    }.withoutNulls,
  );

  return firestoreData;
}
