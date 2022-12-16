import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  const CreditCard({
    this.height,
    this.width,
    this.margin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    return Container(
      width: width ?? (MediaQuery.of(context).size.width * 0.85),
      height: height ?? 225,
      margin: margin ?? const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [Color(0xff9747FF), Color(0Xff5C1AB1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("N° DO CARTÃO", style: theme.textTheme.labelSmall),
                    Text(
                      "0000 0000 0000 0000",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TITULAR", style: theme.textTheme.labelSmall),
                  Text("Fernando P. Silva", style: theme.textTheme.labelLarge),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/mastercard_logo.png", scale: 20),
              Column(
                children: [
                  Text("VALIDADE", style: theme.textTheme.labelSmall),
                  Text("05/30", style: theme.textTheme.labelLarge),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
