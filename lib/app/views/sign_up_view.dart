import 'package:darmbank/app/models/account_type.dart';
import 'package:darmbank/app/widgets/button.dart';
import 'package:darmbank/app/widgets/textField_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import '../controllers/sign_up_controller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
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
                      TextFieldWidget(
                        label: "Nome completo",
                        controller: controller.name,
                      ),
                      TextFieldWidget(
                        label: "Email",
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.email,
                      ),
                      TextFieldWidget(
                        label: "CPF",
                        controller: controller.cpf,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      TextFieldWidget(
                        label: "Telefone",
                        controller: controller.telephone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      TextFieldWidget(
                        label: "Senha",
                        obscureText: true,
                        controller: controller.password,
                      ),
                      TextFieldWidget(
                        label: "Confirmar senha",
                        obscureText: true,
                        controller: controller.confirmPassword,
                      ),
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
                                          groupValue: controller.accountType,
                                          onChanged:
                                              controller.changeAcountType,
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
                                      groupValue: controller.accountType,
                                      onChanged: controller.changeAcountType,
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
                  onPressed: () => controller.buttonSignUpPressed(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // static void showModalBottom(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     backgroundColor: Colors.transparent,
  //     isDismissible: false,
  //     enableDrag: false,
  //     builder: (context) {
  //       return Container(
  //         padding:
  //             const EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 50),
  //         height: MediaQuery.of(context).size.height * 0.40,
  //         decoration: BoxDecoration(
  //           boxShadow: [
  //             BoxShadow(
  //               color: Theme.of(context).colorScheme.primary,
  //               spreadRadius: -1,
  //               offset: const Offset(0, -6),
  //             )
  //           ],
  //           color: Theme.of(context).colorScheme.onPrimary,
  //           borderRadius: const BorderRadius.only(
  //             topLeft: Radius.circular(35),
  //             topRight: Radius.circular(35),
  //           ),
  //         ),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             const Text(
  //               "Parabéns você acaba de facilitar sua vida",
  //               style: TextStyle(
  //                 fontSize: 40,
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.w600,
  //                 fontFamily: "Montserrat",
  //               ),
  //             ),
  //             SizedBox(
  //               width: MediaQuery.of(context).size.width * 0.6,
  //               child: const Text(
  //                 "Que tal conferir nossas funcionalidades agora?",
  //                 style: TextStyle(fontSize: 18, color: Colors.black),
  //               ),
  //             ),
  //             Button(
  //               margin: const EdgeInsets.all(0),
  //               title: "Página Inicial",
  //               onPressed: () {
  //                 Navigator.of(context).popUntil((route) => route.isFirst);
  //                 Navigator.of(context).pushReplacementNamed(Routes.MAIN);
  //               },
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}
