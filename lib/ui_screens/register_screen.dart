import 'package:bringme/common_widgets/data_input_field.dart';
import 'package:bringme/common_widgets/password_input..dart';
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
    TextEditingController password = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 121.h,
            color: const Color(0xffF2F6FA),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Heading(
                    text: "Register Yourself",
                    type: HeadingType.l,
                    color: Color(0xffFF4242),
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Heading(
                    text:
                        "You can register yourself here by simply getting the details below.",
                    type: HeadingType.s,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  DataInputField(
                      hint: "Full Name", textEditingController: fullName),
                  const SizedBox(
                    height: 14,
                  ),
                  DataInputField(
                      hint: "User Name", textEditingController: userName),
                  const SizedBox(
                    height: 14,
                  ),
                  DataInputField(
                      hint: "Email Address",
                      textEditingController: emailAddress),
                  const SizedBox(
                    height: 14,
                  ),
                  DataInputField(
                      hint: "Phone number", textEditingController: phoneNumber),
                  const SizedBox(
                    height: 14,
                  ),
                  const PasswordField(),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      const ReUseCheckBox(),
                      RichText(
                        text: const TextSpan(
                            text: "I agree to",
                            style: TextStyle(color: Color(0xff524B4B)),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Terms of Services",
                                style: TextStyle(
                                    color: Color(0xffFF4242),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                  text: " & ",
                                  style: TextStyle(color: Color(0xff524B4B))),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    color: Color(0xffFF4242),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 11.0,
                  ),
                   PrimaryButton(text: "Next",onTap: (){}),
                  const SizedBox(
                    height: 20.0,
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
            ),
          )
        ],
      ),
    );
  }
}
