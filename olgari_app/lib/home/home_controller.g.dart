// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$showToasterAtom = Atom(name: '_HomeBase.showToaster');

  @override
  bool get showToaster {
    _$showToasterAtom.reportRead();
    return super.showToaster;
  }

  @override
  set showToaster(bool value) {
    _$showToasterAtom.reportWrite(value, super.showToaster, () {
      super.showToaster = value;
    });
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void changeShowToaster(bool value) {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.changeShowToaster');
    try {
      return super.changeShowToaster(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showToaster: ${showToaster}
    ''';
  }
}
