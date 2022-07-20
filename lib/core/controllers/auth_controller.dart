import 'package:alterwis/core/models/api_models/auth/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    var userNameFocusNode = FocusNode();

  var userModel = UserModel.fromDefault();
}
