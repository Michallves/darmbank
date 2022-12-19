import 'dart:convert';
import 'package:darmbank/app/exceptions/auth_exception.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  ///Pode causar AuthException
  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url =
        "https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyCyq5FIgzOey1K5GbMKpQbJku7eAXlbmR4";
    final response = await http.post(Uri.parse(url),
        body: jsonEncode(
            {'email': email, 'password': password, 'returnSecureToken': true}));

    final body = jsonDecode(response.body);

    if (body['error'] != null) {
      throw AuthException(body['error']['message']);
    }
  }

  Future<void> signUp({required String email, required String password}) async {
    return await _authenticate(email, password, 'signUp');
  }

  Future<void> signIn({required String email, required String password}) async {
    return await _authenticate(email, password, 'signInWithPassword');
  }
}
