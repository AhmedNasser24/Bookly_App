import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/book_cover_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/you_can_also_like_these_books.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'appbar_of_book_detail.dart';
import '../../../../../core/widgets/book_rate.dart';
import 'way_to_buy_book.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    // double screenW = MediaQuery.of(context).size.width ;
    const double myScreenH = 739.3333333333334;
    // const double myScreenW = 360.0 ;
    return Column(
      children: [
        const AppBarOfBookDetail(),
        Gap(20 * screenH / myScreenH),
        const BookCover(heightRatio: 0.33, image: 'assets/images/images.jpg'),
        Gap(25 * screenH / myScreenH),
        const Text(
          'The Forest Book',
          style: Style.textStyle25,
        ),
        Text(
          'Raduared Kipling',
          style: Style.textStyle14.copyWith(color: Colors.grey),
        ),
        const BookRating(),
        Gap(30 * screenH / myScreenH),
        const WayToBuyBook(),
        Gap(30 * screenH / myScreenH),
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: kHorizontalPadding),
            child: Text(
              'you can also like',
              style: Style.textStyle14,
            ),
          ),
        ),
        Gap(12 * screenH / myScreenH),
        const YouCanAlsoLikeTheseBooks(),
        Gap(15 * screenH / myScreenH),
      ],
    );
  }
}
