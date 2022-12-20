import 'package:darmbank/app/controllers/auth_controller.dart';
import 'package:darmbank/app/controllers/main_screen_controller.dart';
import 'package:darmbank/app/repositories/auth_repository.dart';
import 'package:darmbank/app/theme/app_theme.dart';
import 'package:darmbank/app/utils/app_routes.dart';
import 'package:darmbank/app/views/forgot_password_view.dart';
import 'package:darmbank/app/views/initial_view.dart';
import 'package:darmbank/app/views/register_credit_card.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app/views/sign_in_view.dart';
import 'app/views/main_view.dart';
import 'app/views/sign_up_view.dart';

void main() async {
  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<AuthController>(AuthController());
  getIt.registerSingleton<AuthRepository>(AuthRepository());
  getIt.registerSingleton<MainScreenController>(MainScreenController());
  WidgetsFlutterBinding.ensureInitialized();

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
      initialRoute: Routes.MAIN,
      routes: {
        Routes.INITIAL: (context) => const InitialView(),
        Routes.SIGN_IN: (context) => const SignIn(),
        Routes.SIGN_UP: (context) => const SignUp(),
        Routes.MAIN: (context) => const MainView(),
        Routes.REGISTER_CARD: (context) => const RegisterCreditCard(),
        Routes.PASSWORD: (context) => const ForgotPasswordView(),
      },
    );
  }
}
