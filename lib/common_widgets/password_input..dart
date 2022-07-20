import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordField extends StatefulWidget {
  final String hintPassword;
  final TextEditingController passController;
  final FormFieldValidator<String>? validation;

  const PasswordField(
      {required this.passController,
      this.hintPassword = "Password",
      this.validation,
      Key? key})
      : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool valueBool = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 327.w,
        //height: 56.h,
        child: Stack(
          children: [
            TextFormField(
              controller: widget.passController,
              obscuringCharacter: "*",
              obscureText: valueBool,
              validator: widget.validation,

              decoration: InputDecoration(

                contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),

                errorBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.r),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: 1.w),
                ),
                enabledBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.r),
                  ),
                  borderSide: BorderSide(color: const Color(0xffced4da), width: 1.w),
                ),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.r),
                  ),
                  borderSide: BorderSide(color: const Color(0xff082F69), width: 1.r),
                ),
                //  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                fillColor: Colors.transparent,
                // label: Text("data"),
                labelText: widget.hintPassword,
               // contentPadding: const EdgeInsets.only(top: 10.0, left: 10.0),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(right: 14.w,top: 15.h),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        valueBool = !valueBool;
                      });
                    },
                    child:  Text(
                      valueBool?"Show":"Hide",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
          ],
        ));
  }
}
