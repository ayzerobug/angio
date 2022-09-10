import 'dart:math';

import 'package:angio/utils/widgets/app_divider.dart';
import 'package:flutter/material.dart';

import '../../utils/Models/Feed.dart';
import '../../utils/Models/User.dart';
import '../../utils/colors.dart';
import '../../utils/widgets/feed_view.dart';
import '../../utils/widgets/stories_preview.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final Random random = Random();
  List<Feed> feeds = [
    Feed(
      user: User(
          username: "ivan",
          name: "Ivan Brennan",
          avatarUrl:
              "https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
      caption:
          "Seriously, can someone tell @pinsky to stop talking about Comic Sans, it's getting annoyting...",
      likes: 9230,
      comments: 90,
      createdAt: 1662799599,
    ),
    Feed(
      user: User(
          username: "ayzerobug",
          name: "Ayomide Micheal",
          avatarUrl: "https://avatars.githubusercontent.com/u/68833108?v=4",
          isVerified: true),
      caption: "Oh deer, look what i spotted today",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/4/45/Eopsaltria_australis_-_Mogo_Campground.jpg",
      likes: 49,
      comments: 11,
      createdAt: 1662799400,
    ),
    Feed(
      user: User(
        username: "pinsky",
        name: "Pinsky.eth",
        avatarUrl:
            "https://starconnectmedia.com/wp-content/uploads/2022/08/Daniella.jpg",
        isVerified: true,
      ),
      caption:
          "Are round of applause for Racheal and Phyna Please. They literally skinned Dotun and Sheggz alive. 😂",
      imageUrl:
          "https://epasswords.com.ng/wp-content/uploads/2022/09/image_editor_output_image-1802463401-1662623100612.jpg",
      likes: 49,
      comments: 11,
      createdAt: 1662799400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const _FeedScreenHeader(),
      StoriesPreviewsRow(),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          child: ListView.separated(
            itemCount: feeds.length,
            itemBuilder: ((context, index) => FeedView(
                  feed: feeds[index],
                )),
            separatorBuilder: ((context, index) => AppDivider()),
          ),
        ),
      )
    ]);
  }
}

class _FeedScreenHeader extends StatelessWidget {
  const _FeedScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Feeds",
          style: TextStyle(
            fontSize: 26,
            color: scaffoldBackgroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(Icons.more_horiz_outlined)
      ],
    );
  }
}
