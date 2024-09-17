// lib/models/user_model.dart
class UserModel {
  String username;
  String password;

  UserModel({required this.username, required this.password});

  bool validateCredentials() {
    // Simulação de validação. Você pode implementar uma lógica real aqui.
    return username == 'admin' && password == '1234';
  }
}
