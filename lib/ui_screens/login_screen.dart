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
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  const LogoImage(),
                  SizedBox(
                    height: 60.h,
                  ),
                  const Heading(
                    text: "Welcome Back",
                    type: HeadingType.l,
                    color: Color(0xffFF4242),
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Heading(
                    text:
                        "We’re happy to see you again. You can continue to login for get easy access to your account.",
                    type: HeadingType.s,
                  ),
                  SizedBox(height: 30.h),
                  DataInputField(
                      validation: (val) {
                        if (val!.isEmpty) {
                          return "Enter data";
                        }
                        return null;
                      },
                      hint: "User Name",
                      textEditingController: userController),
                  SizedBox(height: 20.h),
                  PasswordField(
                      passController: passwordController,
                      validation: (value) {
                        if (value!.isEmpty) {
                          return "Enter Password";
                        }
                        if (value.length <= 5) {
                          return "Length must be greater than 5";
                        }
                      }),
                  SizedBox(height: 7.h),
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
                  SizedBox(
                    height: 20.h,
                  ),
                  PrimaryButton(
                      text: "Login",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      }),
                  SizedBox(
                    height: 15.h,
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
        ),
      ),
    );
  }
}
