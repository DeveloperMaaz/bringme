import 'package:bringme/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LinkedinLogin extends StatelessWidget {
  const LinkedinLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327.w,
      height: 48.h,
      color: const Color(0xffF2F6FA),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


        SvgPicture.asset(
          "assets/images/linkedin.svg",
          width: 20.2.w,
          height: 20.2.w,
        ),
        SizedBox(width: 8.w,),
        const Heading(text: "Login with Linkedin", type: HeadingType.s),

      ],),


    );
  }
}
