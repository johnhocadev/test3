import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardRecord extends FirestoreRecord {
  CardRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "interest-free" field.
  List<String>? _interestFree;
  List<String> get interestFree => _interestFree ?? const [];
  bool hasInterestFree() => _interestFree != null;

  // "discount" field.
  List<String>? _discount;
  List<String> get discount => _discount ?? const [];
  bool hasDiscount() => _discount != null;

  void _initializeFields() {
    _interestFree = getDataList(snapshotData['interest-free']);
    _discount = getDataList(snapshotData['discount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Card');

  static Stream<CardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardRecord.fromSnapshot(s));

  static Future<CardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardRecord.fromSnapshot(s));

  static CardRecord fromSnapshot(DocumentSnapshot snapshot) => CardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}
