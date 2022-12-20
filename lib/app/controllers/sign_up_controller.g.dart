// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignUpController on _SignUpController, Store {
  late final _$accountTypeAtom =
      Atom(name: '_SignUpController.accountType', context: context);

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

  late final _$buttonSignUpPressedAsyncAction =
      AsyncAction('_SignUpController.buttonSignUpPressed', context: context);

  @override
  Future<String?> buttonSignUpPressed() {
    return _$buttonSignUpPressedAsyncAction
        .run(() => super.buttonSignUpPressed());
  }

  late final _$signUpAsyncAction =
      AsyncAction('_SignUpController.signUp', context: context);

  @override
  Future<void> signUp() {
    return _$signUpAsyncAction.run(() => super.signUp());
  }

  late final _$_SignUpControllerActionController =
      ActionController(name: '_SignUpController', context: context);

  @override
  void changeAcountType(String? value) {
    final _$actionInfo = _$_SignUpControllerActionController.startAction(
        name: '_SignUpController.changeAcountType');
    try {
      return super.changeAcountType(value);
    } finally {
      _$_SignUpControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accountType: ${accountType}
    ''';
  }
}
