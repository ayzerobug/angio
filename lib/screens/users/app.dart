import 'package:angio/utils/colors.dart';
import 'package:angio/utils/widgets/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';

import '../../utils/widgets/chat_view_tile.dart';
import '../../utils/widgets/search_text_field.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return AppLayout(
      body: Column(
        children: [
          const _ChatScreenHeader(),
          const SizedBox(
            height: 15,
          ),
          const SearchTextField(),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Iconify(
                Fluent.pin_32_filled,
                color: Color(0xff858c9a),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Pinned Chats",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff858c9a),
                ),
              ),
            ],
          ),
          const ChatViewTile(
            imageUrl:
                "https://xsgames.co/randomusers/assets/avatars/male/46.jpg",
            displayName: "Odama",
            time: "9:32 AM",
            message: "Sit officia magna cillum ea.",
          ),
          const ChatViewTile(
            imageUrl: "https://randomuser.me/api/portraits/women/85.jpg",
            displayName: "Anette Black",
            time: "9:32 AM",
            isOnline: true,
            unreadCount: 2,
            isTyping: true,
            typingCaption: "Suneo is typing ...",
          ),
          const ChatViewTile(
            imageUrl: "https://avatars.githubusercontent.com/u/68833108?v=4",
            displayName: "Ayomide Micheal",
            time: "9:32 AM",
            isOnline: true,
            message:
                "Consectetur consectetur in voluptate irure aute deserunt cillum.",
            unreadCount: 2,
          ),
          const ChatViewTile(
            displayName: "Ayomide Micheal",
            time: "9:32 AM",
            isOnline: true,
            isAudioMessage: true,
            unreadCount: 2,
            avatarColor: null,
            avatarGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 252, 168, 143),
                Color.fromARGB(255, 254, 136, 100),
                Color.fromARGB(255, 255, 87, 34),
                Color.fromARGB(255, 255, 74, 19),
              ],
              stops: [0.1, 0.3, 0.9, 1.0],
            ),
          ),
        ],
      ),
      footer: Container(),
    );
  }
}

class _ChatScreenHeader extends StatelessWidget {
  const _ChatScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Chats",
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
