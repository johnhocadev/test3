import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RankRecord extends FirestoreRecord {
  RankRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fish" field.
  String? _fish;
  String get fish => _fish ?? '';
  bool hasFish() => _fish != null;

  // "length" field.
  int? _length;
  int get length => _length ?? 0;
  bool hasLength() => _length != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "User" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "UploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  // "postType" field.
  String? _postType;
  String get postType => _postType ?? '';
  bool hasPostType() => _postType != null;

  void _initializeFields() {
    _fish = snapshotData['fish'] as String?;
    _length = castToType<int>(snapshotData['length']);
    _date = snapshotData['date'] as DateTime?;
    _location = snapshotData['location'] as String?;
    _company = snapshotData['company'] as String?;
    _photo = snapshotData['photo'] as String?;
    _user = snapshotData['User'] as DocumentReference?;
    _uploadTime = snapshotData['UploadTime'] as DateTime?;
    _postType = snapshotData['postType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rank');

  static Stream<RankRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RankRecord.fromSnapshot(s));

  static Future<RankRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RankRecord.fromSnapshot(s));

  static RankRecord fromSnapshot(DocumentSnapshot snapshot) => RankRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RankRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RankRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RankRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RankRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRankRecordData({
  String? fish,
  int? length,
  DateTime? date,
  String? location,
  String? company,
  String? photo,
  DocumentReference? user,
  DateTime? uploadTime,
  String? postType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fish': fish,
      'length': length,
      'date': date,
      'location': location,
      'company': company,
      'photo': photo,
      'User': user,
      'UploadTime': uploadTime,
      'postType': postType,
    }.withoutNulls,
  );

  return firestoreData;
}
