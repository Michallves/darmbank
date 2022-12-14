import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final void Function() onTap;

  const CustomListTile({
    required this.title,
    required this.imagePath,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Image.asset(imagePath),
          title: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
          ),
          onTap: onTap,
        ),
        const Divider(
          thickness: 1,
          height: 30,
          endIndent: 20,
          indent: 20,
        ),
      ],
    );
  }
}
