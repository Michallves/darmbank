import 'package:darmbank/app/utils/app_routes.dart';
import 'package:darmbank/app/widget/button.dart';
import 'package:darmbank/app/widget/textField_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Column(
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.elliptical(270, 140),
                    ),
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFieldWidget(
                        label: 'CPF',
                        hintText: '000.000.000-00',
                      ),
                      const TextFieldWidget(
                        label: 'Senha',
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
                        onPressed: () => Navigator.of(context)
                            .pushReplacementNamed(Routes.HOME),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
