import 'package:darmbank/app/widgets/button.dart';
import 'package:darmbank/app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../controllers/auth_controller.dart';
import '../utils/app_routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<AuthController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(270, 140),
            ),
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFieldWidget(
                label: 'Email',
                hintText: 'maicon@gmail.com',
                controller: controller.email,
              ),
              TextFieldWidget(
                label: 'Senha',
                hintText: '********',
                controller: controller.password,
              ),
              Row(
                children: [
                  Text(
                    "Esqueceu sua senha?",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              Button(
                  title: "Entrar",
                  onPressed: () => controller.signUp().then((_) =>
                      Navigator.of(context).pushReplacementNamed(Routes.MAIN))),
            ],
          ),
        ),
      ),
    );
  }
}