import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReUseDivider extends StatelessWidget {
  const ReUseDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Expanded(
          child: Divider(
            color: Color(0xff999898),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: const Heading(text: " OR ", type: HeadingType.s,),
        ),
        const Expanded(
          child: Divider(
            color: Color(0xff999898),
          ),
        ),
      ],
    );
  }
}
