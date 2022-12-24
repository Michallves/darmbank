import 'package:darmbank/app/exceptions/auth_exception.dart';
import 'package:darmbank/app/models/user_model.dart';
import 'package:darmbank/app/services/auth_service.dart';
import 'package:darmbank/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';
part 'sign_in_controller.g.dart';

class SignInController = _SignInController with _$SignInController;

abstract class _SignInController with Store {
  final AuthService auth = AuthService();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final cpf = TextEditingController();
  final password = TextEditingController();

  @action
  Future<String?> buttonSignInPressed() async {
    bool isValid = formKey.currentState!.validate();

    if (!isValid) {
      return "Acho que as informações que você me deu são inválidas!";
    }

    try {
      await signIn().then((_) => Get.offNamed(Routes.MAIN));
    } on AuthException catch (error) {
      Get.snackbar('Erro:', error.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
    return null;
  }

  ///Pode jogar AuthException
  @action
  Future<void> signIn() async {
    await auth.signIn(UserModel(cpf: cpf.text, password: password.text));
  }
}
