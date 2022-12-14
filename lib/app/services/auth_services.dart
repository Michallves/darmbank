import 'dart:convert';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
part 'auth_services.g.dart';

class AuthServices = _AuthServicesBase with _$AuthServices;

abstract class _AuthServicesBase with Store {
  
  
  Future<void> signUp({required String email, required String password}) async {
    final response = await post(Uri.parse('_url'),
        body: jsonEncode(
            {'email': email, 'password': password, 'returnSecureToken': true}));
  }
}
