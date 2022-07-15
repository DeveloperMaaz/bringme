import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataInputField extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final FormFieldValidator<String>? validation;

  const DataInputField(
      {required this.hint, required this.textEditingController,this.validation, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
     // height: 56.h,
      child: TextFormField(
        validator: validation,
       // obscuringCharacter: "*",
        obscureText: false,
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding:EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          errorBorder:const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ) ,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(color: Color(0xffced4da), width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6.0),
            ),
            borderSide: BorderSide(color: Colors.blue, width: 1),
          ),
          //  contentPadding: const EdgeInsets.only(left: 10, right: 10),
          fillColor: Colors.transparent,
          // label: Text("data"),
          hintText: hint,
        ),
      ),
    );
  }
}
