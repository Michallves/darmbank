// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserForm on _UserFormBase, Store {
  late final _$emailAtom = Atom(name: '_UserFormBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_UserFormBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$nameAtom = Atom(name: '_UserFormBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$_UserFormBaseActionController =
      ActionController(name: '_UserFormBase', context: context);

  @override
  dynamic changeEmail(String value) {
    final _$actionInfo = _$_UserFormBaseActionController.startAction(
        name: '_UserFormBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_UserFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePassword(String value) {
    final _$actionInfo = _$_UserFormBaseActionController.startAction(
        name: '_UserFormBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_UserFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeName(String value) {
    final _$actionInfo = _$_UserFormBaseActionController.startAction(
        name: '_UserFormBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$_UserFormBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
name: ${name}
    ''';
  }
}
