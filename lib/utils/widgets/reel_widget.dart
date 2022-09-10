import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:video_player/video_player.dart';

import '../methods/formatter.dart';
import '../models/reel.dart';

class ReelWidget extends StatefulWidget {
  const ReelWidget({Key? key, required this.reel}) : super(key: key);
  final Reel reel;

  @override
  State<ReelWidget> createState() => _ReelWidgetState();
}

class _ReelWidgetState extends State<ReelWidget> {
  late VideoPlayerController videoController;

  @override
  void initState() {
    print("Page Created");
    super.initState();
    videoController = VideoPlayerController.network(widget.reel.videoUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        print("Video initialized");
        setState(() {});
      });
    // videoController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        videoController.value.isInitialized
            ? ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: VideoPlayer(videoController))
            : Container(),
        Positioned.fill(
          bottom: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: IntrinsicHeight(
              child: Container(
                alignment: Alignment.bottomCenter,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(0, 0, 0, 0),
                      Color.fromARGB(255, 0, 0, 0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.reel.author.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            if (widget.reel.caption != null)
                              Text(
                                widget.reel.caption!,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 223, 223, 223),
                                  fontSize: 13,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      children: [
                        ReelAction(
                          icon: Ri.heart_3_line,
                          caption: numberFormat(widget.reel.likes),
                        ),
                        ReelAction(
                          icon: Uil.comment_dots,
                          caption: numberFormat(widget.reel.likes),
                        ),
                        ReelAction(
                          icon: Ic.twotone_bookmark_border,
                          caption: "Save",
                        ),
                        ReelAction(
                          icon: Fluent.share_24_regular,
                          caption: "Save",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        if (videoController.value.isBuffering)
          Text(
            "Loading...",
            style: const TextStyle(
              color: Colors.red,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }
}

class ReelAction extends StatelessWidget {
  ReelAction({Key? key, required this.icon, required this.caption, this.onTap})
      : super(key: key);

  final String icon;
  final String caption;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTap,
            child: Iconify(
              icon,
              color: Colors.white,
              size: 26,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            caption,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
