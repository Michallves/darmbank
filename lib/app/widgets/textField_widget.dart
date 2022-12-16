import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key, required this.label, this.hintText, this.controller});
  final String label;
  final String? hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF2C2A2F),
                  fontWeight: FontWeight.w100),
              textAlign: TextAlign.left,
            ),
          ),
          const Padding(padding: EdgeInsets.all(3)),
          SizedBox(
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: controller,
                textAlignVertical: TextAlignVertical.center,
                style: Theme.of(context).textTheme.labelMedium,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: hintText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
