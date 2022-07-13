import 'package:bringme/ui_screens/create_new_password_screen.dart';
import 'package:bringme/ui_screens/forget_password_screen.dart';
import 'package:bringme/ui_screens/login_screen.dart';
import 'package:bringme/ui_screens/register_screen.dart';
import 'package:bringme/ui_screens/splash_screen.dart';
import 'package:bringme/ui_screens/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": ((context) => const SplashScreen()),
          "login": ((context) => const LoginScreen()),
          "/Register": ((context) => const RegisterScreen()),
          "/forgetScreen": ((context) => const ForgetScreen()),
          "/verifyCode": ((context) => const VerificationCodeScreen()),
          "/createPassword": ((context) => const CreateNewPassword()),
        },
      ),
    );
  }
}
