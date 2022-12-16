import 'package:mobx/mobx.dart';
part 'user_form_model.g.dart';

class UserForm = _UserFormBase with _$UserForm;

abstract class _UserFormBase with Store {
  @observable
  String? email;
  @action
  changeEmail(String value) => email = value;

  @observable
  String? password;
  @action
  changePassword(String value) => password = value;

  @observable
  String? name;
  @action
  changeName(String value) => name = value;
}
