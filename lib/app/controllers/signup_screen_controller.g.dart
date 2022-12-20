// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpScreenController on _SignUpScreenController, Store {
  late final _$accountTypeAtom =
      Atom(name: '_SignUpScreenController.accountType', context: context);

  @override
  String get accountType {
    _$accountTypeAtom.reportRead();
    return super.accountType;
  }

  @override
  set accountType(String value) {
    _$accountTypeAtom.reportWrite(value, super.accountType, () {
      super.accountType = value;
    });
  }

  late final _$_SignUpScreenControllerActionController =
      ActionController(name: '_SignUpScreenController', context: context);

  @override
  void changeAcountType(String? value) {
    final _$actionInfo = _$_SignUpScreenControllerActionController.startAction(
        name: '_SignUpScreenController.changeAcountType');
    try {
      return super.changeAcountType(value);
    } finally {
      _$_SignUpScreenControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void buttonDonePressed() {
    final _$actionInfo = _$_SignUpScreenControllerActionController.startAction(
        name: '_SignUpScreenController.buttonDonePressed');
    try {
      return super.buttonDonePressed();
    } finally {
      _$_SignUpScreenControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accountType: ${accountType}
    ''';
  }
}
