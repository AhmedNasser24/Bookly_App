import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'search_result_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Gap(30),
        CustomTextFormField(),
        Gap(20),
        Text(
          'Results',
          style: Style.bold22,
        ),
        Gap(20),
        SearchResultListView(),
      ]),
    );
  }
}
