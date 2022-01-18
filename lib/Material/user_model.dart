import 'dart:convert';

class UserModelController {
  final String? name;
  final String? email;
  final String? password;
  UserModelController({
    this.name,
    this.email,
    this.password,
  });
  factory UserModelController.fromMap(Map<String, dynamic> map) {
    return UserModelController(
        name: map['name'], email: map['email'], password: map['password']);
  }
  factory UserModelController.fromJson(String json) =>
      UserModelController.fromMap(jsonDecode(json));
  Map<String, dynamic> toMap() =>
      {"name": name, "email": email, "password": password};
  String toJson() => jsonEncode(toMap());
}
