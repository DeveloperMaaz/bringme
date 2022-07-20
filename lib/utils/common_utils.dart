import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';
import '../core/controllers/auth_controller.dart';
import '../core/models/api_models/auth/api_message_model.dart';

class CommonUtils {
  static bool isAlreadyShowing = false;

  static showLoader() {
    if (!isAlreadyShowing) {
      isAlreadyShowing = true;
      Get.generalDialog(
        pageBuilder: (context, animation, secondaryAnimation) {
          return WillPopScope(
            onWillPop: () async => false,
            child: const SpinKitCubeGrid(color: Colors.white),
          );
        },
      );
    }
  }

  static closeLoader() {
    if (isAlreadyShowing) {
      isAlreadyShowing = false;
      Get.back(canPop: true);
    }
  }

  static void showToastMessage(List<ApiMessage> message) {
    for (var element in message) {
      if (element.message!.isNotEmpty) {
        Fluttertoast.showToast(
          msg: element.message!,
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: element.type == 1
              ? element.type == 3
                  ? AppColors.orangeColor
                  : AppColors.greenColor
              : AppColors.redColor,
        );
      }
    }
  }

  static void showMessage(String message, int type) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: type == 1
          ? AppColors.greenColor
          : type == 3
              ? AppColors.orangeColor
              : AppColors.redColor,
    );
  }



  static void putRequiredControllers() {

    Get.put(AuthController());
  }

}
