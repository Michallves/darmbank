import 'package:darmbank/app/routes/app_routes.dart';
import 'package:darmbank/app/widgets/button.dart';
import 'package:flutter/material.dart';

class SignUpBottomSheet extends StatelessWidget {
  const SignUpBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 50),
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary,
            spreadRadius: -1,
            offset: const Offset(0, -6),
          )
        ],
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Parabéns você acaba de facilitar sua vida",
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: "Montserrat",
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            child: const Text(
              "Que tal conferir nossas funcionalidades agora?",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Button(
            margin: const EdgeInsets.all(0),
            title: "Página Inicial",
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacementNamed(Routes.MAIN);
            },
          ),
        ],
      ),
    );
  }
}
