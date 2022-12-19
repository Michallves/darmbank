import 'package:darmbank/app/views/my_credit_cards_view.dart';
import 'package:darmbank/app/views/user_profile_view.dart';
import 'package:darmbank/app/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _tabIndex = 0;

  final List<Widget> _tabs = const [
    HomeView(),
    HomeView(),
    HomeView(),
    MyCreditCardsView(),
    UserProfileView(),
  ];

  void _changeTab(int index) {
    //Condição para não atualizar tela quando o valor permanecer o mesmo
    if (_tabIndex == index) return;

    setState(() {
      _tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: _tabs[_tabIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _tabIndex,
        onTap: _changeTab,
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
            activeIcon:
                Icon(Icons.qr_code_scanner, color: theme.colorScheme.onPrimary),
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
            activeIcon: Icon(Icons.person, color: theme.colorScheme.onPrimary),
            bubbleColor: theme.colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
