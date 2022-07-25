import 'package:alterwis/common_widgets/like_comment_container.dart';
import 'package:alterwis/common_widgets/post_heading_data.dart';
import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostItem extends StatelessWidget {
  final String profileImage;
  final String title;
  final String time;
  final String degreeName;
  final String city;
  final String descriptionText;
  final List<String> postImages;
  final List<String> likeImages;
  final String likes;
  final String comments;
  final String share;

  const PostItem(
      {Key? key,
      required this.profileImage,
      required this.title,
      required this.time,
      required this.degreeName,
      required this.city,
      required this.descriptionText,
      required this.postImages,
      required this.likeImages,
      required this.likes,
      required this.comments,
      required this.share})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeadingData(
          profileImage: profileImage,
          tittle: title,
          subtitleEducation: degreeName,
          subtitleCity: city,
          time: time,
        ),
        const SizedBox(
          height: 12.0,
        ),
        Heading(text: descriptionText, type: HeadingType.s),
        const SizedBox(
          height: 4.0,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 110,
            
            child: Expanded(
              child: ListView.builder(
                //shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: postImages.length,
                itemBuilder: (BuildContext ctx, index) => Image(
                  height: 100.h,
                  width: 100.w,
                  image: AssetImage(
                    postImages[index],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: likeImages.length,
                    itemBuilder: (BuildContext ctx, index) => Image(
                      width: 18.w,
                      height: 18.h,
                      image: AssetImage(likeImages[index]),
                    ),
                  ),
                ),
                Heading(text: likes, type: HeadingType.xs),
              ],
            ),
            Row(
              children: [
                Heading(text: comments, type: HeadingType.xs),
                Padding(
                  padding: EdgeInsets.only(left: 2.w, right: 2.w, bottom: 8.h),
                  child: const Text("."),
                ),
                Heading(text: share, type: HeadingType.xs),
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
          child: Divider(
            thickness: 1,
          ),
        ),
        const LikeCommentContainer(),
      ],
    );
  }
}
