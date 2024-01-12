import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'custom_appbar.dart';
import 'list_of_books_cover.dart';
import 'newest_book_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding, vertical: kVerticalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const Gap(20),
                const ListOfBooksCover(),
                const Gap(40),
                Text(
                  'Newest Book',
                  style: Style.bestSellerStyle,
                ),
                const Gap(15),
              ],
            ),
          ),
        ),
        const NewestBooksList(),
      ],
    );
  }
}
