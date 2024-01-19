import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_icon_button.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    String bookName = '';
    return TextFormField(
      onChanged: (value) {
        bookName = value;
      },
      decoration: InputDecoration(
        hintText: 'search',
        suffixIcon: SearchIconButton(
            onPressed: () => BlocProvider.of<SearchCubit>(context)
                .getSearchResult(bookName)),
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
