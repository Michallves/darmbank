import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

abstract class CustomIcons {
  static const credit_card = "assets/icons/credit_card.svg";
  static const home = "assets/icons/home.svg";
  static const notification = "assets/icons/notification.svg";
  static const person = "assets/icons/person.svg";
  static const scanner = "assets/icons/scanner.svg";

  static Widget icon(String image) => SvgPicture.asset(image);
}
