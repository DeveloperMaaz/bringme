import 'dart:convert';

import 'package:alterwis/core/models/api_models/auth/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/prefKeys.dart';
import '../core/models/api_models/common_response.dart';

class PreferenceManager {
  late SharedPreferences _preferences;

  PreferenceManager._privateConstructor();

  static final PreferenceManager instance =
      PreferenceManager._privateConstructor();

  init() async {
    debugPrint('Shared prefs Initialized');
    _preferences = await SharedPreferences.getInstance();
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    await _preferences.setBool(key, value);
  }

  bool getBool(String key) {
    return _preferences.getBool(key) ?? false;
  }

  String? getString(String key) {
    return _preferences.getString(key);
  }

  Future<void> remove(String key) async {
    await _preferences.remove(key);
  }

  //////////Custom methods/////////////

  Future<void> setLocalAuth(bool value) async {
    await setBool("LocalAuth", value);
  }

  Future<void> setIsLogin(bool value) async {
    await setBool("IsLogin", value);
  }

  bool getIsLogin() {
    return _preferences.getBool("IsLogin") ?? false;
  }

  bool getIsAuthEnabled() {
    return _preferences.getBool("LocalAuth") ?? false;
  }

  Future<void> setVerifiedAtLeastOnce(bool value) async {
    await setBool("VerifiedAtLeastOnce", value);
  }

  bool getVerifiedAtLeastOnce() {
    return _preferences.getBool("VerifiedAtLeastOnce") ?? false;
  }

  Future<void> saveTokenSession(CommonResponse? response) async {
    if (response == null) {
      await setString(PrefKeys.tokenModel, "");
    } else {
      UserModel tokenModel = UserModel.fromJson(response.data!);
      await setString(PrefKeys.tokenModel, json.encode(tokenModel));
    }
  }

  UserModel? getTokenSession() {
    UserModel? tokenModel;
    String? tokenModelString = getString(PrefKeys.tokenModel);
    if (tokenModelString != null && tokenModelString.isNotEmpty) {
      tokenModel = UserModel.fromJson(jsonDecode(tokenModelString));
    }
    return tokenModel;
  }

  String getToken() {
    return getTokenSession()!.token!;
  }
}
