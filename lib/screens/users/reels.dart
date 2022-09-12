import 'package:angio/utils/widgets/reel_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:preload_page_view/preload_page_view.dart';

import '../../utils/models/reel.dart';
import '../../utils/models/user.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({Key? key}) : super(key: key);

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
          'https://github.com/ayzerobug/angio/blob/master/assets/videos/1.mp4?raw=true',
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
          'https://github.com/ayzerobug/angio/blob/master/assets/videos/2.mp4?raw=true',
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
          'https://github.com/ayzerobug/angio/blob/master/assets/videos/3.mp4?raw=true',
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
          'https://github.com/ayzerobug/angio/blob/master/assets/videos/4.mp4?raw=true',
      caption:
          "Are round of applause for Racheal and Phyna Please. They literally skinned Dotun and Sheggz alive. 😂",
      likes: 3255,
      comments: 213,
    ),
  ];

  final PreloadPageController pageController = PreloadPageController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          TabBarView(children: [
            PreloadPageView(
              preloadPagesCount: 10,
              scrollDirection: Axis.vertical,
              children: reels
                  .map((e) => ReelWidget(
                        reel: e,
                      ))
                  .toList(),
            ),
            PreloadPageView(
              preloadPagesCount: 10,
              scrollDirection: Axis.vertical,
              children: reels
                  .map((e) => ReelWidget(
                        reel: e,
                      ))
                  .toList(),
            ),
          ]),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  IntrinsicWidth(
                    child: TabBar(
                      tabs: <Tab>[
                        Tab(text: 'Following'),
                        Tab(text: 'Explore'),
                      ],
                    ),
                  ),
                  Iconify(
                    Ri.search_line,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
