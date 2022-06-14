import 'package:cotacao_moedas/components/app_bar.dart';
import 'package:cotacao_moedas/components/text_input.dart';
import 'package:cotacao_moedas/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Login'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login'),
          FormTextField(
            labelText: 'E-mail',
            hintText: 'exemplo@email.com',
            textController: emailController,
          ),
          FormTextField(
              labelText: 'Senha',
              hintText: '******',
              obscureText: true,
              textController: passwordController),
          ElevatedButton(
            onPressed: () {
              LoginController.instance.login(
                  emailController.text, passwordController.text, context);
            },
            child: Text('Entrar'),
          ),
        ],
      ),
    );
  }
}
