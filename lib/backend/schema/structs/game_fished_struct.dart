// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameFishedStruct extends FFFirebaseStruct {
  GameFishedStruct({
    DateTime? fishtime,
    String? fishcategory,
    String? userNickname,
    String? fishphoto,
    double? fishlength,
    int? round,
    DocumentReference? userref,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fishtime = fishtime,
        _fishcategory = fishcategory,
        _userNickname = userNickname,
        _fishphoto = fishphoto,
        _fishlength = fishlength,
        _round = round,
        _userref = userref,
        super(firestoreUtilData);

  // "fishtime" field.
  DateTime? _fishtime;
  DateTime? get fishtime => _fishtime;
  set fishtime(DateTime? val) => _fishtime = val;
  bool hasFishtime() => _fishtime != null;

  // "fishcategory" field.
  String? _fishcategory;
  String get fishcategory => _fishcategory ?? '';
  set fishcategory(String? val) => _fishcategory = val;
  bool hasFishcategory() => _fishcategory != null;

  // "userNickname" field.
  String? _userNickname;
  String get userNickname => _userNickname ?? '';
  set userNickname(String? val) => _userNickname = val;
  bool hasUserNickname() => _userNickname != null;

  // "fishphoto" field.
  String? _fishphoto;
  String get fishphoto => _fishphoto ?? '';
  set fishphoto(String? val) => _fishphoto = val;
  bool hasFishphoto() => _fishphoto != null;

  // "fishlength" field.
  double? _fishlength;
  double get fishlength => _fishlength ?? 0.0;
  set fishlength(double? val) => _fishlength = val;
  void incrementFishlength(double amount) => _fishlength = fishlength + amount;
  bool hasFishlength() => _fishlength != null;

  // "round" field.
  int? _round;
  int get round => _round ?? 0;
  set round(int? val) => _round = val;
  void incrementRound(int amount) => _round = round + amount;
  bool hasRound() => _round != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? val) => _userref = val;
  bool hasUserref() => _userref != null;

  static GameFishedStruct fromMap(Map<String, dynamic> data) =>
      GameFishedStruct(
        fishtime: data['fishtime'] as DateTime?,
        fishcategory: data['fishcategory'] as String?,
        userNickname: data['userNickname'] as String?,
        fishphoto: data['fishphoto'] as String?,
        fishlength: castToType<double>(data['fishlength']),
        round: castToType<int>(data['round']),
        userref: data['userref'] as DocumentReference?,
      );

  static GameFishedStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? GameFishedStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'fishtime': _fishtime,
        'fishcategory': _fishcategory,
        'userNickname': _userNickname,
        'fishphoto': _fishphoto,
        'fishlength': _fishlength,
        'round': _round,
        'userref': _userref,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fishtime': serializeParam(
          _fishtime,
          ParamType.DateTime,
        ),
        'fishcategory': serializeParam(
          _fishcategory,
          ParamType.String,
        ),
        'userNickname': serializeParam(
          _userNickname,
          ParamType.String,
        ),
        'fishphoto': serializeParam(
          _fishphoto,
          ParamType.String,
        ),
        'fishlength': serializeParam(
          _fishlength,
          ParamType.double,
        ),
        'round': serializeParam(
          _round,
          ParamType.int,
        ),
        'userref': serializeParam(
          _userref,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static GameFishedStruct fromSerializableMap(Map<String, dynamic> data) =>
      GameFishedStruct(
        fishtime: deserializeParam(
          data['fishtime'],
          ParamType.DateTime,
          false,
        ),
        fishcategory: deserializeParam(
          data['fishcategory'],
          ParamType.String,
          false,
        ),
        userNickname: deserializeParam(
          data['userNickname'],
          ParamType.String,
          false,
        ),
        fishphoto: deserializeParam(
          data['fishphoto'],
          ParamType.String,
          false,
        ),
        fishlength: deserializeParam(
          data['fishlength'],
          ParamType.double,
          false,
        ),
        round: deserializeParam(
          data['round'],
          ParamType.int,
          false,
        ),
        userref: deserializeParam(
          data['userref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'GameFishedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GameFishedStruct &&
        fishtime == other.fishtime &&
        fishcategory == other.fishcategory &&
        userNickname == other.userNickname &&
        fishphoto == other.fishphoto &&
        fishlength == other.fishlength &&
        round == other.round &&
        userref == other.userref;
  }

  @override
  int get hashCode => const ListEquality().hash([
        fishtime,
        fishcategory,
        userNickname,
        fishphoto,
        fishlength,
        round,
        userref
      ]);
}

GameFishedStruct createGameFishedStruct({
  DateTime? fishtime,
  String? fishcategory,
  String? userNickname,
  String? fishphoto,
  double? fishlength,
  int? round,
  DocumentReference? userref,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GameFishedStruct(
      fishtime: fishtime,
      fishcategory: fishcategory,
      userNickname: userNickname,
      fishphoto: fishphoto,
      fishlength: fishlength,
      round: round,
      userref: userref,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GameFishedStruct? updateGameFishedStruct(
  GameFishedStruct? gameFished, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gameFished
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGameFishedStructData(
  Map<String, dynamic> firestoreData,
  GameFishedStruct? gameFished,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gameFished == null) {
    return;
  }
  if (gameFished.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && gameFished.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gameFishedData = getGameFishedFirestoreData(gameFished, forFieldValue);
  final nestedData = gameFishedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = gameFished.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGameFishedFirestoreData(
  GameFishedStruct? gameFished, [
  bool forFieldValue = false,
]) {
  if (gameFished == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gameFished.toMap());

  // Add any Firestore field values
  gameFished.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGameFishedListFirestoreData(
  List<GameFishedStruct>? gameFisheds,
) =>
    gameFisheds?.map((e) => getGameFishedFirestoreData(e, true)).toList() ?? [];
