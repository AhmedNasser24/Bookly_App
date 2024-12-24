import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.obscureText,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.onSaved,
  });
  final String hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.semibold14.copyWith(color: kPrimaryColor),
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      obscuringCharacter: '.',
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: const Color(0xffF9FAFA),
        filled: true,
        hintText: hintText,
        hintStyle: AppStyles.bold13.copyWith(color: kGrayColor),
        border: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        errorBorder: outLineErrorInputBorder(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color(0xffE6E9EA),
        width: 1,
      ),
    );
  }
  OutlineInputBorder outLineErrorInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 1,
      ),
    );
  }
}
