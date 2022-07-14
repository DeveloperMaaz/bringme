import 'package:alterwis/common_widgets/verification_code_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets/app_primary_button.dart';
import '../common_widgets/forget_pass_container.dart';
import '../common_widgets/text_widget.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const PasswordVerificationContainer(
                heading: "Verify Code",
                subText:
                    "We have send you your verification on your email. Please type verification code here."),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      VerificationInputField(controller: controller),
                      VerificationInputField(controller: controller),
                      VerificationInputField(controller: controller),
                      VerificationInputField(controller: controller),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  PrimaryButton(
                    text: "Verify Code",
                    onTap: () {
                      Navigator.pushNamed(context, "/createPassword");
                    },
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Heading(
                        text: "Haven'\t received code ? ",
                        type: HeadingType.xs,
                      ),
                      GestureDetector(
                        child: const Heading(
                          text: "Recent Code",
                          weight: FontWeight.bold,
                          type: HeadingType.s,
                          color: Color(0xffFF4242),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
