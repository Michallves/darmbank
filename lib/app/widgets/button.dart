import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.title, required this.onPressed});

  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () => onPressed,
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
            ),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
