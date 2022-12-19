import 'package:darmbank/app/exceptions/auth_exception.dart';
import 'package:darmbank/app/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

var auth = GetIt.I<AuthRepository>();

abstract class _AuthController with Store {
  @observable
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @observable
  TextEditingController email = TextEditingController();
  @observable
  TextEditingController password = TextEditingController();

  @action
  Future<String?> buttonLoginPressed() async {
    bool isValid = formKey.currentState!.validate();

    if (!isValid) {
      return "Acho que as informações que você me deu são inválidas!";
    }

    const ScaffoldMessenger(child: SnackBar(content: Text('Processing Data')));

    try {
      await signIn();
    } on AuthException catch (error) {
      return error.toString();
    }
  }

  @action
  Future<void> signUp() async {
    await auth.signUp(email: email.text, password: password.text);
  }

  ///Pode jogar AuthException
  @action
  Future<void> signIn() async {
    await auth.signIn(email: email.text, password: password.text);
  }
}
