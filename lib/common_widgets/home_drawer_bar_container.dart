import 'package:alterwis/common_widgets/search_field.dart';
import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:alterwis/constants/app_colors.dart';

class HomeDrawerBarContainer extends StatelessWidget {
  const HomeDrawerBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                width: 38.w,
                height: 38.h,
                "assets/images/drawer.png",
              ),
            ),
            title: const Heading(
              text: "Welcome Back",
              type: HeadingType.s,
              color: AppColors.redColor,
            ),
            subtitle: const Heading(
              text: "Malian Jock",
              type: HeadingType.l,
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                )),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const SearchContainer(),
        ],
      ),
    );
  }
}
