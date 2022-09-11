import 'package:angio/utils/widgets/reel_widget.dart';
import 'package:flutter/material.dart';
import 'package:preload_page_view/preload_page_view.dart';

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
          'https://v16-webapp.tiktok.com/3dd0351d4ad0930f4500e1be99e33bbf/631d893c/video/tos/useast2a/tos-useast2a-pve-0068/31c64efb09f34384ba8ca1618ede18d2/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=3290&bt=1645&cs=0&ds=3&ft=gKSYZ8YPo0PD1MmJ_yg9wzGE75LiaQ2D~P8&mime_type=video_mp4&qs=0&rc=aDllZTU2NDo4NzplMzlmZ0BpamZyNjo6ZjY4ZjMzNzczM0AyM2BiLi0vXzAxNV4vXmA0YSNja3NhcjQwM19gLS1kMTZzcw%3D%3D&l=2022091101060401019206101214D6D2CE&btag=80000',
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
          'https://v16-webapp.tiktok.com/17d734962d0414e06bb06399fd18b89b/631d890f/video/tos/useast2a/tos-useast2a-ve-0068c002/a5bc65e990fd497cac3f3ac5d0bb8e9d/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=2506&bt=1253&cs=0&ds=3&ft=eXd.6H.qMyq8ZfDtrhe2NMx3yl7Gb&mime_type=video_mp4&qs=0&rc=MzVoZ2g6NGg0NmU2aTc3NUBpM2l3cmg6ZmdsZDMzNzczM0A0Y2FeMy4tXl8xXl9hLTUwYSMxMWBfcjRvMWdgLS1kMTZzcw%3D%3D&l=202209110106160101920560910DD79604&btag=80000',
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
          'https://v16-webapp.tiktok.com/70a7660b5a344a83eeafa43ef80743f9/631d899e/video/tos/maliva/tos-maliva-ve-0068c799-us/d73a5540fc744b5bb6edc78c739e6c54/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=2970&bt=1485&cs=0&ds=3&ft=eXd.6H.qMyq8ZfDtrhe2NMx3yl7Gb&mime_type=video_mp4&qs=0&rc=OWVmNTdnOGhnOzNoM2c2NUBpM3Nzbzo6ZjlvZjMzZzczNEAwYWAuYDA1NmAxYy5hNmM0YSMyLXJwcjQwamFgLS1kMS9zcw%3D%3D&l=202209110106160101920560910DD79604&btag=80000',
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
          "https://v16-webapp.tiktok.com/a6d37d366aee7bdd1799029b29cba879/631d88ff/video/tos/useast2a/tos-useast2a-ve-0068c004/237f82470575487aa7b45d3f4592ecdd/?a=1988&ch=0&cr=0&dr=0&lr=tiktok_m&cd=0%7C0%7C1%7C0&cv=1&br=2986&bt=1493&cs=0&ds=3&ft=eXd.6H.qMyq8ZfDtrhe2NMx3yl7Gb&mime_type=video_mp4&qs=0&rc=OTQ0MzVnNWY0NzVmNDVlOkBpanJuOjM6ZnFyZjMzNzczM0AzMF80LzYxXzMxNDZhXl40YSNyZWtqcjRnYDZgLS1kMTZzcw%3D%3D&l=202209110106160101920560910DD79604&btag=80000",
      caption:
          "Are round of applause for Racheal and Phyna Please. They literally skinned Dotun and Sheggz alive. 😂",
      likes: 3255,
      comments: 213,
    ),
  ];

  final PreloadPageController pageController = PreloadPageController();
  @override
  Widget build(BuildContext context) {
    return PreloadPageView(
      preloadPagesCount: 10,
      scrollDirection: Axis.vertical,
     
      children: reels
          .map((e) => ReelWidget(
                reel: e,
              ))
          .toList(),
    );
  }
}
