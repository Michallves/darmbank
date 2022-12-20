import 'package:darmbank/app/bindings/sign_in_binding.dart';
import 'package:darmbank/app/routes/app_routes.dart';
import 'package:get/get.dart';
import '../bindings/sign_up_binding.dart';
import '../views/forgot_password_view.dart';
import '../views/initial_view.dart';
import '../views/main_view.dart';
import '../views/register_credit_card.dart';
import '../views/sign_in_view.dart';
import '../views/sign_up_view.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => const InitialView()),
    GetPage(name: Routes.SIGN_IN, page: () => const SignIn(), binding: SignInBinding()),
    GetPage(name: Routes.SIGN_UP, page: () => const SignUp(), binding: SignUpBinding()),
    GetPage(name: Routes.MAIN, page: () => const MainView()),
    GetPage(name: Routes.REGISTER_CARD, page: () => const RegisterCreditCard()),
    GetPage(name: Routes.PASSWORD, page: () => const ForgotPasswordView()),
  ];
}
