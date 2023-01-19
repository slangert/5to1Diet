import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Spoonacular Group Code

class SpoonacularGroup {
  static String baseUrl = 'https://api.spoonacular.com/recipes';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'x-rapidapi-key': 'c5840598688743b18a0c7a16bb4f0643',
  };
  static InformationCall informationCall = InformationCall();
}

class InformationCall {
  Future<ApiCallResponse> call({
    int? recipeID = 716429,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Information',
      apiUrl:
          '${SpoonacularGroup.baseUrl}/${recipeID}/information?apiKey=c5840598688743b18a0c7a16bb4f0643&includeNutrition=true',
      callType: ApiCallType.GET,
      headers: {
        ...SpoonacularGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Spoonacular Group Code

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
