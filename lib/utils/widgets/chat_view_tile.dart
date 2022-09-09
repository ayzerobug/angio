import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/system_uicons.dart';

import 'user_avatar.dart';

class ChatViewTile extends StatelessWidget {
  const ChatViewTile({
    Key? key,
    this.imageUrl,
    this.isOnline = false,
    required this.displayName,
    required this.time,
    this.unreadCount = 0,
    this.isTyping = false,
    this.typingCaption = "typing...",
    this.message,
    this.isAudioMessage = false,
    this.avatarColor = Colors.blue,
    this.avatarGradient,
  }) : super(key: key);

  final String? imageUrl;
  final bool isOnline;
  final String displayName;
  final String time;
  final String? message;
  final bool isAudioMessage;
  final int unreadCount;
  final bool isTyping;
  final String typingCaption;
  final Color? avatarColor;
  final Gradient? avatarGradient;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        UserAvatar(
          imageUrl: imageUrl,
          displayName: displayName,
          isOnline: isOnline,
          backgroundColor: avatarColor,
          gradient: avatarGradient,
          radius: 50,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      displayName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color(0xff1f2b3d),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    time,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Expanded(
                    child: isTyping
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Iconify(
                                SystemUicons.write,
                                color: Color(0xff536ba1),
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                typingCaption,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color(0xff536ba1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          )
                        : isAudioMessage
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Iconify(
                                    Ph.microphone,
                                    color: unreadCount > 0
                                        ? const Color(0xff2a3645)
                                        : Colors.grey,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Voice message",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: unreadCount > 0
                                          ? const Color(0xff2a3645)
                                          : Colors.grey,
                                      fontWeight: unreadCount > 0
                                          ? FontWeight.bold
                                          : FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              )
                            : Text(
                                message ?? "",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: unreadCount > 0
                                      ? const Color(0xff2a3645)
                                      : Colors.grey,
                                  fontWeight: unreadCount > 0
                                      ? FontWeight.bold
                                      : FontWeight.w400,
                                ),
                              ),
                  ),
                  if (unreadCount > 0)
                    Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        color: Color(0xfff13d3e),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        unreadCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
