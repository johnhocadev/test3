import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContestRecord extends FirestoreRecord {
  ContestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "contestType" field.
  String? _contestType;
  String get contestType => _contestType ?? '';
  bool hasContestType() => _contestType != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "area" field.
  String? _area;
  String get area => _area ?? '';
  bool hasArea() => _area != null;

  // "locationDetail" field.
  String? _locationDetail;
  String get locationDetail => _locationDetail ?? '';
  bool hasLocationDetail() => _locationDetail != null;

  // "call" field.
  String? _call;
  String get call => _call ?? '';
  bool hasCall() => _call != null;

  // "rules" field.
  String? _rules;
  String get rules => _rules ?? '';
  bool hasRules() => _rules != null;

  // "hookNumber" field.
  String? _hookNumber;
  String get hookNumber => _hookNumber ?? '';
  bool hasHookNumber() => _hookNumber != null;

  // "rules2" field.
  String? _rules2;
  String get rules2 => _rules2 ?? '';
  bool hasRules2() => _rules2 != null;

  // "fishingline" field.
  String? _fishingline;
  String get fishingline => _fishingline ?? '';
  bool hasFishingline() => _fishingline != null;

  // "bait" field.
  String? _bait;
  String get bait => _bait ?? '';
  bool hasBait() => _bait != null;

  // "fishingHook" field.
  String? _fishingHook;
  String get fishingHook => _fishingHook ?? '';
  bool hasFishingHook() => _fishingHook != null;

  // "parking" field.
  String? _parking;
  String get parking => _parking ?? '';
  bool hasParking() => _parking != null;

  // "lodge" field.
  String? _lodge;
  String get lodge => _lodge ?? '';
  bool hasLodge() => _lodge != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "detailContents" field.
  String? _detailContents;
  String get detailContents => _detailContents ?? '';
  bool hasDetailContents() => _detailContents != null;

  // "time1" field.
  String? _time1;
  String get time1 => _time1 ?? '';
  bool hasTime1() => _time1 != null;

  // "time2" field.
  String? _time2;
  String get time2 => _time2 ?? '';
  bool hasTime2() => _time2 != null;

  // "time3" field.
  String? _time3;
  String get time3 => _time3 ?? '';
  bool hasTime3() => _time3 != null;

  // "time4" field.
  String? _time4;
  String get time4 => _time4 ?? '';
  bool hasTime4() => _time4 != null;

  // "time5" field.
  String? _time5;
  String get time5 => _time5 ?? '';
  bool hasTime5() => _time5 != null;

  // "uploadDate" field.
  DateTime? _uploadDate;
  DateTime? get uploadDate => _uploadDate;
  bool hasUploadDate() => _uploadDate != null;

  // "uploadUser" field.
  DocumentReference? _uploadUser;
  DocumentReference? get uploadUser => _uploadUser;
  bool hasUploadUser() => _uploadUser != null;

  // "approval" field.
  bool? _approval;
  bool get approval => _approval ?? false;
  bool hasApproval() => _approval != null;

  // "appliedUser" field.
  List<DocumentReference>? _appliedUser;
  List<DocumentReference> get appliedUser => _appliedUser ?? const [];
  bool hasAppliedUser() => _appliedUser != null;

  // "fishType" field.
  String? _fishType;
  String get fishType => _fishType ?? '';
  bool hasFishType() => _fishType != null;

  // "rod" field.
  String? _rod;
  String get rod => _rod ?? '';
  bool hasRod() => _rod != null;

  // "recruitNum" field.
  int? _recruitNum;
  int get recruitNum => _recruitNum ?? 0;
  bool hasRecruitNum() => _recruitNum != null;

  // "step" field.
  String? _step;
  String get step => _step ?? '';
  bool hasStep() => _step != null;

  // "morebutton" field.
  bool? _morebutton;
  bool get morebutton => _morebutton ?? false;
  bool hasMorebutton() => _morebutton != null;

  // "ModifyScore_company" field.
  bool? _modifyScoreCompany;
  bool get modifyScoreCompany => _modifyScoreCompany ?? false;
  bool hasModifyScoreCompany() => _modifyScoreCompany != null;

  // "ModifyScore_user" field.
  bool? _modifyScoreUser;
  bool get modifyScoreUser => _modifyScoreUser ?? false;
  bool hasModifyScoreUser() => _modifyScoreUser != null;

  // "corruption" field.
  bool? _corruption;
  bool get corruption => _corruption ?? false;
  bool hasCorruption() => _corruption != null;

  // "report" field.
  bool? _report;
  bool get report => _report ?? false;
  bool hasReport() => _report != null;

  // "appliedUserName" field.
  List<String>? _appliedUserName;
  List<String> get appliedUserName => _appliedUserName ?? const [];
  bool hasAppliedUserName() => _appliedUserName != null;

  // "players" field.
  List<PlayerStruct>? _players;
  List<PlayerStruct> get players => _players ?? const [];
  bool hasPlayers() => _players != null;

  // "totalroundnumber" field.
  int? _totalroundnumber;
  int get totalroundnumber => _totalroundnumber ?? 0;
  bool hasTotalroundnumber() => _totalroundnumber != null;

  // "totalRoundData" field.
  List<RounddataStruct>? _totalRoundData;
  List<RounddataStruct> get totalRoundData => _totalRoundData ?? const [];
  bool hasTotalRoundData() => _totalRoundData != null;

  // "contestDateEnd" field.
  DateTime? _contestDateEnd;
  DateTime? get contestDateEnd => _contestDateEnd;
  bool hasContestDateEnd() => _contestDateEnd != null;

  // "contestDate" field.
  DateTime? _contestDate;
  DateTime? get contestDate => _contestDate;
  bool hasContestDate() => _contestDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "gameFished" field.
  GameFishedStruct? _gameFished;
  GameFishedStruct get gameFished => _gameFished ?? GameFishedStruct();
  bool hasGameFished() => _gameFished != null;

  // "create" field.
  DateTime? _create;
  DateTime? get create => _create;
  bool hasCreate() => _create != null;

  void _initializeFields() {
    _contestType = snapshotData['contestType'] as String?;
    _title = snapshotData['title'] as String?;
    _area = snapshotData['area'] as String?;
    _locationDetail = snapshotData['locationDetail'] as String?;
    _call = snapshotData['call'] as String?;
    _rules = snapshotData['rules'] as String?;
    _hookNumber = snapshotData['hookNumber'] as String?;
    _rules2 = snapshotData['rules2'] as String?;
    _fishingline = snapshotData['fishingline'] as String?;
    _bait = snapshotData['bait'] as String?;
    _fishingHook = snapshotData['fishingHook'] as String?;
    _parking = snapshotData['parking'] as String?;
    _lodge = snapshotData['lodge'] as String?;
    _image = snapshotData['image'] as String?;
    _detailContents = snapshotData['detailContents'] as String?;
    _time1 = snapshotData['time1'] as String?;
    _time2 = snapshotData['time2'] as String?;
    _time3 = snapshotData['time3'] as String?;
    _time4 = snapshotData['time4'] as String?;
    _time5 = snapshotData['time5'] as String?;
    _uploadDate = snapshotData['uploadDate'] as DateTime?;
    _uploadUser = snapshotData['uploadUser'] as DocumentReference?;
    _approval = snapshotData['approval'] as bool?;
    _appliedUser = getDataList(snapshotData['appliedUser']);
    _fishType = snapshotData['fishType'] as String?;
    _rod = snapshotData['rod'] as String?;
    _recruitNum = castToType<int>(snapshotData['recruitNum']);
    _step = snapshotData['step'] as String?;
    _morebutton = snapshotData['morebutton'] as bool?;
    _modifyScoreCompany = snapshotData['ModifyScore_company'] as bool?;
    _modifyScoreUser = snapshotData['ModifyScore_user'] as bool?;
    _corruption = snapshotData['corruption'] as bool?;
    _report = snapshotData['report'] as bool?;
    _appliedUserName = getDataList(snapshotData['appliedUserName']);
    _players = getStructList(
      snapshotData['players'],
      PlayerStruct.fromMap,
    );
    _totalroundnumber = castToType<int>(snapshotData['totalroundnumber']);
    _totalRoundData = getStructList(
      snapshotData['totalRoundData'],
      RounddataStruct.fromMap,
    );
    _contestDateEnd = snapshotData['contestDateEnd'] as DateTime?;
    _contestDate = snapshotData['contestDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _gameFished = GameFishedStruct.maybeFromMap(snapshotData['gameFished']);
    _create = snapshotData['create'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contest');

  static Stream<ContestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContestRecord.fromSnapshot(s));

  static Future<ContestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContestRecord.fromSnapshot(s));

  static ContestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContestRecordData({
  String? contestType,
  String? title,
  String? area,
  String? locationDetail,
  String? call,
  String? rules,
  String? hookNumber,
  String? rules2,
  String? fishingline,
  String? bait,
  String? fishingHook,
  String? parking,
  String? lodge,
  String? image,
  String? detailContents,
  String? time1,
  String? time2,
  String? time3,
  String? time4,
  String? time5,
  DateTime? uploadDate,
  DocumentReference? uploadUser,
  bool? approval,
  String? fishType,
  String? rod,
  int? recruitNum,
  String? step,
  bool? morebutton,
  bool? modifyScoreCompany,
  bool? modifyScoreUser,
  bool? corruption,
  bool? report,
  int? totalroundnumber,
  DateTime? contestDateEnd,
  DateTime? contestDate,
  DateTime? endDate,
  DateTime? startDate,
  GameFishedStruct? gameFished,
  DateTime? create,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contestType': contestType,
      'title': title,
      'area': area,
      'locationDetail': locationDetail,
      'call': call,
      'rules': rules,
      'hookNumber': hookNumber,
      'rules2': rules2,
      'fishingline': fishingline,
      'bait': bait,
      'fishingHook': fishingHook,
      'parking': parking,
      'lodge': lodge,
      'image': image,
      'detailContents': detailContents,
      'time1': time1,
      'time2': time2,
      'time3': time3,
      'time4': time4,
      'time5': time5,
      'uploadDate': uploadDate,
      'uploadUser': uploadUser,
      'approval': approval,
      'fishType': fishType,
      'rod': rod,
      'recruitNum': recruitNum,
      'step': step,
      'morebutton': morebutton,
      'ModifyScore_company': modifyScoreCompany,
      'ModifyScore_user': modifyScoreUser,
      'corruption': corruption,
      'report': report,
      'totalroundnumber': totalroundnumber,
      'contestDateEnd': contestDateEnd,
      'contestDate': contestDate,
      'endDate': endDate,
      'startDate': startDate,
      'gameFished': GameFishedStruct().toMap(),
      'create': create,
    }.withoutNulls,
  );

  // Handle nested data for "gameFished" field.
  addGameFishedStructData(firestoreData, gameFished, 'gameFished');

  return firestoreData;
}
