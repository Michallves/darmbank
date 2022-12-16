import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title, required this.onPressed});

  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          elevation: const MaterialStatePropertyAll(0),
          textStyle: const MaterialStatePropertyAll(
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: "Montserrat",
            ),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
