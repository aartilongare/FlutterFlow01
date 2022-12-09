import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start ApiGroup Group Code

class ApiGroupGroup {
  static String baseUrl = 'http://3.75.225.204:4002/api/v1/dashboard';
  static Map<String, String> headers = {};
  static GetAuditSecondStateCall getAuditSecondStateCall =
      GetAuditSecondStateCall();
  static CompanyDetailsCall companyDetailsCall = CompanyDetailsCall();
  static FloorAPICall floorAPICall = FloorAPICall();
  static AreaByCategoryIdCall areaByCategoryIdCall = AreaByCategoryIdCall();
}

class GetAuditSecondStateCall {
  Future<ApiCallResponse> call({
    String? ucIdVariable = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAuditSecondState',
      apiUrl: '${ApiGroupGroup.baseUrl}/audit',
      callType: ApiCallType.GET,
      headers: {
        ...ApiGroupGroup.headers,
      },
      params: {
        'ucId': ucIdVariable,
      },
      returnBody: true,
      cache: false,
    );
  }

  dynamic locationNameFromApiCall(dynamic response) => getJsonField(
        response,
        r'''$.data.rows[:].Location.Name''',
        true,
      );
  dynamic auditCodeFromApiCall(dynamic response) => getJsonField(
        response,
        r'''$.data.rows[:].AuditCode''',
        true,
      );
  dynamic auditTypeFromApiCall(dynamic response) => getJsonField(
        response,
        r'''$.data.rows[:].Type''',
        true,
      );
  dynamic auditIdFromCall(dynamic response) => getJsonField(
        response,
        r'''$.data.rows[:].UserClient.Id''',
        true,
      );
  dynamic comapnyNameFromApiCall(dynamic response) => getJsonField(
        response,
        r'''$.data.rows[:].UserClient.CompanyName''',
        true,
      );
}

class CompanyDetailsCall {
  Future<ApiCallResponse> call({
    String? auditId = '',
    String? clientId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Company Details',
      apiUrl: '${ApiGroupGroup.baseUrl}/Mob/companyDetail',
      callType: ApiCallType.GET,
      headers: {
        ...ApiGroupGroup.headers,
      },
      params: {
        'AuditId': auditId,
        'clientId': clientId,
      },
      returnBody: true,
      cache: false,
    );
  }

  dynamic callfromID(dynamic response) => getJsonField(
        response,
        r'''$.data[:].CategoryId''',
        true,
      );
  dynamic callfromName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].CategoryName''',
        true,
      );
}

class FloorAPICall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'FloorAPI',
      apiUrl: '${ApiGroupGroup.baseUrl}/floor',
      callType: ApiCallType.GET,
      headers: {
        ...ApiGroupGroup.headers,
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  dynamic floorNameApiCall(dynamic response) => getJsonField(
        response,
        r'''$.data.rows[:].FloorName''',
        true,
      );
}

class AreaByCategoryIdCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Area By Category Id',
      apiUrl: '${ApiGroupGroup.baseUrl}/Mob/area',
      callType: ApiCallType.GET,
      headers: {
        ...ApiGroupGroup.headers,
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }
}

/// End ApiGroup Group Code

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${userName}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginApi',
      apiUrl: 'http://3.75.225.204:4002/api/v1/dashboard/Mob',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static dynamic tokenFromCall(dynamic response) => getJsonField(
        response,
        r'''$.data.Token''',
      );
  static dynamic serverCodeFromCall(dynamic response) => getJsonField(
        response,
        r'''$.serverCode''',
      );
}

class AuditGetCall {
  static Future<ApiCallResponse> call({
    String? tokenToSend = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Audit  Get',
      apiUrl: 'http://3.75.225.204:4002/api/v1/dashboard/Mob/audit',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${tokenToSend}',
        'x-access-token': '${tokenToSend}',
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic clientIdfromAPIcall(dynamic response) => getJsonField(
        response,
        r'''$.data[1].NameClient_Id''',
      );
  static dynamic typeIdFromAPIcall(dynamic response) => getJsonField(
        response,
        r'''$.data[0].Id''',
      );
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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
