import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.label, this.hintText, this.controller});
  final String label;
  final String? hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width - 20,
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(
            width: width,
            child: Text(
              label,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.left,
            ),
          ),
          const Padding(padding: EdgeInsets.all(3)),
          SizedBox(
            height: 50,
            width: width,
            child: TextFormField(
              cursorHeight: 25,
              controller: controller,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
