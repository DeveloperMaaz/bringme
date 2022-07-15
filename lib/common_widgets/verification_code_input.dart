import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationInputField extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  VerificationInputField({required this.controller, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      // height: 64.h,
      child: TextFormField(
        keyboardType: TextInputType.number,
        obscureText: false,
        controller: controller,
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 23.w,vertical: 20.h),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.r),
            ),
            borderSide: BorderSide(color:const Color(0xffced4da), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.r),
            ),
            borderSide: BorderSide(color:  const Color(0xff082F69), width: 1.r),
          ),
          //  contentPadding: const EdgeInsets.only(left: 10, right: 10),
          fillColor: Colors.transparent,
          // label: Text("data"),
        ),
      ),
    );
  }
}
