import 'package:flutter/material.dart';

class LoginController {
  static final LoginController instance = LoginController();

  void login(String email, String password, BuildContext context) {
    if (email == 'teste@email.com' && password == '123') {
      print('Login Válido');
      Navigator.of(context).pushReplacementNamed('/currency');
    } else {
      print('Login inválido');
    }
  }
}
