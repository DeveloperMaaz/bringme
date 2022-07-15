import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum HeadingType {
  xxl,
  xl,
  l,
  n,
  s,
  xs,
}

class Heading extends StatelessWidget {
  final String text;
  final HeadingType type;
  final int? maxLines;
  final Color color;
  final FontWeight weight;

  const Heading(
      {Key? key,
      required this.text,
      required this.type,
      this.maxLines,
      this.color = const Color(0xff524B4B),
      this.weight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: type == HeadingType.xs
          ? TextStyle(fontSize: 12.sp, color: color, fontWeight: weight)
          : type == HeadingType.s
              ? TextStyle(fontSize: 14.sp, color: color, fontWeight: weight)
              : type == HeadingType.n
                  ? TextStyle(fontSize: 17.sp, color: color, fontWeight: weight)
                  : type == HeadingType.l
                      ? TextStyle(
                          fontSize: 20.sp, color: color, fontWeight: weight)
                      : type == HeadingType.xl
                          ? TextStyle(
                              fontSize: 24.sp, color: color, fontWeight: weight)
                          : type == HeadingType.xxl
                              ? TextStyle(
                                  fontSize: 28.sp,
                                  color: color,
                                  fontWeight: weight)
                              //fontWeight: FontWeight.bold)
                              : TextStyle(
                                  fontSize: 30.sp,
                                  color: color,
                                  fontWeight: weight),
    );
  }
}
