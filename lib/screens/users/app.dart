import 'package:angio/utils/widgets/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/octicon.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'chat_list.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: const ChatListScreen(),
      footer: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _NavIcon(
                Ph.chat_circle_dots,
                selected: true,
              ),
              _NavIcon(Ic.twotone_timeline),
              _NavIcon(Fluent.call_32_regular),
              _NavIcon(Octicon.settings_24),
            ]),
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
    return selected
        ? Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff1f56cb),
              shape: BoxShape.circle,
            ),
            child: Iconify(
              icon,
              color: const Color.fromARGB(255, 225, 238, 244),
              size: 30,
            ),
          )
        : Iconify(
            icon,
            color: const Color.fromARGB(255, 225, 238, 244),
            size: 30,
          );
  }
}
