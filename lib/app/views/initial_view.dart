import 'package:darmbank/app/utils/app_routes.dart';
import 'package:darmbank/app/widgets/button.dart';
import 'package:flutter/material.dart';

class InitialView extends StatelessWidget {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.top,
                ),
                const Image(
                  image: AssetImage('assets/images/icon_logo.png'),
                  width: 50,
                ),
                Text(
                  'Gerencie\nSeus Cartões\nCom o Darm\nBank!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.displayLarge?.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.displayLarge?.fontWeight,
                    color: Theme.of(context).textTheme.displayLarge?.color,
                  ),
                ),
                Text(
                  'Prático e facil\nde usar',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                    color: Theme.of(context).textTheme.titleMedium?.color,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(280, 220),
                ),
                color: Theme.of(context).backgroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Button(
                    title: 'Criar uma conta',
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Routes.SIGN_UP),
                  ),
                  TextButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(Routes.SIGN_IN),
                    child: const Text('Já possui conta?'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Entrar como adm'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
