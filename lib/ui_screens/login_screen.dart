import 'package:alterwis/common_widgets/app_primary_button.dart';
import 'package:alterwis/common_widgets/data_input_field.dart';
import 'package:alterwis/common_widgets/divider_widget.dart';
import 'package:alterwis/common_widgets/linkdin_container.dart';
import 'package:alterwis/common_widgets/logo_widget.dart';
import 'package:alterwis/common_widgets/password_input..dart';
import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets/checkbox_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100.0,
              ),
              const LogoImage(),
              const SizedBox(
                height: 60.0,
              ),
              const Heading(
                text: "Welcome Back",
                type: HeadingType.l,
                color: Color(0xffFF4242),
                weight: FontWeight.bold,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Heading(
                text:
                    "We’re happy to see you again. You can continue to login for get easy access to your account.",
                type: HeadingType.s,
              ),
              const SizedBox(height: 30),
              DataInputField(
                  hint: "User Name", textEditingController: userController),
              const SizedBox(height: 20),
              const PasswordField(),
              const SizedBox(height: 7.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      ReUseCheckBox(),
                      Heading(text: "Remember me", type: HeadingType.s),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/forgetScreen");
                    },
                    child: const Heading(
                      text: "ForgetPassword",
                      type: HeadingType.s,
                      color: Color(0xff082F69),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
               PrimaryButton(text: "Login",onTap: (){}),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Heading(
                    text: "Dont\'t have an account ? ",
                    type: HeadingType.xs,
                    color: Colors.black54,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/Register");
                    },
                    child: const Heading(
                      text: "Register",
                      type: HeadingType.s,
                      color: Color(0xffFF4242),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const ReUseDivider(),
              SizedBox(
                height: 20.h,
              ),
              const LinkedinLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
