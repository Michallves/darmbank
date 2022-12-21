import 'package:darmbank/app/models/account_type.dart';
import 'package:darmbank/app/widgets/sign_up_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobx/mobx.dart';

import '../exceptions/auth_exception.dart';
import '../services/auth_service.dart';
part 'sign_up_controller.g.dart';

class SignUpController = _SignUpController with _$SignUpController;

abstract class _SignUpController with Store {
  final AuthService auth = AuthService();
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
  Future<void> buttonSignUpPressed() async {
    bool isValid = formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    try {
      //await signUp().then((_) => Get.offNamed(Routes.MAIN));
      await signUp();
    } on AuthException catch (error) {
      Get.snackbar(
        'Erro:',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    Get.bottomSheet(
      const SignUpBottomSheet(),
      backgroundColor: Colors.transparent,
      isDismissible: false,
      enableDrag: false,
    );
  }

  @action
  Future<void> signUp() async {
    await auth.signUp(email: email.text, password: password.text);
  }
}
