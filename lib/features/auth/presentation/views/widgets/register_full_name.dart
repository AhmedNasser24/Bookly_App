import 'package:flutter/material.dart';

import '../../../data/models/user_info_model.dart';
import 'custom_textformfield.dart';

class RegisterFullName extends StatelessWidget {
  const RegisterFullName(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "fullname",
      onSaved: (fullName) => userInfoModel.fullName = fullName,
      validator: (fullName) {
        if (fullName == null || fullName.isEmpty) return "field is required";
        return null;
      },
    );
  }
}
