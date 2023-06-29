import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _search = false;
  bool get search => _search;
  set search(bool _value) {
    _search = _value;
  }

  List<DocumentReference> _userdata = [
    FirebaseFirestore.instance.doc('/users/H9GiAyd86FaAE5kgc6lTDvRPGQA3'),
    FirebaseFirestore.instance.doc('/users/OU2qZCaayjkEfj76YAWU'),
    FirebaseFirestore.instance.doc('/users/UAnWUsFm54l4jYhMQBfo'),
    FirebaseFirestore.instance.doc('/users/UAp8dtdrOLOzOibhutJqH4hQ5i23'),
    FirebaseFirestore.instance.doc('/users/X0xmnZP2WEnyxiiZkOk0')
  ];
  List<DocumentReference> get userdata => _userdata;
  set userdata(List<DocumentReference> _value) {
    _userdata = _value;
  }

  void addToUserdata(DocumentReference _value) {
    _userdata.add(_value);
  }

  void removeFromUserdata(DocumentReference _value) {
    _userdata.remove(_value);
  }

  void removeAtIndexFromUserdata(int _index) {
    _userdata.removeAt(_index);
  }

  void updateUserdataAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _userdata[_index] = updateFn(_userdata[_index]);
  }

  List<DocumentReference> _postdata = [
    FirebaseFirestore.instance.doc('/post/2MoQE7rlzwPYhzplhDHv'),
    FirebaseFirestore.instance.doc('/post/3Ijh8qidG04WzUDhCyYp'),
    FirebaseFirestore.instance.doc('/post/9MvgmiWqlbjkkSwGbSKB'),
    FirebaseFirestore.instance.doc('/post/RzCqiaX6IuGaX5drUET3'),
    FirebaseFirestore.instance.doc('/post/U4uUIqrdpJYbkPfErjNj'),
    FirebaseFirestore.instance.doc('/post/c13BcDoKsgeqlOqJrAb2'),
    FirebaseFirestore.instance.doc('/post/roUD1bVcKHYI3J64KiOo')
  ];
  List<DocumentReference> get postdata => _postdata;
  set postdata(List<DocumentReference> _value) {
    _postdata = _value;
  }

  void addToPostdata(DocumentReference _value) {
    _postdata.add(_value);
  }

  void removeFromPostdata(DocumentReference _value) {
    _postdata.remove(_value);
  }

  void removeAtIndexFromPostdata(int _index) {
    _postdata.removeAt(_index);
  }

  void updatePostdataAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _postdata[_index] = updateFn(_postdata[_index]);
  }

  List<String> _shipfilterlocation = [
    '강원도',
    '경기도',
    '경상남도',
    '경상북도',
    '광주광역시',
    '대구광역시',
    '대전광역시',
    '부산광역시',
    '서울특별시',
    '울산광역시',
    '인천광역시',
    '전라남도',
    '전라북도',
    '제주도',
    '충청남도',
    '충청북도'
  ];
  List<String> get shipfilterlocation => _shipfilterlocation;
  set shipfilterlocation(List<String> _value) {
    _shipfilterlocation = _value;
  }

  void addToShipfilterlocation(String _value) {
    _shipfilterlocation.add(_value);
  }

  void removeFromShipfilterlocation(String _value) {
    _shipfilterlocation.remove(_value);
  }

  void removeAtIndexFromShipfilterlocation(int _index) {
    _shipfilterlocation.removeAt(_index);
  }

  void updateShipfilterlocationAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _shipfilterlocation[_index] = updateFn(_shipfilterlocation[_index]);
  }

  List<String> _seafish = [
    '돌돔',
    '감성돔',
    '벵에돔',
    '참돔',
    '광어',
    '도다리',
    '우럭',
    '농어',
    '볼락',
    '방어',
    '부시리',
    '참치',
    '삼치',
    '돗돔',
    '벤자리',
    '잿방어',
    '+'
  ];
  List<String> get seafish => _seafish;
  set seafish(List<String> _value) {
    _seafish = _value;
  }

  void addToSeafish(String _value) {
    _seafish.add(_value);
  }

  void removeFromSeafish(String _value) {
    _seafish.remove(_value);
  }

  void removeAtIndexFromSeafish(int _index) {
    _seafish.removeAt(_index);
  }

  void updateSeafishAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _seafish[_index] = updateFn(_seafish[_index]);
  }

  List<String> _fwaterfish = [
    '토종붕어',
    '떡붕어',
    '잉어',
    '쏘가리',
    '송어',
    '배스',
    '장어',
    '은어',
    '가물치',
    '꺽지',
    '+'
  ];
  List<String> get fwaterfish => _fwaterfish;
  set fwaterfish(List<String> _value) {
    _fwaterfish = _value;
  }

  void addToFwaterfish(String _value) {
    _fwaterfish.add(_value);
  }

  void removeFromFwaterfish(String _value) {
    _fwaterfish.remove(_value);
  }

  void removeAtIndexFromFwaterfish(int _index) {
    _fwaterfish.removeAt(_index);
  }

  void updateFwaterfishAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _fwaterfish[_index] = updateFn(_fwaterfish[_index]);
  }

  bool _main = true;
  bool get main => _main;
  set main(bool _value) {
    _main = _value;
  }

  String _mappop = '0';
  String get mappop => _mappop;
  set mappop(String _value) {
    _mappop = _value;
  }

  bool _homeswitch = false;
  bool get homeswitch => _homeswitch;
  set homeswitch(bool _value) {
    _homeswitch = _value;
  }

  String _postType = '0';
  String get postType => _postType;
  set postType(String _value) {
    _postType = _value;
  }

  String _postType2 = 'all';
  String get postType2 => _postType2;
  set postType2(String _value) {
    _postType2 = _value;
  }

  String _editContest = '0';
  String get editContest => _editContest;
  set editContest(String _value) {
    _editContest = _value;
  }

  int _contestTime = 0;
  int get contestTime => _contestTime;
  set contestTime(int _value) {
    _contestTime = _value;
  }

  String _navi = '0';
  String get navi => _navi;
  set navi(String _value) {
    _navi = _value;
  }

  String _payOption = '0';
  String get payOption => _payOption;
  set payOption(String _value) {
    _payOption = _value;
  }

  DocumentReference? _rere;
  DocumentReference? get rere => _rere;
  set rere(DocumentReference? _value) {
    _rere = _value;
  }

  bool _agreepop1 = false;
  bool get agreepop1 => _agreepop1;
  set agreepop1(bool _value) {
    _agreepop1 = _value;
  }

  bool _join = false;
  bool get join => _join;
  set join(bool _value) {
    _join = _value;
  }

  String _reviewType = '';
  String get reviewType => _reviewType;
  set reviewType(String _value) {
    _reviewType = _value;
  }

  bool _agreepop2 = false;
  bool get agreepop2 => _agreepop2;
  set agreepop2(bool _value) {
    _agreepop2 = _value;
  }

  DocumentReference? _GameRef;
  DocumentReference? get GameRef => _GameRef;
  set GameRef(DocumentReference? _value) {
    _GameRef = _value;
  }

  String _PayType = '0';
  String get PayType => _PayType;
  set PayType(String _value) {
    _PayType = _value;
  }

  String _CardType = '0';
  String get CardType => _CardType;
  set CardType(String _value) {
    _CardType = _value;
  }

  bool _Cardmore = false;
  bool get Cardmore => _Cardmore;
  set Cardmore(bool _value) {
    _Cardmore = _value;
  }

  String _rank = '전체';
  String get rank => _rank;
  set rank(String _value) {
    _rank = _value;
  }

  String _rank2 = '전체';
  String get rank2 => _rank2;
  set rank2(String _value) {
    _rank2 = _value;
  }

  List<String> _fishingzoneType = [];
  List<String> get fishingzoneType => _fishingzoneType;
  set fishingzoneType(List<String> _value) {
    _fishingzoneType = _value;
  }

  void addToFishingzoneType(String _value) {
    _fishingzoneType.add(_value);
  }

  void removeFromFishingzoneType(String _value) {
    _fishingzoneType.remove(_value);
  }

  void removeAtIndexFromFishingzoneType(int _index) {
    _fishingzoneType.removeAt(_index);
  }

  void updateFishingzoneTypeAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _fishingzoneType[_index] = updateFn(_fishingzoneType[_index]);
  }

  List<String> _postFilter = ['바다 조행기', '민물 조행기'];
  List<String> get postFilter => _postFilter;
  set postFilter(List<String> _value) {
    _postFilter = _value;
  }

  void addToPostFilter(String _value) {
    _postFilter.add(_value);
  }

  void removeFromPostFilter(String _value) {
    _postFilter.remove(_value);
  }

  void removeAtIndexFromPostFilter(int _index) {
    _postFilter.removeAt(_index);
  }

  void updatePostFilterAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _postFilter[_index] = updateFn(_postFilter[_index]);
  }

  List<String> _postFilter2 = ['바다 앨범', '민물 앨범'];
  List<String> get postFilter2 => _postFilter2;
  set postFilter2(List<String> _value) {
    _postFilter2 = _value;
  }

  void addToPostFilter2(String _value) {
    _postFilter2.add(_value);
  }

  void removeFromPostFilter2(String _value) {
    _postFilter2.remove(_value);
  }

  void removeAtIndexFromPostFilter2(int _index) {
    _postFilter2.removeAt(_index);
  }

  void updatePostFilter2AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _postFilter2[_index] = updateFn(_postFilter2[_index]);
  }

  List<String> _albumdata = ['바다 앨범 ', '민물 앨범'];
  List<String> get albumdata => _albumdata;
  set albumdata(List<String> _value) {
    _albumdata = _value;
  }

  void addToAlbumdata(String _value) {
    _albumdata.add(_value);
  }

  void removeFromAlbumdata(String _value) {
    _albumdata.remove(_value);
  }

  void removeAtIndexFromAlbumdata(int _index) {
    _albumdata.removeAt(_index);
  }

  void updateAlbumdataAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _albumdata[_index] = updateFn(_albumdata[_index]);
  }

  List<String> _fishes = ['sea', 'fwater'];
  List<String> get fishes => _fishes;
  set fishes(List<String> _value) {
    _fishes = _value;
  }

  void addToFishes(String _value) {
    _fishes.add(_value);
  }

  void removeFromFishes(String _value) {
    _fishes.remove(_value);
  }

  void removeAtIndexFromFishes(int _index) {
    _fishes.removeAt(_index);
  }

  void updateFishesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _fishes[_index] = updateFn(_fishes[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
