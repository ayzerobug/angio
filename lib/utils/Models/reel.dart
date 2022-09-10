import 'package:angio/utils/models/user.dart';

class Reel {
  final User author;
  final String? caption;
  final String videoUrl;
  final int likes;
  final int comments;

  Reel(
      {required this.author,
      this.caption,
      required this.videoUrl,
      this.comments = 0,
      this.likes = 0});
}
