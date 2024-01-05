import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'search_icon_button.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: 'search',
              suffixIcon: const SearchIconButton(),
              enabledBorder: borderDecoration(),
              focusedBorder: borderDecoration(),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder borderDecoration() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
