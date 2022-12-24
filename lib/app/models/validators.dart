import 'package:get/get.dart';

class Validators {
  static String? cpfValidator(String? text) {
    final userInput = text ?? "";
    if (userInput.isEmpty) {
      return "Campo obrigatório!";
    } else if (!GetUtils.isCpf(text!)) {
      return "Cpf inválido!";
    }
  }

  static String? emailValidator(String? text) {
    final userInput = text ?? "";
    if (userInput.isEmpty) {
      return "Campo obrigatório!";
    } else if (!GetUtils.isEmail(text!)) {
      return "Email inválido!";
    }
  }

  static String? passwordValidator(String? text) {
    final userInput = text ?? "";
    if (userInput.isEmpty) {
      return "Campo obrigatório!";
    }
  }
}
