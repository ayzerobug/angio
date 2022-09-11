import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/tabler.dart';

import '../../utils/colors.dart';
import '../../utils/widgets/app_divider.dart';
import '../../utils/widgets/chat_view_tile.dart';
import '../../utils/widgets/search_text_field.dart';

class UserChatsList extends StatelessWidget {
  const UserChatsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            Iconify(
              Tabler.message_circle_2,
              color: Color(0xff858c9a),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff858c9a),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const ChatViewTile(
          imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/74.jpg",
          displayName: "Floyd Miles",
          time: "9:32 AM",
          isOnline: true,
          unreadCount: 1,
          isAudioMessage: true,
        ),
        const AppDivider(),
        const ChatViewTile(
          imageUrl: "https://avatars.githubusercontent.com/u/68833108?v=4",
          displayName: "Ayomide Micheal",
          time: "9:32 AM",
          message: "Looks Great Bro ... 🔥",
          unreadCount: 2,
        ),
        const AppDivider(),
        const ChatViewTile(
          displayName: "Jane Cooper",
          time: "9:32 AM",
          isOnline: true,
          isAudioMessage: true,
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
        const AppDivider(),
        const ChatViewTile(
          imageUrl: "http://api.randomuser.me/portraits/men/32.jpg",
          displayName: "Brooklyn Simmons",
          time: "9:32 AM",
          message: "Wow, that's an interesting movie. Thank you so much.",
        ),
        const AppDivider(),
        const ChatViewTile(
          displayName: "John Alex",
          time: "9:32 AM",
          isOnline: true,
          message: "Hey Ay... Whats'up are you coming around today?",
          avatarColor: null,
          avatarGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 143, 214, 252),
              Color.fromARGB(255, 100, 221, 254),
              Color.fromARGB(255, 34, 152, 255),
              Color.fromARGB(255, 19, 129, 255),
            ],
            stops: [0.1, 0.3, 0.9, 1.0],
          ),
          unreadCount: 1,
        ),
        const AppDivider(),
        const ChatViewTile(
          imageUrl: "https://randomuser.me/api/portraits/women/85.jpg",
          displayName: "Rosemary Richardson",
          time: "9:32 AM",
          message:
              "Hello John, have you been able to purchase the monitor you told me you wanted to get?",
          unreadCount: 1,
        ),
      ],
    );
  }
}

class PinnedChats extends StatelessWidget {
  const PinnedChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const SizedBox(
          height: 10,
        ),
        const ChatViewTile(
          imageUrl: "https://xsgames.co/randomusers/assets/avatars/male/46.jpg",
          displayName: "Odama",
          time: "9:32 AM",
          message: "Maudy ayun: Have a great working weak!",
        ),
        const AppDivider(),
        const ChatViewTile(
          imageUrl: "https://randomuser.me/api/portraits/women/85.jpg",
          displayName: "Anette Black",
          time: "9:32 AM",
          isOnline: true,
          unreadCount: 2,
          isTyping: true,
          typingCaption: "Suneo is typing ...",
        ),
      ],
    );
  }
}

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _ChatScreenHeader(),
        const SizedBox(
          height: 15,
        ),
        const SearchTextField(),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                PinnedChats(),
                SizedBox(
                  height: 20,
                ),
                UserChatsList(),
              ],
            ),
          ),
        )
      ],
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
