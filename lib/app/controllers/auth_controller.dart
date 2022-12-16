import 'package:darmbank/app/models/user_form_model.dart';
import 'package:darmbank/app/services/auth_services.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthController with _$AuthController;

var auth = GetIt.I<AuthServices>();

abstract class _AuthController with Store {
  var userForm = UserForm();
  @action
  signIn() {
    print('$email, $password');
  }
}
