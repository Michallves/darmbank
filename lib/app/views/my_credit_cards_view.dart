import 'package:darmbank/app/widgets/button.dart';
import 'package:darmbank/app/widgets/creditCard.dart';
import 'package:flutter/material.dart';

class MyCreditCardsView extends StatelessWidget {
  ///Variável para controlar o status dessa tela.
  ///Se mostrar os cartões ou não
  final thereAreCardsToShow = false;

  const MyCreditCardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Meus cartões",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: thereAreCardsToShow
                    ? MediaQuery.of(context).size.height * 0.74
                    : null,
                child: thereAreCardsToShow
                    ? ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const CreditCard(
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                          );
                        },
                      )
                    : const NoCardsNow(),
              ),
              Button(title: "Solicitações em andamento", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class NoCardsNow extends StatelessWidget {
  const NoCardsNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/no_credit_cards.png"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(
                "Sem cartões no momento",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
              ),
              Text(
                "Solicite um cartão ou cadastre um novo!",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
