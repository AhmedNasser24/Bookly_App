import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/show_error_message.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_similar_book.dart/fetch_similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/book_cover_item.dart';

class YouCanAlsoLikeTheseBooks extends StatelessWidget {
  const YouCanAlsoLikeTheseBooks({
    super.key,
    required this.bookItem,
  });
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBookCubit, FetchSimilarBookState>(
      builder: (context, state) {
        if (state is FetchSimilarBookSuccess) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: kHorizontalPadding),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => BookCover(
                  heightRatio: 0.12,
                  bookItem: state.books[index],
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BookDetailsView(bookItem: state.books[index])),
                  ),
                ),
              ),
            ),
          );
        } else if (state is FetchSimilarBookFailure) {
          return ShowErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
