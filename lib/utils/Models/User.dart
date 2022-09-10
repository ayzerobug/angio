class User {
  final String username;
  final String name;
  final bool isVerified;
  final String avatarUrl;

  User({
    required this.username,
    required this.name,
    this.isVerified = false,
    required this.avatarUrl,
  });
}
