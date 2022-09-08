import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar(
      {Key? key,
      this.imageUrl,
      this.isOnline = false,
      this.radius = 60,
      this.displayName,
      this.backgroundColor,
      this.gradient,
      this.shadowColor = Colors.black45})
      : super(key: key);

  final bool isOnline;
  final String? imageUrl;
  final String? displayName;
  final double radius;
  final Color? backgroundColor;
  final Gradient? gradient;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      /// Default size of the EditableImage is 140.0
      height: radius,
      width: radius,
      child: Stack(
        fit: StackFit.expand,
        children: [
          /// Builds main image.
          /// For example, profile picture.
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: shadowColor,
                  offset: const Offset(0, 20),
                  blurRadius: 30,
                  spreadRadius: -7,
                ),
              ],
              gradient: gradient,
            ),
            child: ClipOval(
              child: imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: imageUrl!,
                    )
                  : Center(
                      child: Text(
                        (displayName![0] + displayName![1]).toUpperCase(),
                        style: TextStyle(
                          fontSize: radius * 0.4,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Varela',
                        ),
                      ),
                    ),
            ),
          ),
          if (isOnline)
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: radius * 0.3,
                width: radius * 0.3,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
