import 'package:bringme/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ReUseDivider extends StatelessWidget {
  const ReUseDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Divider(
            color: Color(0xff999898),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Heading(text: " OR ", type: HeadingType.s,),
        ),
        Expanded(
          child: Divider(
            color: Color(0xff999898),
          ),
        ),
      ],
    );
  }
}
