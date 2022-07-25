import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LikeCommentContainer extends StatelessWidget {
  const LikeCommentContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image(
                  width: 17.5.w,
                  height: 15.91.h,
                  image: const AssetImage("assets/images/like.png"),
                ),
                SizedBox(
                  width: 8.w,
                ),
                const Heading(text: "Liked", type: HeadingType.s),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image(
                  width: 17.5.w,
                  height: 15.91.h,
                  image: const AssetImage("assets/images/comment.png"),
                ),
                SizedBox(
                  width: 8.w,
                ),
                const Heading(text: "Comments", type: HeadingType.s),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Row(
              children: [
                Image(
                  width: 17.5.w,
                  height: 15.91.h,
                  image: const AssetImage("assets/images/share.png"),
                ),
                SizedBox(
                  width: 8.w,
                ),
                const Heading(text: "Share", type: HeadingType.s),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
