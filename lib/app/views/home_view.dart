import 'package:darmbank/app/widget/creditCard.dart';
import 'package:darmbank/app/widget/creditCardButton.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/user_image.png",
          scale: 0.7,
        ),
        title: Text(
          "Bem vindo, Fernando",
          style: theme.textTheme.labelMedium,
        ),
        backgroundColor: colorScheme.onPrimary,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "   Meus Cartões",
                  style: theme.textTheme.labelMedium,
                  //textAlign: TextAlign.end,
                ),
                //Lista de cartões
                SizedBox(
                  width: width,
                  height: height * 0.3,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CreditCard(),
                      CreditCard(),
                    ],
                  ),
                ),
                //Lista de opções inferior
                SizedBox(
                  height: height * 0.075,
                  width: width,
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CCButton(
                        text: "solicitar cartão",
                        click: () => Navigator.of(context).pop(),
                      ),
                      CCButton(
                        text: "cadastrar cartão",
                        click: () {},
                      ),
                      CCButton(
                        text: "cartões solicitados",
                        click: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //CARD INFERIOR
            Container(
              width: width,
              height: height * 0.22,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: colorScheme.primary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Indique e ganhe!",
                        style: theme.textTheme.titleSmall,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Darm Bank está oferecendo\n"
                        "10\$ para cada pessoa que\n"
                        "baixe o app com seu link",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/peoplewithcard.png",
                    alignment: Alignment.centerLeft,
                    scale: 0.8,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: colorScheme.tertiary,
            ),
            label: "Início",
            tooltip: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notificações",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Scanner",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cartões",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
