import 'package:flutter/material.dart';

class CardModel {
  final String? id;
  final String? name;
  final String? number;
  final String? flag;
  final String? cvc;
  final String? expiryDate;

  CardModel(
      this.id, this.name, this.number, this.flag, this.cvc, this.expiryDate);
}
