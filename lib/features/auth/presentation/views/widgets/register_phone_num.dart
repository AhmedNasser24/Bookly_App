import 'package:flutter/material.dart';

import '../../../data/models/user_info_model.dart';
import 'custom_textformfield.dart';

class RegisterPhoneNum extends StatelessWidget {
  const RegisterPhoneNum(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      keyboardType: TextInputType.phone,
      hintText: "phone number",
      onSaved: (phone) => userInfoModel.phone = phone,
      validator: (phone) {
        if (phone == null || phone.isEmpty) return "field is required";
        return null;
      },
    );
  }
}
