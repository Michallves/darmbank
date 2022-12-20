import 'package:darmbank/app/models/account_type.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'signup_screen_controller.g.dart';

class SignUpScreenController = _SignUpScreenController
    with _$SignUpScreenController;

abstract class _SignUpScreenController with Store {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  String accountType = AccountType.savings;

  @action
  void changeAcountType(String? value) {
    accountType = value!;
  }

  @action
  void buttonDonePressed() {
    final bool isValid = formKey.currentState!.validate();

    if (!isValid) return;
  }
}
