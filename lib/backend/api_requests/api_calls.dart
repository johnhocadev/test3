import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCategoriesCall {
  static Future<ApiCallResponse> call({
    int? count = 4,
    int? offset = 0,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCategories',
      apiUrl: 'https://jservice.io/api/categories',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'count': count,
        'offset': offset,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CategoryCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'category',
      apiUrl: 'https://jservice.io/api/category',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class QuestionCall {
  static Future<ApiCallResponse> call({
    int? category,
    int? value,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'question',
      apiUrl: 'https://jservice.io/api/clues',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
        'value': value,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AllQuestionsCall {
  static Future<ApiCallResponse> call({
    int? category,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'allQuestions',
      apiUrl: 'https://jservice.io/api/clues',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'category': category,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WatertimeCall {
  static Future<ApiCallResponse> call({
    String? dataType = 'tideObsRecent',
    String? serviceKey = 'wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==',
    String? obsCode = 'DT_0001',
    dynamic? resultTypeJson,
  }) {
    final resultType = _serializeJson(resultTypeJson);

    return ApiManager.instance.makeApiCall(
      callName: 'watertime',
      apiUrl: 'http://www.khoa.go.kr/api/oceangrid/tideObsRecent/search.do',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'DataType': dataType,
        'ServiceKey': "wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==",
        'ObsCode': obsCode,
        'ResultType': "JSON",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WatertempCall {
  static Future<ApiCallResponse> call({
    String? dataType = 'tideObsRecent',
    String? serviceKey = 'wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==',
    String? obsCode = 'DT_0001',
    dynamic? resultTypeJson,
  }) {
    final resultType = _serializeJson(resultTypeJson);

    return ApiManager.instance.makeApiCall(
      callName: 'watertemp',
      apiUrl: 'http://www.khoa.go.kr/api/oceangrid/tideObsTemp/search.do',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'DataType': dataType,
        'ServiceKey': "wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==",
        'ObsCode': obsCode,
        'ResultType': "JSON",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WeatherCall {
  static Future<ApiCallResponse> call({
    String? dataType = 'fcIndexOfType',
    String? serviceKey = 'wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==',
    String? obsCode = 'DT_0001',
    dynamic? resultTypeJson,
    String? type = 'SD',
  }) {
    final resultType = _serializeJson(resultTypeJson);

    return ApiManager.instance.makeApiCall(
      callName: 'weather',
      apiUrl: 'http://www.khoa.go.kr/api/oceangrid/fcIndexOfType/search.do',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'DataType': dataType,
        'ServiceKey': "wldhxng34hkddbsgm81lwldhxng34hkddbsgm81l==",
        'ObsCode': obsCode,
        'ResultType': "JSON",
        'Type': "SD",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SunRiseNSetCall {
  static Future<ApiCallResponse> call({
    String? lat = '123',
    String? lng = '123',
    String? date = '2023-04-26',
    String? callback = 'JSONP',
    int? formatted = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SunRiseNSet',
      apiUrl: 'https://api.sunrise-sunset.org/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat ': lat,
        'lng': lng,
        'date': date,
        'callback': callback,
        'formatted': formatted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FishingZoneCall {
  static Future<ApiCallResponse> call({
    int? pageNo = 1,
    int? numOfRows = 100,
    String? type = 'JSON',
    String? encoding =
        'OlPhM9LltZyFUgeB69XuftX%2B6iQAtXRzz1QdUdfFAzyIER3Afx39CxmbjoPLgBWXg%2Fmg%2Fl2qPmtFmQ4fX391rg%3D%3D',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FishingZone',
      apiUrl: 'http://api.data.go.kr/openapi/tn_pubr_public_fshlc_api',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'pageNo': pageNo,
        'numOfRows': numOfRows,
        'type': "JSON",
        'serviceKey':
            "47vVZGnbLNGZm6HBjQ/D6cjM3fxls2ODi+eylUSo78b6ZTr49xdTLLaqFgoHzBu2Na+1JXM8Fh+PwmK+8f8vgA==",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
