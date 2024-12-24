import 'package:flutter/material.dart';

import '../../../data/models/user_info_model.dart';
import 'custom_textformfield.dart';

class RegisterPassword extends StatefulWidget {
  const RegisterPassword(this.userInfoModel  ,{super.key});
  final UserInfoModel userInfoModel;

  @override
  State<RegisterPassword> createState() => _RegisterPasswordState();
}

class _RegisterPasswordState extends State<RegisterPassword> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'كلمة المرور',
      obscureText: isObscure,
      onSaved: (password) => widget.userInfoModel.password = password,
      validator: (password){
        if ( password == null || password.isEmpty) {
          return 'الرجاء ادخال كلمة المرور' ;
        }
        return null;
      },
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        child: isObscure
            ? const Icon(
                Icons.visibility,
                color: Color(0xffC9CECF),
              )
            : const Icon(
                Icons.visibility_off,
                color: Color(0xffC9CECF),
              ),
      ),
    );
  }
}
