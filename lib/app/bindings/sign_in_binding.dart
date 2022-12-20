import 'package:darmbank/app/services/auth_service.dart';
import 'package:get/get.dart';
import '../controllers/sign_in_controller.dart';


class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
