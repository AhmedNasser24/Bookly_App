import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/show_error_message.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_newest_book/fetch_newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/loading_newest_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewestBookCubit, FetchNewestBookState>(
      builder: (context, state) {
        if (state is FetchNewestBookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:  8.0),
                  child: NewestBookItem(
                    bookItem: state.books[index],
                  ),
                ),
              ),
            ),
          );
        } else if (state is FetchNewestBookFailure) {
          return SliverToBoxAdapter(
            child: ShowErrorMessage(errMessage: state.errMessage),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 7,
              (context, index) => Shimmer.fromColors(
                baseColor: Colors.yellow,
                highlightColor: Colors.red,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                  child: LoadingNewestBookItem(),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
