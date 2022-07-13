import 'package:bringme/common_widgets/data_input_field.dart';
import 'package:bringme/common_widgets/forget_pass_container.dart';
import 'package:bringme/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets/app_primary_button.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController forget = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          const PasswordVerificationContainer(heading: "Forget Password",
              subText: "Enter your email for verification purpose to reset your Password."),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0,),
                DataInputField(
                    hint: "Email Address", textEditingController: forget),
                SizedBox(height: 25.h,),
                PrimaryButton(text: "Send Verification code",onTap: (){
                  Navigator.pushNamed(context, "/verifyCode");
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
