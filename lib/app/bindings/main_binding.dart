import 'package:darmbank/app/controllers/main_screen_controller.dart';
import 'package:get/get.dart';
import '../controllers/sign_in_controller.dart';


class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController());
  }
}
