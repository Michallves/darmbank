import 'package:darmbank/app/models/account_type.dart';
import 'package:darmbank/app/widgets/button.dart';
import 'package:darmbank/app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';
import '../routes/app_routes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final theme = Get.theme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: theme.colorScheme.tertiary,
          ),
        ),
        elevation: 0,
        backgroundColor: theme.colorScheme.onPrimary,
      ),
      backgroundColor: theme.colorScheme.onPrimary,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const TextFieldWidget(label: "Nome completo"),
                      const TextFieldWidget(
                        label: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFieldWidget(
                        label: "CPF",
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      TextFieldWidget(
                        label: "Telefone",
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      const TextFieldWidget(
                        label: "Senha",
                        obscureText: true,
                      ),
                      const TextFieldWidget(label: "Confirmar senha"),
                      Observer(builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tipo de conta",
                                  style: theme.textTheme.labelSmall!.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: theme.colorScheme.tertiary,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Radio<String>(
                                          value: AccountType.checking,
                                          groupValue: controller
                                              .accountType,
                                          onChanged: controller
                                              .changeAcountType,
                                          activeColor:
                                              theme.colorScheme.primary,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      AccountType.checking,
                                      style:
                                          theme.textTheme.labelSmall!.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: theme.colorScheme.tertiary,
                                      ),
                                    ),
                                    Radio<String>(
                                      value: AccountType.savings,
                                      groupValue:
                                          controller.accountType,
                                      onChanged: controller
                                          .changeAcountType,
                                      activeColor: theme.colorScheme.primary,
                                      hoverColor: theme.colorScheme.tertiary,
                                    ),
                                    Text(
                                      AccountType.savings,
                                      style:
                                          theme.textTheme.labelSmall!.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: theme.colorScheme.tertiary,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                Button(
                  title: "Finalizar cadastro",
                  onPressed: () =>
                      controller.signUp(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
