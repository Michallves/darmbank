import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'auth_services.g.dart';

class AuthServices = _AuthServices with _$AuthServices;

abstract class _AuthServices with Store {
  
  static const _url =
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCyq5FIgzOey1K5GbMKpQbJku7eAXlbmR4";


  Future<void> signUp({required String email, required String password}) async {
    final response = await http.post(Uri.parse(_url),
        body: jsonEncode(
            {'email': email, 'password': password, 'returnSecureToken': true}));
  }
}
