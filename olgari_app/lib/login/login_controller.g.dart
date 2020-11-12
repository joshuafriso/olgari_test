// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  final _$emailAtom = Atom(name: '_LoginBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_LoginBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isEmailInputAtom = Atom(name: '_LoginBase.isEmailInput');

  @override
  bool get isEmailInput {
    _$isEmailInputAtom.reportRead();
    return super.isEmailInput;
  }

  @override
  set isEmailInput(bool value) {
    _$isEmailInputAtom.reportWrite(value, super.isEmailInput, () {
      super.isEmailInput = value;
    });
  }

  final _$_LoginBaseActionController = ActionController(name: '_LoginBase');

  @override
  void changeEmail(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePassword(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changePassword');
    try {
      return super.changePassword(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIsEmail(bool value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.changeIsEmail');
    try {
      return super.changeIsEmail(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction(
        name: '_LoginBase.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isEmailInput: ${isEmailInput}
    ''';
  }
}
