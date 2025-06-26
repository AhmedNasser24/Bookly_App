import 'package:flutter/material.dart';

import '../../../data/models/user_info_model.dart';
import 'custom_textformfield.dart';

class RegisterEmail extends StatelessWidget {
  const RegisterEmail(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "email",
      onSaved: (email) {
        if (email != null) {
          userInfoModel.email = email.replaceAll(RegExp(r' '), '');
        }
      },
      validator: (email) {
        // to remove any spaces in the email
        if (email != null) {
          email = email.replaceAll(RegExp(r' '), '');
        }
        if (email == null || email.isEmpty) {
          return 'البريد الإلكتروني مطلوب';
        }
        return null;
      },
    );
  }
}
