import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class PostHeadingData extends StatelessWidget {
  String profileImage;
  String tittle;
  String time;
  String subtitleEducation;
  String subtitleCity;

  PostHeadingData(
      {required this.profileImage,
      required this.tittle,
      required this.subtitleEducation,
      required this.subtitleCity,
      required this.time,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        width: 40.0,
        height: 40.0,
        image: AssetImage(profileImage),
      ),
      title: Heading(
        text: tittle,
        type: HeadingType.l,
      ),
      trailing: Heading(
        text: time,
        type: HeadingType.s,
        color: AppColors.hintColor,
      ),
      subtitle: Row(
        children: [
          Heading(
            text: subtitleEducation,
            type: HeadingType.s,
            color: AppColors.borderColorDark,
          ),
          const Text(
            "|",
            style: TextStyle(color: AppColors.hintColor),
          ),
          Heading(
            text: subtitleCity,
            type: HeadingType.xs,
            color: AppColors.hintColor,
          )
        ],
      ),
    );
  }
}
