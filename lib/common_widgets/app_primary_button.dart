import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Color color;
  VoidCallback onTap;

  PrimaryButton(
      {required this.text,
      this.color = const Color(0xffFF4242),
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 327.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Heading(
          text: text,
          type: HeadingType.s,
          weight: FontWeight.normal,
          color: const Color(0xffFFFFFF),
        )),
      ),
    );
  }
}
