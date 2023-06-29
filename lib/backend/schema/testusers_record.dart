import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestusersRecord extends FirestoreRecord {
  TestusersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  List<String>? _users;
  List<String> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "usersref" field.
  List<DocumentReference>? _usersref;
  List<DocumentReference> get usersref => _usersref ?? const [];
  bool hasUsersref() => _usersref != null;

  void _initializeFields() {
    _users = getDataList(snapshotData['users']);
    _usersref = getDataList(snapshotData['usersref']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testusers');

  static Stream<TestusersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestusersRecord.fromSnapshot(s));

  static Future<TestusersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestusersRecord.fromSnapshot(s));

  static TestusersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestusersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestusersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestusersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestusersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestusersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestusersRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
