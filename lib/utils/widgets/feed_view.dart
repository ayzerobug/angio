import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ph.dart';

import 'feed_action.dart';

class FeedView extends StatelessWidget {
  const FeedView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: CachedNetworkImageProvider(
                  "https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(40 * 0.3),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Ivan Brennan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "@ivan",
                        style: TextStyle(
                          color: Color.fromARGB(255, 116, 115, 115),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Iconify(
                        Bi.dot,
                        color: Color.fromARGB(255, 116, 115, 115),
                      ),
                      Text(
                        "2m",
                        style: TextStyle(
                          color: Color.fromARGB(255, 116, 115, 115),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.more_horiz_outlined)
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                "Seriously, can someone tell @pinsky to stop talking about Comic Sans, it's getting annoyting...",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FeedAction(caption: "9,230", icon: Ph.heart_straight_light),
                  FeedAction(caption: "92", icon: Ei.comment),
                  FeedAction(caption: "Save", icon: Fluent.bookmark_16_regular),
                  FeedAction(
                      caption: "Share", icon: Fluent.share_ios_20_filled),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
