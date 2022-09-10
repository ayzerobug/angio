import 'package:angio/utils/widgets/reel_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/models/reel.dart';
import '../../utils/models/user.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key, this.following = false}) : super(key: key);
  final bool following;

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  List<Reel> reels = [
    Reel(
      author: User(
        username: "ayzerobug",
        name: "Ayomide Micheal",
        avatarUrl: "https://avatars.githubauthorcontent.com/u/68833108?v=4",
        isVerified: true,
      ),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      caption:
          "Are round of applause for Racheal and Phyna Please. They literally skinned Dotun and Sheggz alive. 😂",
      likes: 3255,
      comments: 213,
    ),
    Reel(
      author: User(
        username: "ayzerobug",
        name: "Ayomide Micheal",
        avatarUrl: "https://avatars.githubauthorcontent.com/u/68833108?v=4",
        isVerified: true,
      ),
      videoUrl:
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      caption:
          "Are round of applause for Racheal and Phyna Please. They literally skinned Dotun and Sheggz alive. 😂",
      likes: 3255,
      comments: 213,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: reels
          .map((e) => ReelWidget(
                reel: e,
              ))
          .toList(),
    );
  }
}
