import 'package:darmbank/app/routes/app_routes.dart';
import 'package:get/get.dart';
import '../views/initial_view.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => InitialView())
  ];
}
