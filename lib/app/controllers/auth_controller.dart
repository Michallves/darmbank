import 'package:darmbank/app/services/auth_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

var auth = GetIt.I<AuthServices>();

abstract class _AuthController with Store {
  @observable
  TextEditingController email = TextEditingController();
  @observable
  TextEditingController password = TextEditingController();

  @action
  signIn() async {
    await auth.signUp(email: email.text, password: password.text);
  }
}
