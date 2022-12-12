import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Text(
        "Olá fernando",
        style: theme.textTheme.displayMedium,
      ),
    );
  }
}
