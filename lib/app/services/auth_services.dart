import 'dart:convert';
import 'package:http/http.dart' as http;

 class AuthServices {
  
  static const _url =
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCyq5FIgzOey1K5GbMKpQbJku7eAXlbmR4";


  Future<void> signUp({required String email, required String password}) async {
    final response = await http.post(Uri.parse(_url),
        body: jsonEncode(
            {'email': email, 'password': password, 'returnSecureToken': true}));
  }
}
