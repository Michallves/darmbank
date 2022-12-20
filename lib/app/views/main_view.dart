import 'package:darmbank/app/models/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import 'package:darmbank/app/widgets/custom_bottom_navigation_bar.dart';
import 'package:darmbank/app/controllers/main_screen_controller.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = GetIt.I.get<MainScreenController>();

    return Observer(
      builder: (context) => Scaffold(
        body: controller.tab,
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: controller.tabIndex,
          onTap: (index) => controller.changeTab(index),
          items: [
            CustomNavBarItem(
              icon: SvgPicture.asset(CustomIcons.home),
              label: "Home",
              activeIcon: SvgPicture.asset(
                CustomIcons.home,
                color: theme.colorScheme.onPrimary,
              ),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: SvgPicture.asset(CustomIcons.notification),
              label: "Notificações",
              activeIcon: SvgPicture.asset(
                CustomIcons.notification,
                color: theme.colorScheme.onPrimary,
              ),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: SvgPicture.asset(CustomIcons.scanner),
              label: "Scanner",
              activeIcon: SvgPicture.asset(
                CustomIcons.scanner,
                color: theme.colorScheme.onPrimary,
              ),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              //icon: const Icon(Icons.credit_card_outlined),
              icon: SvgPicture.asset(CustomIcons.credit_card),
              label: "Cartões",
              activeIcon: SvgPicture.asset(
                CustomIcons.credit_card,
                color: theme.colorScheme.onPrimary,
              ),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: SvgPicture.asset(CustomIcons.person),
              label: "Perfil",
              activeIcon: SvgPicture.asset(
                CustomIcons.person,
                color: theme.colorScheme.onPrimary,
              ),
              bubbleColor: theme.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
