import 'package:alterwis/common_widgets/text_widget.dart';
import 'package:alterwis/constants/app_colors.dart';
import 'package:alterwis/constants/measures.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.transparent,
        borderRadius:const  BorderRadius.all( Radius.circular(Measures.textFieldBorderRadius,),),
        border: Border.all(color: AppColors.borderColorDark),
      ),
      height: 44.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Heading(
              text: "Search",
              type: HeadingType.s,
              color: AppColors.hintColor,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColors.hintColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
