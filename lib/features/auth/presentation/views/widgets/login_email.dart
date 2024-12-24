import 'package:flutter/material.dart';

import '../../../data/models/login_model.dart';
import 'custom_textformfield.dart';

class LoginEmail extends StatelessWidget {
  const LoginEmail(
    this.loginModel, {
    super.key,
  });
  final LoginModel loginModel;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: (email) {
        if (email != null) {
          loginModel.email = email.replaceAll(RegExp(r' '), '');
        }
      },
      validator: (email) {
        // to remove any spaces in the email
        if (email != null) {
          email = email.replaceAll(RegExp(r' '), '');
        }
        // -----------------------------------------
        if (email == null || email.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      hintText: "email",
    );
  }
}
