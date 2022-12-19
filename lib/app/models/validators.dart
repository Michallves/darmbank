class Validators {
  static String? emailValidator(String? text) {
    final userInput = text ?? "";
    if (userInput.isEmpty) {
      return "Campo obrigatório!";
    } else if (!userInput.contains(RegExp(
        "^[a-zA-Z0-9.!#\$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-]+\$"))) {
      return "Formato de email inválido!";
    }
  }

  static String? passwordValidator(String? text) {
    final userInput = text ?? "";
    if (userInput.isEmpty) {
      return "Campo obrigatório!";
    }
  }
}
