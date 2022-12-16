import 'package:darmbank/app/controllers/auth_controller.dart';
import 'package:darmbank/app/services/auth_services.dart';
import 'package:darmbank/app/theme/app_theme.dart';
import 'package:darmbank/app/utils/app_routes.dart';
import 'package:darmbank/app/views/forgot_password_view.dart';
import 'package:darmbank/app/views/initial_view.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app/views/login_view.dart';
import 'app/views/main_view.dart';
import 'app/views/register_view.dart';

void main() async {
  final GetIt getIt = GetIt.I;
  getIt.registerSingleton<AuthController>(AuthController());
  getIt.registerSingleton<AuthServices>(AuthServices());
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
      initialRoute: Routes.INITIAL,
      routes: {
        Routes.INITIAL: (context) => const InitialView(),
        Routes.LOGIN: (context) => const LoginView(),
        Routes.REGISTER: (context) => const RegisterView(),
        Routes.MAIN: (context) => const MainView(),
        Routes.PASSWORD: (context) => const ForgotPasswordView(),
      },
    );
  }
}
