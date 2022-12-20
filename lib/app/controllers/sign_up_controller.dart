import 'package:darmbank/app/models/account_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

import '../exceptions/auth_exception.dart';
import '../repository/auth_repository.dart';
import '../routes/app_routes.dart';
part 'sign_up_controller.g.dart';

class SignUpController = _SignUpController with _$SignUpController;

abstract class _SignUpController with Store {
  final AuthRepository repository = AuthRepository();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final name = TextEditingController();
  final email = TextEditingController();
  final cpf = TextEditingController();
  final telephone = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  @observable
  String accountType = AccountType.savings;

  @action
  void changeAcountType(String? value) {
    accountType = value!;
  }

  @action
  Future<String?> buttonSignUpPressed() async {
    bool isValid = formKey.currentState!.validate();

    if (!isValid) {
      return "Acho que as informações que você me deu são inválidas!";
    }

    try {
      await signUp().then((_) => Get.offNamed(Routes.MAIN));
    } on AuthException catch (error) {
      Get.snackbar('Erro:', error.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
    return null;
  }

  @action
  Future<void> signUp() async {
    await repository.signUp(email: email.text, password: password.text);
  }
}
