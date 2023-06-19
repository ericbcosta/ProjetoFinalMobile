class User {
  final String? id;
  final String name;
  final String email;
  final String avatarUrl;
  final String descricao;

  const User({
    this.id,
    required this.name,
    required this.email,
    required this.avatarUrl,
    required this.descricao,
  });
}
