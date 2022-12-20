import '../widgets/button.dart';
import '../widgets/creditCard.dart';
import '../widgets/textField_widget.dart';
import 'package:flutter/material.dart';

class RegisterCreditCard extends StatelessWidget {
  const RegisterCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        title: Text(
          "Cadastrar cartão",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CreditCard(
            width: MediaQuery.of(context).size.width * 0.92,
          ),
          const TextFieldWidget(
            label: "Nome Completo",
            hintText: "seu nome",
          ),
          const TextFieldWidget(
            label: "Número do cartão",
            hintText: "XXXX XXXX XXXX XXXX",
          ),
          Row(
            children: [
              TextFieldWidget(
                label: "Data de validade",
                hintText: "00/0000",
                width: MediaQuery.of(context).size.width * 0.28,
                textAlign: TextAlign.center,
                maxLenght: 6,
              ),
              TextFieldWidget(
                label: "CVC",
                hintText: "000",
                width: MediaQuery.of(context).size.width * 0.15,
                textAlign: TextAlign.center,
                maxLenght: 3,
              ),
            ],
          ),
          Button(
              title: "Finalizar cadastro",
              onPressed: () => Navigator.of(context).pop()),
        ],
      ),
    );
  }
}
