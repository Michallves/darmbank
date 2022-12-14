import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class Controller = AuthController with _$Controller;

abstract class AuthController with Store {
  final auth = GetIt.I.get<AuthController>();

  
  static const _url =
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCyq5FIgzOey1K5GbMKpQbJku7eAXlbmR4";

  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();


  @action
  Future<void> signUp() async {
    final response = await http.post(Uri.parse(_url),
        body: jsonEncode(
            {'email': email, 'password': password, 'returnSecureToken': true}));
  }
  
}
