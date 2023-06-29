// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlayerStruct extends FFFirebaseStruct {
  PlayerStruct({
    String? name,
    String? nickname,
    DocumentReference? userref,
    List<GameFishedStruct>? fishedData,
    int? totalFishedNum,
    int? ranking,
    String? profilePhoto,
    DocumentReference? onefishRone,
    DocumentReference? onefishRtwo,
    DocumentReference? onefishRthree,
    DocumentReference? onefishRfour,
    DocumentReference? onefishRfive,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _nickname = nickname,
        _userref = userref,
        _fishedData = fishedData,
        _totalFishedNum = totalFishedNum,
        _ranking = ranking,
        _profilePhoto = profilePhoto,
        _onefishRone = onefishRone,
        _onefishRtwo = onefishRtwo,
        _onefishRthree = onefishRthree,
        _onefishRfour = onefishRfour,
        _onefishRfive = onefishRfive,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  set userref(DocumentReference? val) => _userref = val;
  bool hasUserref() => _userref != null;

  // "fishedData" field.
  List<GameFishedStruct>? _fishedData;
  List<GameFishedStruct> get fishedData => _fishedData ?? const [];
  set fishedData(List<GameFishedStruct>? val) => _fishedData = val;
  void updateFishedData(Function(List<GameFishedStruct>) updateFn) =>
      updateFn(_fishedData ??= []);
  bool hasFishedData() => _fishedData != null;

  // "totalFishedNum" field.
  int? _totalFishedNum;
  int get totalFishedNum => _totalFishedNum ?? 0;
  set totalFishedNum(int? val) => _totalFishedNum = val;
  void incrementTotalFishedNum(int amount) =>
      _totalFishedNum = totalFishedNum + amount;
  bool hasTotalFishedNum() => _totalFishedNum != null;

  // "ranking" field.
  int? _ranking;
  int get ranking => _ranking ?? 0;
  set ranking(int? val) => _ranking = val;
  void incrementRanking(int amount) => _ranking = ranking + amount;
  bool hasRanking() => _ranking != null;

  // "profilePhoto" field.
  String? _profilePhoto;
  String get profilePhoto => _profilePhoto ?? '';
  set profilePhoto(String? val) => _profilePhoto = val;
  bool hasProfilePhoto() => _profilePhoto != null;

  // "onefishRone" field.
  DocumentReference? _onefishRone;
  DocumentReference? get onefishRone => _onefishRone;
  set onefishRone(DocumentReference? val) => _onefishRone = val;
  bool hasOnefishRone() => _onefishRone != null;

  // "onefishRtwo" field.
  DocumentReference? _onefishRtwo;
  DocumentReference? get onefishRtwo => _onefishRtwo;
  set onefishRtwo(DocumentReference? val) => _onefishRtwo = val;
  bool hasOnefishRtwo() => _onefishRtwo != null;

  // "onefishRthree" field.
  DocumentReference? _onefishRthree;
  DocumentReference? get onefishRthree => _onefishRthree;
  set onefishRthree(DocumentReference? val) => _onefishRthree = val;
  bool hasOnefishRthree() => _onefishRthree != null;

  // "onefishRfour" field.
  DocumentReference? _onefishRfour;
  DocumentReference? get onefishRfour => _onefishRfour;
  set onefishRfour(DocumentReference? val) => _onefishRfour = val;
  bool hasOnefishRfour() => _onefishRfour != null;

  // "onefishRfive" field.
  DocumentReference? _onefishRfive;
  DocumentReference? get onefishRfive => _onefishRfive;
  set onefishRfive(DocumentReference? val) => _onefishRfive = val;
  bool hasOnefishRfive() => _onefishRfive != null;

  static PlayerStruct fromMap(Map<String, dynamic> data) => PlayerStruct(
        name: data['name'] as String?,
        nickname: data['nickname'] as String?,
        userref: data['userref'] as DocumentReference?,
        fishedData: getStructList(
          data['fishedData'],
          GameFishedStruct.fromMap,
        ),
        totalFishedNum: castToType<int>(data['totalFishedNum']),
        ranking: castToType<int>(data['ranking']),
        profilePhoto: data['profilePhoto'] as String?,
        onefishRone: data['onefishRone'] as DocumentReference?,
        onefishRtwo: data['onefishRtwo'] as DocumentReference?,
        onefishRthree: data['onefishRthree'] as DocumentReference?,
        onefishRfour: data['onefishRfour'] as DocumentReference?,
        onefishRfive: data['onefishRfive'] as DocumentReference?,
      );

  static PlayerStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PlayerStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'nickname': _nickname,
        'userref': _userref,
        'fishedData': _fishedData?.map((e) => e.toMap()).toList(),
        'totalFishedNum': _totalFishedNum,
        'ranking': _ranking,
        'profilePhoto': _profilePhoto,
        'onefishRone': _onefishRone,
        'onefishRtwo': _onefishRtwo,
        'onefishRthree': _onefishRthree,
        'onefishRfour': _onefishRfour,
        'onefishRfive': _onefishRfive,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'userref': serializeParam(
          _userref,
          ParamType.DocumentReference,
        ),
        'fishedData': serializeParam(
          _fishedData,
          ParamType.DataStruct,
          true,
        ),
        'totalFishedNum': serializeParam(
          _totalFishedNum,
          ParamType.int,
        ),
        'ranking': serializeParam(
          _ranking,
          ParamType.int,
        ),
        'profilePhoto': serializeParam(
          _profilePhoto,
          ParamType.String,
        ),
        'onefishRone': serializeParam(
          _onefishRone,
          ParamType.DocumentReference,
        ),
        'onefishRtwo': serializeParam(
          _onefishRtwo,
          ParamType.DocumentReference,
        ),
        'onefishRthree': serializeParam(
          _onefishRthree,
          ParamType.DocumentReference,
        ),
        'onefishRfour': serializeParam(
          _onefishRfour,
          ParamType.DocumentReference,
        ),
        'onefishRfive': serializeParam(
          _onefishRfive,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static PlayerStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlayerStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        userref: deserializeParam(
          data['userref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        fishedData: deserializeStructParam<GameFishedStruct>(
          data['fishedData'],
          ParamType.DataStruct,
          true,
          structBuilder: GameFishedStruct.fromSerializableMap,
        ),
        totalFishedNum: deserializeParam(
          data['totalFishedNum'],
          ParamType.int,
          false,
        ),
        ranking: deserializeParam(
          data['ranking'],
          ParamType.int,
          false,
        ),
        profilePhoto: deserializeParam(
          data['profilePhoto'],
          ParamType.String,
          false,
        ),
        onefishRone: deserializeParam(
          data['onefishRone'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['fished'],
        ),
        onefishRtwo: deserializeParam(
          data['onefishRtwo'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['fished'],
        ),
        onefishRthree: deserializeParam(
          data['onefishRthree'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['fished'],
        ),
        onefishRfour: deserializeParam(
          data['onefishRfour'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['fished'],
        ),
        onefishRfive: deserializeParam(
          data['onefishRfive'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['fished'],
        ),
      );

  @override
  String toString() => 'PlayerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlayerStruct &&
        name == other.name &&
        nickname == other.nickname &&
        userref == other.userref &&
        listEquality.equals(fishedData, other.fishedData) &&
        totalFishedNum == other.totalFishedNum &&
        ranking == other.ranking &&
        profilePhoto == other.profilePhoto &&
        onefishRone == other.onefishRone &&
        onefishRtwo == other.onefishRtwo &&
        onefishRthree == other.onefishRthree &&
        onefishRfour == other.onefishRfour &&
        onefishRfive == other.onefishRfive;
  }

  @override
  int get hashCode => const ListEquality().hash([
        name,
        nickname,
        userref,
        fishedData,
        totalFishedNum,
        ranking,
        profilePhoto,
        onefishRone,
        onefishRtwo,
        onefishRthree,
        onefishRfour,
        onefishRfive
      ]);
}

PlayerStruct createPlayerStruct({
  String? name,
  String? nickname,
  DocumentReference? userref,
  int? totalFishedNum,
  int? ranking,
  String? profilePhoto,
  DocumentReference? onefishRone,
  DocumentReference? onefishRtwo,
  DocumentReference? onefishRthree,
  DocumentReference? onefishRfour,
  DocumentReference? onefishRfive,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlayerStruct(
      name: name,
      nickname: nickname,
      userref: userref,
      totalFishedNum: totalFishedNum,
      ranking: ranking,
      profilePhoto: profilePhoto,
      onefishRone: onefishRone,
      onefishRtwo: onefishRtwo,
      onefishRthree: onefishRthree,
      onefishRfour: onefishRfour,
      onefishRfive: onefishRfive,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlayerStruct? updatePlayerStruct(
  PlayerStruct? player, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    player
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlayerStructData(
  Map<String, dynamic> firestoreData,
  PlayerStruct? player,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (player == null) {
    return;
  }
  if (player.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && player.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final playerData = getPlayerFirestoreData(player, forFieldValue);
  final nestedData = playerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = player.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlayerFirestoreData(
  PlayerStruct? player, [
  bool forFieldValue = false,
]) {
  if (player == null) {
    return {};
  }
  final firestoreData = mapToFirestore(player.toMap());

  // Add any Firestore field values
  player.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlayerListFirestoreData(
  List<PlayerStruct>? players,
) =>
    players?.map((e) => getPlayerFirestoreData(e, true)).toList() ?? [];
