import 'package:darmbank/app/routes/app_routes.dart';
import 'package:darmbank/app/widgets/creditCard.dart';
import 'package:darmbank/app/widgets/creditCardButton.dart';
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
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/images/user_image.png"),
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
                    padding: const EdgeInsets.all(15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CCButton(
                        text: "solicitar cartão",
                        click: () {},
                      ),
                      CCButton(
                        text: "cadastrar cartão",
                        click: () => Navigator.of(context)
                            .pushNamed(Routes.REGISTER_CARD),
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
            SizedBox(
              height: height * 0.20,
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Container(
                    width: width,
                    //height: height * 0.22,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image.asset(
                      "assets/images/peoplewithcard.png",
                      alignment: Alignment.centerLeft,
                      //fit: BoxFit.fitHeight,
                      scale: 0.7,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
