import 'package:darmbank/app/services/auth_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

abstract class _AuthController with Store {
  final auth = GetIt.instance.get<AuthServices>();

  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();

  signIn() async {
    await auth.signUp(email: email.value.text, password: password.value.text);
  }
}
