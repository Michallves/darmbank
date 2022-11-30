import 'package:darmbank/app/routes/app_pages.dart';
import 'package:darmbank/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Darm Bank',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      getPages: AppPages.routes,
    );
  }
}
