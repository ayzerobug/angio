import 'package:angio/utils/models/user.dart';

class Feed {
  final User author;
  final String? caption;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int createdAt;

  Feed({
    required this.author,
    this.caption,
    this.imageUrl,
    required this.likes,
    required this.comments,
    required this.createdAt,
  });
}
