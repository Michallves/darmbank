import 'dart:convert';

import 'package:darmbank/app/models/card_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  testWidgets('AddCard', (test, {CardModel? card}) async {
    final _baseUrl = "https://appbank-darm-default-rtdb.firebaseio.com";

    http
        .post(Uri.parse('$_baseUrl/blabla.json'),
            body: jsonEncode({
              "id": card?.id,
              "name": card?.name,
              "number": card?.number,
              "flag": card?.flag,
              "cvc": card?.cvc,
              "expiryDate": card?.expiryDate
            }))
        .then((value) => print('enviado com sucesso!'))
        .catchError((onError) => print(onError));
  });
}
