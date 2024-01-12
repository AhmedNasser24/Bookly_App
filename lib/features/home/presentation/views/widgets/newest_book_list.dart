import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: NewestBookItem(),
        ),
        childCount: 18,
      ),
    );
  }
}
