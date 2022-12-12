import 'package:darmbank/app/views/user_profile_view.dart';
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
    HomeView(),
    UserProfileView(),
  ];

  void changeNavigatorItem() {}

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);

    return Scaffold(
      body: _tabs[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: colorScheme.tertiary,
            ),
            label: "Início",
            tooltip: "Início",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notificações",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Scanner",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cartões",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
        onTap: (value) {
          setState(() {
            _tabIndex = value;
          });
        },
      ),
    );
  }
}
