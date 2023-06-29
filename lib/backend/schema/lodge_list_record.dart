import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LodgeListRecord extends FirestoreRecord {
  LodgeListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "lodgeref" field.
  List<DocumentReference>? _lodgeref;
  List<DocumentReference> get lodgeref => _lodgeref ?? const [];
  bool hasLodgeref() => _lodgeref != null;

  // "Listtitle" field.
  String? _listtitle;
  String get listtitle => _listtitle ?? '';
  bool hasListtitle() => _listtitle != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _lodgeref = getDataList(snapshotData['lodgeref']);
    _listtitle = snapshotData['Listtitle'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lodgeList');

  static Stream<LodgeListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LodgeListRecord.fromSnapshot(s));

  static Future<LodgeListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LodgeListRecord.fromSnapshot(s));

  static LodgeListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LodgeListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LodgeListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LodgeListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LodgeListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LodgeListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLodgeListRecordData({
  DocumentReference? userref,
  String? listtitle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'Listtitle': listtitle,
    }.withoutNulls,
  );

  return firestoreData;
}
