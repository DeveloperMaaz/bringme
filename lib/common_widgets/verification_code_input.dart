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
      height: 64.h,
      child: TextFormField(
        keyboardType: TextInputType.number,
        // obscuringCharacter: "*",
        obscureText: false,
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(color:Color(0xffced4da), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(color:  Color(0xff082F69), width: 1),
          ),
          //  contentPadding: const EdgeInsets.only(left: 10, right: 10),
          fillColor: Colors.transparent,
          // label: Text("data"),
        ),
      ),
    );
  }
}
