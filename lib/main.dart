import 'package:darmbank/app/theme/app_theme.dart';
import 'package:darmbank/app/utils/app_routes.dart';
import 'package:darmbank/app/views/initial_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Darm Bank',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      routes: {Routes.INITIAL: (context) => const InitialView()},
    );
  }
}
