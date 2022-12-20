import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
              icon: const Icon(Icons.home_outlined),
              label: "Home",
              activeIcon:
                  Icon(Icons.home_rounded, color: theme.colorScheme.onPrimary),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: const Icon(Icons.notifications_outlined),
              label: "Notificações",
              activeIcon:
                  Icon(Icons.notifications, color: theme.colorScheme.onPrimary),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: const Icon(Icons.qr_code_scanner_outlined),
              label: "Scanner",
              activeIcon: Icon(Icons.qr_code_scanner,
                  color: theme.colorScheme.onPrimary),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: const Icon(Icons.credit_card_outlined),
              label: "Cartões",
              activeIcon:
                  Icon(Icons.credit_card, color: theme.colorScheme.onPrimary),
              bubbleColor: theme.colorScheme.primary,
            ),
            CustomNavBarItem(
              icon: const Icon(Icons.person_outline),
              label: "Perfil",
              activeIcon:
                  Icon(Icons.person, color: theme.colorScheme.onPrimary),
              bubbleColor: theme.colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
