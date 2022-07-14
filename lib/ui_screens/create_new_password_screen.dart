import 'package:alterwis/common_widgets/password_input..dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets/app_primary_button.dart';
import '../common_widgets/data_input_field.dart';
import '../common_widgets/forget_pass_container.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController newPassController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const PasswordVerificationContainer(
                heading: " Create New Password",
                subText: "Your new password must be different Thank you! "),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(passController: newPassController,hintPassword: "Create new Password"),
                  const SizedBox(
                    height: 18.0,
                  ),
                  PasswordField(passController: confirmPasswordController,hintPassword: "Confirm Password"),

                  SizedBox(
                    height: 25.h,
                  ),
                  PrimaryButton(text: "Send Verification code", onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
