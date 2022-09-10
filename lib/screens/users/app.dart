import 'package:angio/screens/users/feeds.dart';
import 'package:angio/screens/users/reels.dart';
import 'package:angio/utils/Models/app_screns.dart';
import 'package:angio/utils/widgets/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/octicon.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'chat_list.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<AppScreen> bodyWidgets = [
    AppScreen(
      body: const ChatListScreen(),
      bodyPadding: const EdgeInsets.fromLTRB(20, 20, 20, 3),
    ),
    AppScreen(
      body: const FeedScreen(),
      bodyPadding: const EdgeInsets.fromLTRB(10, 20, 10, 3),
    ),
    AppScreen(
        body: const TabBarView(children: [
          ReelsScreen(following: true),
          ReelsScreen(),
        ]),
        tabLength: 2,
        bodyPadding: EdgeInsets.zero,
        header: const Padding(
          padding: EdgeInsets.all(10),
          child: TabBar(
            tabs: <Tab>[
              Tab(text: 'Following'),
              Tab(text: 'Explore'),
            ],
          ),
        )),
  ];
  List<String> navIcons = const [
    Ph.chat_circle_dots,
    Ic.twotone_timeline,
    Fluent.chat_video_20_regular,
    Octicon.settings_24,
  ];
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: bodyWidgets[selectedIndex].tabLength,
      child: AppLayout(
        header: bodyWidgets[selectedIndex].header,
        body: bodyWidgets[selectedIndex].body,
        footer: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: navIcons
                .map(
                  (e) => InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = navIcons.indexOf(e);
                      });
                    },
                    child: _NavIcon(
                      e,
                      selected: selectedIndex == navIcons.indexOf(e),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        bodyPadding: bodyWidgets[selectedIndex].bodyPadding,
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  const _NavIcon(this.icon, {Key? key, this.selected = false})
      : super(key: key);
  final String icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: selected ? const EdgeInsets.all(10) : EdgeInsets.zero,
      decoration: BoxDecoration(
        color: selected ? const Color(0xff1f56cb) : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Iconify(
        icon,
        color: const Color.fromARGB(255, 225, 238, 244),
        size: 30,
      ),
    );
  }
}
