import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url =
        "https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyCyq5FIgzOey1K5GbMKpQbJku7eAXlbmR4";
    final response = await http.post(Uri.parse(url),
        body: jsonEncode(
            {'email': email, 'password': password, 'returnSecureToken': true}));
    print(jsonDecode(response.body));
  }

  Future<void> signUp({required String email, required String password}) async {
    _authenticate(email, password, 'signUp');
  }

  Future<void> signIn({required String email, required String password}) async {
    _authenticate(email, password, 'signInWithPassword');
  }
}
