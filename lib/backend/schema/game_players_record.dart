import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamePlayersRecord extends FirestoreRecord {
  GamePlayersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fished" field.
  List<GameFishedStruct>? _fished;
  List<GameFishedStruct> get fished => _fished ?? const [];
  bool hasFished() => _fished != null;

  // "players" field.
  List<PlayerStruct>? _players;
  List<PlayerStruct> get players => _players ?? const [];
  bool hasPlayers() => _players != null;

  void _initializeFields() {
    _fished = getStructList(
      snapshotData['fished'],
      GameFishedStruct.fromMap,
    );
    _players = getStructList(
      snapshotData['players'],
      PlayerStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gamePlayers');

  static Stream<GamePlayersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamePlayersRecord.fromSnapshot(s));

  static Future<GamePlayersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamePlayersRecord.fromSnapshot(s));

  static GamePlayersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GamePlayersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamePlayersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamePlayersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamePlayersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamePlayersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamePlayersRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
