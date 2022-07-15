import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordVerificationContainer extends StatelessWidget {
  final String heading;
  final String subText;

  const PasswordVerificationContainer(
      {required this.heading, required this.subText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190.h,
      color: const Color(0xffF2F6FA),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Heading(
                type: HeadingType.l,
                text: "< Back",
                weight: FontWeight.bold,
                color: Color(0xff082F69),
              ),
            ),
            SizedBox(height: 20.h),
            Heading(
              text: heading,
              type: HeadingType.l,
              color: const Color(0xffFF4242),
              weight: FontWeight.bold,
            ),
            SizedBox(
              height: 10.h,
            ),
            Heading(text: subText, type: HeadingType.s),
          ],
        ),
      ),
    );
  }
}
