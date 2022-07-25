import 'package:alterwis/common_widgets/common_body.dart';
import 'package:alterwis/common_widgets/home_drawer_bar_container.dart';
import 'package:alterwis/core/models/dummy_model/dummmy_data.dart';
import 'package:flutter/material.dart';

import '../common_widgets/post_item_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonBody(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeDrawerBarContainer(),
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dummyListData.length,
                itemBuilder: (BuildContext ctx, index) => PostItem(
                    profileImage: dummyListData[index].profileImage,
                    title: dummyListData[index].title,
                    time: dummyListData[index].time,
                    degreeName: dummyListData[index].degreeName,
                    city: dummyListData[index].city,
                    descriptionText: dummyListData[index].descriptionText,
                    postImages: dummyListData[index].postImages,
                    likeImages: dummyListData[index].likeImages,
                    likes: dummyListData[index].likes,
                    comments: dummyListData[index].comments,
                    share: dummyListData[index].share),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
