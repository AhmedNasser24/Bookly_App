import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/book_cover_item.dart';

class YouCanAlsoLikeTheseBooks extends StatelessWidget {
  const YouCanAlsoLikeTheseBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: kHorizontalPadding),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => const BookCover(
            heightRatio: 0.12,
            image: 'assets/images/images (1).jpg',
          ),
        ),
      ),
    );
  }
}
