import 'package:flutter/material.dart';

class CCButton extends StatelessWidget {
  final String text;
  final void Function() click;

  const CCButton({
    super.key,
    required this.text,
    required this.click,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: OutlinedButton(
        onPressed: click,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(10),
          shape: const StadiumBorder(),
          side: BorderSide(
            color: colorScheme.tertiary,
          ),
        ),
        child: Text(
          text,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
