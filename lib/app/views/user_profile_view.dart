import 'package:darmbank/app/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage("assets/images/user_image.png"),
            radius: MediaQuery.of(context).size.width * 0.25,
            //radius: 100,
          ),
          Text(
            "Olá fernando",
            style: theme.textTheme.labelMedium,
          ),
          SizedBox(
            child: Column(
              children: [
                CustomListTile(
                  title: "Alterar seus dados",
                  imagePath: "assets/images/change_data.png",
                  onTap: () {},
                ),
                CustomListTile(
                  title: "Alterar sua senha",
                  imagePath: "assets/images/change_password.png",
                  onTap: () {},
                ),
                CustomListTile(
                  title: "Termos de privacidade",
                  imagePath: "assets/images/terms_of_privacy.png",
                  onTap: () {},
                ),
                CustomListTile(
                  title: "Sair da conta",
                  imagePath: "assets/images/logout.png",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
