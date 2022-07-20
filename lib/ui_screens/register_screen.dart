import 'package:alterwis/common_widgets/common_body.dart';
import 'package:alterwis/common_widgets/data_input_field.dart';
import 'package:alterwis/common_widgets/password_input..dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common_widgets/app_primary_button.dart';
import '../common_widgets/checkbox_widget.dart';
import '../common_widgets/divider_widget.dart';
import '../common_widgets/linkdin_container.dart';
import '../common_widgets/text_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fullName = TextEditingController();
    TextEditingController userName = TextEditingController();
    TextEditingController emailAddress = TextEditingController();
    TextEditingController phoneNumber = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return CommonBody(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 151.h,
              color: const Color(0xffF2F6FA),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading(
                      text: "Register Yourself",
                      type: HeadingType.l,
                      color: Color(0xffFF4242),
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    const Heading(
                      text:
                          "You can register yourself here by simply getting the details below.",
                      type: HeadingType.s,
                    ),
                  ],
                ),
              ),
            ),
            CommonForm(
              formKey: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 14.h,
                  ),
                  DataInputField(
                      validation: (val) {
                        if (val!.isEmpty) {
                          return "Enter Full name";
                        }
                        return null;
                      },
                      hint: "Full Name",
                      textEditingController: fullName),
                  SizedBox(
                    height: 14.h,
                  ),
                  DataInputField(
                      validation: (val) {
                        if (val!.isEmpty) {
                          return "Enter User Name";
                        }
                        return null;
                      },
                      hint: "User Name",
                      textEditingController: userName),
                  SizedBox(
                    height: 14.h,
                  ),
                  DataInputField(
                      validation: (val) {
                        if (val!.isEmpty) {
                          return "please enter data";
                        }
                        return null;
                      },
                      hint: "Email Address",
                      textEditingController: emailAddress),
                  SizedBox(
                    height: 14.h,
                  ),
                  DataInputField(
                      validation: (val) {
                        if (val!.isEmpty) {
                          return "please enter data";
                        }
                        return null;
                      },
                      hint: "Phone number",
                      textEditingController: phoneNumber),
                  SizedBox(
                    height: 14.h,
                  ),
                  PasswordField(passController: passwordController),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      const ReUseCheckBox(),
                      RichText(
                        text: TextSpan(
                            text: "I agree to",
                            style:
                                TextStyle(color: const Color(0xff524B4B)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Terms of Services",
                                style: TextStyle(
                                    color: const Color(0xffFF4242),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              const TextSpan(
                                  text: " & ",
                                  style:
                                      TextStyle(color: Color(0xff524B4B))),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    color: Color(0xffFF4242),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  PrimaryButton(
                      text: "Next",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          ///Temporary for checking purpose
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Processing Data')),
                          );
                        }
                      }),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Heading(
                        text: "Already have an account ? ",
                        type: HeadingType.xs,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "login");
                        },
                        child: const Heading(
                          text: "Login",
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
            )
          ],
        ),
      ),
    );
  }
}
