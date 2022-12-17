import 'package:darmbank/app/exceptions/auth_exception.dart';
import 'package:darmbank/app/repositories/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

var auth = GetIt.I<AuthRepository>();

abstract class _AuthController with Store {
  @observable
  GlobalKey formKey = GlobalKey<FormState>();

  @observable
  TextEditingController email = TextEditingController();
  @observable
  TextEditingController password = TextEditingController();

  @action
  void validator() {
    if (formKey.currentState!.validate()) {
      const ScaffoldMessenger(
          child: SnackBar(content: Text('Processing Data')));
    }
  }

  @action
  Future<void> signUp() async {
    await auth.signUp(email: email.text, password: password.text);
  }

  @action
  Future<void> signIn() async {
    await auth.signIn(email: email.text, password: password.text);
  }
}
