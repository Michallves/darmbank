import 'package:darmbank/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gerencie\nSeus Cartões\nCom o Darm\nBank!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.fontWeight,
                            color:
                                Theme.of(context).textTheme.titleLarge?.color),
                      ),
                      Text(
                        'Prático e facil\nde usar',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.fontSize,
                            color:
                                Theme.of(context).textTheme.titleMedium?.color),
                      ),
                    ]),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.elliptical(320, 200)),
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: ElevatedButton(
                              onPressed: () => Get.toNamed(Routes.INITIAL),
                              child: const Text(
                                'Criar uma conta',
                              )),
                        ),
                        TextButton(
                          onPressed: () => null,
                          child: const Text('Já possui conta?'),
                        ),
                        TextButton(
                          onPressed: () => null,
                          child: const Text('Entrar como adm'),
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
