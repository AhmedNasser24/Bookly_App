import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../data/models/user_info_model.dart';
import 'custom_textformfield.dart';

class RegisterPasswordAndConfirmPassword extends StatefulWidget {
  const RegisterPasswordAndConfirmPassword(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;

  @override
  State<RegisterPasswordAndConfirmPassword> createState() => _RegisterPasswordAndConfirmPasswordState();
}

class _RegisterPasswordAndConfirmPasswordState extends State<RegisterPasswordAndConfirmPassword> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextFormField(
          hintText: "password",
          obscureText: isObscure,
          onChanged: (password) => widget.userInfoModel.password = password,
          onSaved: (password) => widget.userInfoModel.password = password,
          validator: (password) {
            if (password == null || password.isEmpty) {
              return "field is required";
            }
            if (password != widget.userInfoModel.confirmPassword) {
              return "passwords do not match";
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
        ),
        const Gap(20),
        CustomTextFormField(
          hintText: "confirm password",
          obscureText: isObscure,
          onChanged: (confirmPassword) => widget.userInfoModel.confirmPassword = confirmPassword,
          onSaved: (confirmPassword) => widget.userInfoModel.confirmPassword = confirmPassword,
          validator: (confirmPassword) {
            if (confirmPassword == null || confirmPassword.isEmpty) {
              return "field is required";
            }
            if (widget.userInfoModel.password != confirmPassword) {
              return "passwords do not match";
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
        ),
      ],
    );
  }
}
