import 'package:flutter/material.dart';

import '../../../data/models/user_info_model.dart';
import 'custom_textformfield.dart';

class RegisterUserName extends StatelessWidget {
  const RegisterUserName(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "username ",
      onSaved: (username) => userInfoModel.userName = username,
      validator: (username) {
        if (username == null || username.isEmpty) return "ادخل اسم المستخدم";
        return null;
      },
    );
  }
}
