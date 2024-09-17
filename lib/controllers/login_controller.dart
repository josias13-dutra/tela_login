// lib/controllers/login_controller.dart
import '../models/user_model.dart';

class LoginController {
  final UserModel userModel;

  LoginController(this.userModel);

  String? validateLogin() {
    if (userModel.username.isEmpty || userModel.password.isEmpty) {
      return 'Por favor, preencha todos os campos.';
    }

    if (userModel.validateCredentials()) {
      return null; // Login válido
    } else {
      return 'Usuário ou senha incorretos.';
    }
  }
}
