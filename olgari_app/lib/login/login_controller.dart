import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

import 'error/login_errors.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  final LoginErrors error = LoginErrors();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool isEmailInput = true;

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword)
    ];
  }

  @action
  void changeEmail(String value) {
    email = value;
  }

  @action
  void changePassword(String value) {
    password = value;
  }

  @action
  void changeIsEmail(bool value) {
    isEmailInput = value;
  }

  @action
  void validateEmail(String value) {
    if (isNull(value) || value.isEmpty) {
      error.email = "Email inválido. Tente de novo".toUpperCase();
    } else if (!isEmail(value)) {
      error.email = "Email inválido. Tente de novo".toUpperCase();
    } else if (value == "olga@olgari.com.br") {
      error.email = null;
    }
  }

  @action
  void validatePassword(String value) {
    if (isNull(value) || value.isEmpty) {
      error.password = "Senha inválida. Tente de novo".toUpperCase();
    } else if (value.length < 6) {
      error.password = "Senha inválida. Tente de novo".toUpperCase();
    } else if (value == "123456") {
      error.password = null;
    }
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }
}
