import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ei.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ph.dart';

import '../../utils/colors.dart';
import '../../utils/widgets/feed_action.dart';
import '../../utils/widgets/feed_view.dart';
import '../../utils/widgets/stories_preview.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const _FeedScreenHeader(),
      StoriesPreviewsRow(),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: FeedView(),
      )
    ]);
  }
}

class _FeedScreenHeader extends StatelessWidget {
  const _FeedScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Feeds",
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
