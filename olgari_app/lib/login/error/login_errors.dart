import 'package:mobx/mobx.dart';

part 'login_errors.g.dart';

class LoginErrors = _LoginErrorsBase with _$LoginErrors;

abstract class _LoginErrorsBase with Store {
  @observable
  String email;

  @observable
  String password;

  @computed
  bool get hasEmailErrors => email != null;

  @computed
  bool get hasPasswordErrors => password != null;
}
