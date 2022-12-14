import 'package:darmbank/app/services/auth_services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  final auth = GetIt.I.get<AuthServices>();

  test(
      'signUp',
      () => auth
          .signUp(email: 'maicon147741@gmail.com', password: 'mccm123321')
          .then((value) => print('sucesso')));
}
