import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String? hintText;
  final double? width;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final void Function(String?)? onSaved;
  final EdgeInsets? margin;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLenght;
  final bool? obscureText;

  const TextFieldWidget({
    super.key,
    this.controller,
    required this.label,
    this.width,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.onSaved,
    this.margin,
    this.textAlign,
    this.inputFormatters,
    this.maxLenght,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          margin ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                key: key,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: hintText,
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade300,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Montserrat",
                  ),
                ),
                controller: controller,
                validator: validator,
                keyboardType: keyboardType,
                maxLength: maxLenght,
                onSaved: onSaved,
                obscureText: obscureText ?? false,
                obscuringCharacter: "+",
                textAlign: textAlign ?? TextAlign.left,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                ),
                inputFormatters: inputFormatters,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
