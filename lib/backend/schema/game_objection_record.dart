import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameObjectionRecord extends FirestoreRecord {
  GameObjectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "GameTitle" field.
  String? _gameTitle;
  String get gameTitle => _gameTitle ?? '';
  bool hasGameTitle() => _gameTitle != null;

  // "GameDate" field.
  DateTime? _gameDate;
  DateTime? get gameDate => _gameDate;
  bool hasGameDate() => _gameDate != null;

  // "GameTime" field.
  String? _gameTime;
  String get gameTime => _gameTime ?? '';
  bool hasGameTime() => _gameTime != null;

  // "GameR" field.
  String? _gameR;
  String get gameR => _gameR ?? '';
  bool hasGameR() => _gameR != null;

  // "TItle" field.
  String? _tItle;
  String get tItle => _tItle ?? '';
  bool hasTItle() => _tItle != null;

  // "contents" field.
  String? _contents;
  String get contents => _contents ?? '';
  bool hasContents() => _contents != null;

  // "Userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "UploadTime" field.
  DateTime? _uploadTime;
  DateTime? get uploadTime => _uploadTime;
  bool hasUploadTime() => _uploadTime != null;

  // "Contestref" field.
  DocumentReference? _contestref;
  DocumentReference? get contestref => _contestref;
  bool hasContestref() => _contestref != null;

  void _initializeFields() {
    _gameTitle = snapshotData['GameTitle'] as String?;
    _gameDate = snapshotData['GameDate'] as DateTime?;
    _gameTime = snapshotData['GameTime'] as String?;
    _gameR = snapshotData['GameR'] as String?;
    _tItle = snapshotData['TItle'] as String?;
    _contents = snapshotData['contents'] as String?;
    _userref = snapshotData['Userref'] as DocumentReference?;
    _uploadTime = snapshotData['UploadTime'] as DateTime?;
    _contestref = snapshotData['Contestref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Game_objection');

  static Stream<GameObjectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameObjectionRecord.fromSnapshot(s));

  static Future<GameObjectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameObjectionRecord.fromSnapshot(s));

  static GameObjectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameObjectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameObjectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameObjectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameObjectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameObjectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameObjectionRecordData({
  String? gameTitle,
  DateTime? gameDate,
  String? gameTime,
  String? gameR,
  String? tItle,
  String? contents,
  DocumentReference? userref,
  DateTime? uploadTime,
  DocumentReference? contestref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'GameTitle': gameTitle,
      'GameDate': gameDate,
      'GameTime': gameTime,
      'GameR': gameR,
      'TItle': tItle,
      'contents': contents,
      'Userref': userref,
      'UploadTime': uploadTime,
      'Contestref': contestref,
    }.withoutNulls,
  );

  return firestoreData;
}
