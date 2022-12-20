// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MainScreenController on _MainScreenController, Store {
  Computed<Widget>? _$tabComputed;

  @override
  Widget get tab => (_$tabComputed ??=
          Computed<Widget>(() => super.tab, name: '_MainScreenController.tab'))
      .value;

  late final _$tabIndexAtom =
      Atom(name: '_MainScreenController.tabIndex', context: context);

  @override
  int get tabIndex {
    _$tabIndexAtom.reportRead();
    return super.tabIndex;
  }

  @override
  set tabIndex(int value) {
    _$tabIndexAtom.reportWrite(value, super.tabIndex, () {
      super.tabIndex = value;
    });
  }

  late final _$_MainScreenControllerActionController =
      ActionController(name: '_MainScreenController', context: context);

  @override
  void changeTab(int index) {
    final _$actionInfo = _$_MainScreenControllerActionController.startAction(
        name: '_MainScreenController.changeTab');
    try {
      return super.changeTab(index);
    } finally {
      _$_MainScreenControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tabIndex: ${tabIndex},
tab: ${tab}
    ''';
  }
}
