import 'dart:convert';
import 'package:darmbank/app/exceptions/auth_exception.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String? _token;
  String? _email;
  String? _uid;
  DateTime? _expiryDate;

  bool get isAuth {
    final isValid = _expiryDate?.isAfter(DateTime.now()) ?? false;
    return _token != null && isValid;
  }

  String? get token {
    return isAuth ? _token : null;
  }

  String? get email {
    return isAuth ? _token : null;
  }

  String? get uid {
    return isAuth ? _token : null;
  }

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
    } else {
      _token = body['idToken'];
      _email = body['email'];
      _uid = body['localId'];

      _expiryDate =
          DateTime.now().add(Duration(seconds: int.parse(body['expiresIn'])));
    }
  }

  Future<void> signUp({required String email, required String password}) async {
    return await _authenticate(email, password, 'signUp');
  }

  Future<void> signIn({required String email, required String password}) async {
    return await _authenticate(email, password, 'signInWithPassword');
  }
}
