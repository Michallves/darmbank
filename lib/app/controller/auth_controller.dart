import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class Controller = AuthController with _$Controller;

abstract class AuthController with Store {
  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }
}
