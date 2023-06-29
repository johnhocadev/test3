import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessengerRecord extends FirestoreRecord {
  MessengerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "otheruserref" field.
  DocumentReference? _otheruserref;
  DocumentReference? get otheruserref => _otheruserref;
  bool hasOtheruserref() => _otheruserref != null;

  // "myuserref" field.
  DocumentReference? _myuserref;
  DocumentReference? get myuserref => _myuserref;
  bool hasMyuserref() => _myuserref != null;

  // "othermessage" field.
  List<String>? _othermessage;
  List<String> get othermessage => _othermessage ?? const [];
  bool hasOthermessage() => _othermessage != null;

  // "mymessage" field.
  List<String>? _mymessage;
  List<String> get mymessage => _mymessage ?? const [];
  bool hasMymessage() => _mymessage != null;

  void _initializeFields() {
    _otheruserref = snapshotData['otheruserref'] as DocumentReference?;
    _myuserref = snapshotData['myuserref'] as DocumentReference?;
    _othermessage = getDataList(snapshotData['othermessage']);
    _mymessage = getDataList(snapshotData['mymessage']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messenger');

  static Stream<MessengerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessengerRecord.fromSnapshot(s));

  static Future<MessengerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessengerRecord.fromSnapshot(s));

  static MessengerRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessengerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessengerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessengerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessengerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessengerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessengerRecordData({
  DocumentReference? otheruserref,
  DocumentReference? myuserref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'otheruserref': otheruserref,
      'myuserref': myuserref,
    }.withoutNulls,
  );

  return firestoreData;
}
