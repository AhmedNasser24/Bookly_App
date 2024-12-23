import '../../../../constants.dart';

class LoginModel {
  String? email, password;
  LoginModel(this.email, this.password);

  toJson() => {
        kEmail: email,
        kPassword: password,
      };
}
