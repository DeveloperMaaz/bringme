import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeConfig {
  SizeConfig._privateConstructor();

  static final SizeConfig _instance = SizeConfig._privateConstructor();

  static SizeConfig get instance => _instance;


  screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

}