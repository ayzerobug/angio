import 'user.dart';

class Feed {
  final User user;
  final String? caption;
  final String? imageUrl;
  final int likes;
  final int comments;
  final int createdAt;

  Feed({
    required this.user,
    this.caption,
    this.imageUrl,
    required this.likes,
    required this.comments,
    required this.createdAt,
  });
}
