class UserModel {
  final String username;
  final String fullName;
  final String email;
  final String phone;
  final int projects;
  final int likes;
  final int badges;

  UserModel({
    required this.username,
    required this.fullName,
    required this.email,
    required this.phone,
    this.projects = 24,
    this.likes = 128,
    this.badges = 7,
  });

  static UserModel get currentUser => UserModel(
    username: 'SuperLongUsername',
    fullName: 'FuaDEliveyFlutterDeveloper2026',
    email: 'fuad.elivey.flutter.mobile.developer@gmail.com',
    phone: '+994 50 123 45 67',
  );
}
