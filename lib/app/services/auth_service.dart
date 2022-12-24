import 'dart:convert';
import 'package:darmbank/app/exceptions/auth_exception.dart';
import 'package:darmbank/app/models/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class AuthService extends GetConnect {
  Rx<UserModel>? user;

  Future<void> signUp(UserModel user) async {
    final response = await http.post(Uri.parse('$baseUrl/users/createUser'),
        body: jsonEncode(user.toMap()));

    final body = jsonDecode(response.body);

    if (body['error'] != null) {
      throw AuthException(body['error']['message']);
    } else {
      user = UserModel.fromMap(body);
    }
  }

  Future<void> signIn(UserModel user) async {
    final response = await http.post(Uri.parse('$baseUrl/users/loginUser'),
        body: jsonEncode(user.toMap()));

    final body = jsonDecode(response.body);

    if (body['error'] != null) {
      throw AuthException(body['error']['message']);
    } else {
      user = UserModel.fromMap(body);
    }
  }
}
