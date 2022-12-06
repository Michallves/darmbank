import 'package:darmbank/app/utils/app_routes.dart';
import 'package:darmbank/app/widget/button.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Form(
                //key: ,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CPF",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Senha",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
