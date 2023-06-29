// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RounddataStruct extends FFFirebaseStruct {
  RounddataStruct({
    int? roundnumber,
    DateTime? starttime,
    DateTime? endtime,
    int? totalfishednumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _roundnumber = roundnumber,
        _starttime = starttime,
        _endtime = endtime,
        _totalfishednumber = totalfishednumber,
        super(firestoreUtilData);

  // "roundnumber" field.
  int? _roundnumber;
  int get roundnumber => _roundnumber ?? 0;
  set roundnumber(int? val) => _roundnumber = val;
  void incrementRoundnumber(int amount) => _roundnumber = roundnumber + amount;
  bool hasRoundnumber() => _roundnumber != null;

  // "starttime" field.
  DateTime? _starttime;
  DateTime? get starttime => _starttime;
  set starttime(DateTime? val) => _starttime = val;
  bool hasStarttime() => _starttime != null;

  // "endtime" field.
  DateTime? _endtime;
  DateTime? get endtime => _endtime;
  set endtime(DateTime? val) => _endtime = val;
  bool hasEndtime() => _endtime != null;

  // "totalfishednumber" field.
  int? _totalfishednumber;
  int get totalfishednumber => _totalfishednumber ?? 0;
  set totalfishednumber(int? val) => _totalfishednumber = val;
  void incrementTotalfishednumber(int amount) =>
      _totalfishednumber = totalfishednumber + amount;
  bool hasTotalfishednumber() => _totalfishednumber != null;

  static RounddataStruct fromMap(Map<String, dynamic> data) => RounddataStruct(
        roundnumber: castToType<int>(data['roundnumber']),
        starttime: data['starttime'] as DateTime?,
        endtime: data['endtime'] as DateTime?,
        totalfishednumber: castToType<int>(data['totalfishednumber']),
      );

  static RounddataStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RounddataStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'roundnumber': _roundnumber,
        'starttime': _starttime,
        'endtime': _endtime,
        'totalfishednumber': _totalfishednumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'roundnumber': serializeParam(
          _roundnumber,
          ParamType.int,
        ),
        'starttime': serializeParam(
          _starttime,
          ParamType.DateTime,
        ),
        'endtime': serializeParam(
          _endtime,
          ParamType.DateTime,
        ),
        'totalfishednumber': serializeParam(
          _totalfishednumber,
          ParamType.int,
        ),
      }.withoutNulls;

  static RounddataStruct fromSerializableMap(Map<String, dynamic> data) =>
      RounddataStruct(
        roundnumber: deserializeParam(
          data['roundnumber'],
          ParamType.int,
          false,
        ),
        starttime: deserializeParam(
          data['starttime'],
          ParamType.DateTime,
          false,
        ),
        endtime: deserializeParam(
          data['endtime'],
          ParamType.DateTime,
          false,
        ),
        totalfishednumber: deserializeParam(
          data['totalfishednumber'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RounddataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RounddataStruct &&
        roundnumber == other.roundnumber &&
        starttime == other.starttime &&
        endtime == other.endtime &&
        totalfishednumber == other.totalfishednumber;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([roundnumber, starttime, endtime, totalfishednumber]);
}

RounddataStruct createRounddataStruct({
  int? roundnumber,
  DateTime? starttime,
  DateTime? endtime,
  int? totalfishednumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RounddataStruct(
      roundnumber: roundnumber,
      starttime: starttime,
      endtime: endtime,
      totalfishednumber: totalfishednumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RounddataStruct? updateRounddataStruct(
  RounddataStruct? rounddata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rounddata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRounddataStructData(
  Map<String, dynamic> firestoreData,
  RounddataStruct? rounddata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rounddata == null) {
    return;
  }
  if (rounddata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && rounddata.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rounddataData = getRounddataFirestoreData(rounddata, forFieldValue);
  final nestedData = rounddataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = rounddata.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRounddataFirestoreData(
  RounddataStruct? rounddata, [
  bool forFieldValue = false,
]) {
  if (rounddata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rounddata.toMap());

  // Add any Firestore field values
  rounddata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRounddataListFirestoreData(
  List<RounddataStruct>? rounddatas,
) =>
    rounddatas?.map((e) => getRounddataFirestoreData(e, true)).toList() ?? [];
