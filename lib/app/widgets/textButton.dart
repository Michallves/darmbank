import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  const TextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: GestureDetector(
        onTap: () => onPressed,
        child: Text(title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            )),
      ),
    );
  }
}
