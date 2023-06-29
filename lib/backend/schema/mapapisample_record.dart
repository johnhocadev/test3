import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MapapisampleRecord extends FirestoreRecord {
  MapapisampleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "api" field.
  LatLng? _api;
  LatLng? get api => _api;
  bool hasApi() => _api != null;

  // "placename" field.
  String? _placename;
  String get placename => _placename ?? '';
  bool hasPlacename() => _placename != null;

  void _initializeFields() {
    _api = snapshotData['api'] as LatLng?;
    _placename = snapshotData['placename'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mapapisample');

  static Stream<MapapisampleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MapapisampleRecord.fromSnapshot(s));

  static Future<MapapisampleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MapapisampleRecord.fromSnapshot(s));

  static MapapisampleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MapapisampleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MapapisampleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MapapisampleRecord._(reference, mapFromFirestore(data));

  static MapapisampleRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      MapapisampleRecord.getDocumentFromData(
        {
          'api': safeGet(
            () => LatLng(
              snapshot.data['_geoloc']['lat'],
              snapshot.data['_geoloc']['lng'],
            ),
          ),
          'placename': snapshot.data['placename'],
        },
        MapapisampleRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<MapapisampleRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'mapapisample',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'MapapisampleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MapapisampleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMapapisampleRecordData({
  LatLng? api,
  String? placename,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'api': api,
      'placename': placename,
    }.withoutNulls,
  );

  return firestoreData;
}
