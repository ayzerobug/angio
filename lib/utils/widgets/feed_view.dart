import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ph.dart';

import '../Models/feed.dart';
import '../methods/formatter.dart';
import 'feed_action.dart';

class FeedView extends StatelessWidget {
  const FeedView({
    Key? key,
    required this.feed,
  }) : super(key: key);

  final Feed feed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(feed.author.avatarUrl),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            feed.author.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (feed.author.isVerified)
                            Column(
                              children: const [
                                SizedBox(
                                  width: 20,
                                ),
                                Iconify(
                                  Ic.baseline_verified,
                                  size: 14,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              "@${feed.author.username}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 116, 115, 115),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const Iconify(
                            Bi.dot,
                            color: Color.fromARGB(255, 116, 115, 115),
                          ),
                          Expanded(
                            child: Text(
                              getVerboseDateTimeRepresentation(feed.createdAt),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 116, 115, 115),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.more_horiz_outlined)
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                if (feed.caption != null)
                  Text(
                    feed.caption!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                if (feed.imageUrl != null)
                  Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxHeight: size.height * 0.3,
                          minWidth: size.width * 0.5,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(feed.imageUrl!),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ],
                  ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FeedAction(
                        caption: numberFormat(feed.likes),
                        icon: Ph.heart_straight_light),
                    FeedAction(
                        caption: numberFormat(feed.comments), icon: Ei.comment),
                    const FeedAction(
                        caption: "Save", icon: Fluent.bookmark_16_regular),
                    const FeedAction(
                        caption: "Share", icon: Fluent.share_ios_20_filled),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
