import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PasswordField extends StatefulWidget {

  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
   bool valueBool=true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: Stack(children: [
        TextFormField(
           obscuringCharacter: "*",
          obscureText: valueBool,
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
              borderSide: BorderSide(color: Color(0xff082F69), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
              borderSide: BorderSide(color: Colors.blue, width: 1),
            ),
            //  contentPadding: const EdgeInsets.only(left: 10, right: 10),
            fillColor: Colors.transparent,
            // label: Text("data"),
            hintText: "Password",
          ),
        ),
         Padding(
           padding:  EdgeInsets.only(right: 14.w),
           child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  setState(() {
                    valueBool=!valueBool;

                  });
                },
                child:  const Text("Show",style: TextStyle(color: Colors.black),),)

        ),
         ),
      ],)
    );
  }
}
