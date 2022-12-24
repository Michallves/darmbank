import 'package:brasil_fields/brasil_fields.dart';
import 'package:darmbank/app/models/validators.dart';
import 'package:darmbank/app/widgets/button.dart';
import 'package:darmbank/app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/sign_in_controller.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.elliptical(270, 140),
            ),
            color: Theme.of(context).backgroundColor,
          ),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldWidget(
                  label: 'CPF',
                  hintText: '000.000.000-00',
                  controller: controller.cpf,
                  validator: (text) => Validators.cpfValidator(text),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CpfInputFormatter()
                  ],
                  keyboardType: TextInputType.number,
                ),
                TextFieldWidget(
                  label: 'Senha',
                  hintText: '********',
                  controller: controller.password,
                  validator: (text) => Validators.passwordValidator(text),
                ),
                Row(
                  children: [
                    Text(
                      "Esqueceu sua senha?",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Button(
                  title: "Entrar",
                  onPressed: () => controller.buttonSignInPressed(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
