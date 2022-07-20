import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:alterwis/constants/api_url_paths.dart';
import 'package:alterwis/utils/common_utils.dart';
import 'package:alterwis/utils/shared_preference_manager.dart';
import 'package:http/http.dart' as http;
import '../models/api_models/auth/user_model.dart';
import '../models/api_models/common_response.dart';

class RestApiService {
  RestApiService._privateConstructor();

  static final RestApiService _instance = RestApiService._privateConstructor();

  static RestApiService get instance => _instance;

  Future<CommonResponse> login(UserModel object) async {
    Map<String, dynamic> queryParameters = {};
    CommonResponse response = await _baseApiPostMethod(
        getUriBASEURL(URI_LOGIN, queryParameters), object.toJson());
    return response;
  }

  //region Base Api Functions

  Future<CommonResponse> _baseApiGetMethod(Uri uri) async {
    try {
      CommonUtils.showLoader();
      var response;
      if (PreferenceManager.instance.getTokenSession()==null ) {
        response = await http.get(
          uri,
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            "Authorization": "Bearer ${PreferenceManager.instance.getToken()}",
          },
        );
      } else {
        response = await http.get(
          uri,
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          },
        );
      }
      CommonUtils.closeLoader();
      return _getFromResponse(response);
    } catch (e) {
      print(e);
      CommonUtils.closeLoader();
      return _getGenericException(e);
    }
  }

  Future<CommonResponse> _baseApiPostMethod(
      Uri uri, Map<String, dynamic> object) async {
    object.removeWhere((key, value) => value == null);
    print('Post Params ${jsonEncode(object)}');
    print('Uri ${uri}');

    try {
      CommonUtils.showLoader();
      var response;
      if (PreferenceManager.instance.getTokenSession()==null ) {
        response = await http.post(uri,
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
            },
            body: jsonEncode(object));
      } else {
        response = await http.post(uri,
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
              "Authorization": "Bearer ${PreferenceManager.instance.getToken()}",
            },
            body: jsonEncode(object));
      }
      CommonUtils.closeLoader();
      return _getFromResponse(response);
    } catch (e) {
      print(e);
      CommonUtils.closeLoader();
      return _getGenericException(e);
    }
  }

  CommonResponse _getFromResponse(http.Response response) {
    print('Reponse from Uri =  ${response.request}\n${response.body}');
    log('Token =  ${PreferenceManager.instance.getToken()}');
    CommonResponse dataResponse = CommonResponse();
    if (response.statusCode == 401) {
      CommonUtils.showMessage(
          "Your session has been expired. Please login again.", 4);
      return _getDefualtResponse();
    } else {
      try {
        dataResponse = CommonResponse.fromJson(jsonDecode(response.body));
        print(dataResponse);
        return dataResponse;
      } catch (e) {
        print(e);
        return _getGenericException(e);
      }
    }
  }

  CommonResponse _getGenericException(Object e) {
    CommonResponse dataResponse = CommonResponse();
    dataResponse.hasErrors = true;
    dataResponse.isValid = false;
    dataResponse.messages = [];
    return dataResponse;
  }

  CommonResponse _getDefualtResponse() {
    CommonResponse dataResponse = CommonResponse();
    dataResponse.hasErrors = true;
    dataResponse.isValid = false;
    dataResponse.messages = [];
    return dataResponse;
  }

  getUriBASEURL(String path, Map<String, dynamic> queryParameters) {
    return Uri.https(BASE_URL, path, queryParameters);
  }

//endregion

}
