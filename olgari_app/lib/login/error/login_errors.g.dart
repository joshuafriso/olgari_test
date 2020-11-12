// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_errors.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginErrors on _LoginErrorsBase, Store {
  Computed<bool> _$hasEmailErrorsComputed;

  @override
  bool get hasEmailErrors =>
      (_$hasEmailErrorsComputed ??= Computed<bool>(() => super.hasEmailErrors,
              name: '_LoginErrorsBase.hasEmailErrors'))
          .value;
  Computed<bool> _$hasPasswordErrorsComputed;

  @override
  bool get hasPasswordErrors => (_$hasPasswordErrorsComputed ??= Computed<bool>(
          () => super.hasPasswordErrors,
          name: '_LoginErrorsBase.hasPasswordErrors'))
      .value;

  final _$emailAtom = Atom(name: '_LoginErrorsBase.email');

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

  final _$passwordAtom = Atom(name: '_LoginErrorsBase.password');

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

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
hasEmailErrors: ${hasEmailErrors},
hasPasswordErrors: ${hasPasswordErrors}
    ''';
  }
}
