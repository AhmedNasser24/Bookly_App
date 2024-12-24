import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widgets/book_cover_item.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/you_can_also_like_these_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../manager/fetch_similar_book.dart/fetch_similar_book_cubit.dart';
import 'appbar_of_book_detail.dart';
import '../../../../../core/widgets/book_rate.dart';
import 'way_to_buy_book.dart';

class BookDetailsBody extends StatefulWidget {
  const BookDetailsBody({super.key, required this.bookItem});
  final BookModel bookItem;

  @override
  State<BookDetailsBody> createState() => _BookDetailsBodyState();
}

class _BookDetailsBodyState extends State<BookDetailsBody> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarBookCubit>(context).getSimilarBooks(
        category: widget.bookItem.volumeInfo.categories![0] ?? '');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    const double myScreenH = 739.3333333333334;
    // const double myScreenW = 360.0 ;
    return Column(
      children: [
        const AppBarOfBookDetail(),
        Gap(16 * screenH / myScreenH),
        BookCover(
            heightRatio: 0.33,
            bookItem: widget.bookItem),
        Gap(25 * screenH / myScreenH),
        SizedBox(
          width: screenW * 3 / 4,
          child: Center(
            child: Text(
              widget.bookItem.volumeInfo.title ?? 'i am author',
              style: AppStyles.textStyle20,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SizedBox(
          width: screenW * 3 / 4,
          child: Center(
            child: Text(
              widget.bookItem.volumeInfo.authors?[0] as String? ?? 'ahmed nasser',
              style: AppStyles.semibold14.copyWith(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
          ),
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
              style: AppStyles.semibold14,
            ),
          ),
        ),
        Gap(12 * screenH / myScreenH),
        YouCanAlsoLikeTheseBooks(bookItem : widget.bookItem),
        Gap(15 * screenH / myScreenH),
      ],
    );
  }
}
