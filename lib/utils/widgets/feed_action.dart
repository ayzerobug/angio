import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class FeedAction extends StatelessWidget {
  const FeedAction({Key? key, required this.caption, required this.icon})
      : super(key: key);
  final String icon;
  final String caption;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Iconify(
            icon,
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            caption,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
