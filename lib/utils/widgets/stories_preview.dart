import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:palette_generator/palette_generator.dart';

class StoriesPreviewsRow extends StatelessWidget {
  StoriesPreviewsRow({
    Key? key,
  }) : super(key: key);

  final List<List> imageThumbnailUrls = [
    [
      "https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Ivan"
    ],
    [
      "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Clara"
    ],
    [
      "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "Jarvis"
    ],
    [
      "https://images.unsplash.com/photo-1532073150508-0c1df022bdd1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
      "Matilda"
    ],
    [
      "https://images.unsplash.com/photo-1479936343636-73cdc5aae0c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
      "Simeon"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
              StoriesPreview(
                thumbnailUrl:
                    "https://avatars.githubusercontent.com/u/68833108?v=4",
                size: 65,
                username: "You",
                canAdd: true,
              )
            ] +
            imageThumbnailUrls
                .map(
                  (e) => StoriesPreview(
                    thumbnailUrl: e[0],
                    username: e[1],
                    size: 65,
                  ),
                )
                .toList(),
      ),
    );
  }
}

class StoriesPreview extends StatefulWidget {
  const StoriesPreview({
    Key? key,
    required this.thumbnailUrl,
    required this.size,
    required this.username,
    this.canAdd = false,
  }) : super(key: key);
  final String thumbnailUrl;
  final String username;
  final double size;
  final bool canAdd;

  @override
  State<StoriesPreview> createState() => _StoriesPreviewState();
}

class _StoriesPreviewState extends State<StoriesPreview> {
  Rect? region;
  PaletteGenerator? paletteGenerator;

  Color? color;

  void getDormiantColor() async {
    Size size = Size(widget.size, widget.size);

    Rect newRegion = Offset.zero & size;

    paletteGenerator = await PaletteGenerator.fromImageProvider(
      CachedNetworkImageProvider(widget.thumbnailUrl),
      size: size,
      region: newRegion,
      maximumColorCount: 20,
    );
    setState(() {
      color = paletteGenerator!.dominantColor?.color;
    });
  }

  @override
  void initState() {
    super.initState();
    getDormiantColor();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: widget.size,
                width: widget.size,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(widget.thumbnailUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(widget.size * 0.3),
                  border: Border.all(
                    width: 2,
                    color: color ?? Colors.blue,
                  ),
                ),
              ),
              if (widget.canAdd)
                Container(
                  height: widget.size * 1.08,
                  width: widget.size,
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(widget.size * 0.1),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      color: color ?? Colors.blue,
                    ),
                    child: Iconify(
                      Ic.baseline_add,
                      color: Colors.white,
                      size: widget.size * 0.2,
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.username,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
