import 'package:mobx/mobx.dart';

part 'main_screen_controller.g.dart';

class MainScreenController = _MainScreenController with _$MainScreenController;

abstract class _MainScreenController with Store {
  @observable
  int tabIndex = 0;

  @action
  void changeTab(int index) {
    //Condição para não atualizar tela quando o valor permanecer o mesmo
    if (tabIndex == index) return;

    tabIndex = index;
  }
}
