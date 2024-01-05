import 'package:flutter/material.dart';

import 'search_icon_button.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: const SearchIconButton(),
        enabledBorder: borderDecoration(),
        focusedBorder: borderDecoration(),
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
