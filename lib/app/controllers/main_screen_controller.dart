import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:darmbank/app/views/my_credit_cards_view.dart';
import 'package:darmbank/app/views/user_profile_view.dart';
import 'package:darmbank/app/views/home_view.dart';

part 'main_screen_controller.g.dart';

class MainScreenController = _MainScreenController with _$MainScreenController;

abstract class _MainScreenController with Store {
  final List<Widget> _tabs = const [
    HomeView(),
    HomeView(),
    HomeView(),
    MyCreditCardsView(),
    UserProfileView(),
  ];

  @observable
  int tabIndex = 0;

  @action
  void changeTab(int index) {
    //Condição para não atualizar tela quando o valor permanecer o mesmo
    if (tabIndex == index) return;

    tabIndex = index;
  }

  @computed
  Widget get tab => _tabs[tabIndex];
}
