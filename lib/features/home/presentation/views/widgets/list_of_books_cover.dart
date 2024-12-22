import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/core/widgets/loading_book_cover.dart';
import 'package:bookly_app/core/widgets/show_error_message.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_feature_book_cubit/fetch_featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/widgets/book_cover_item.dart';

class ListOfBooksCover extends StatelessWidget {
  const ListOfBooksCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    return BlocBuilder<FetchFeaturedBookCubit, FetchFeaturedBookState>(
      builder: (context, state) {
        if (state is FetchFeaturedBookSucceed) {
          return SizedBox(
            height: screenH * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.book.length,
              itemBuilder: (context, index) => BookCover(
                  heightRatio: 0.3,
                  bookItem: state.book[index],
                  onTap: () => GoRouter.of(context).push(
                      AppRoutes.kBookDetailsView,
                      extra: state.book[index])),
            ),
          );
        } else if (state is FetchFeaturedBookFailure) {
          return ShowErrorMessage(errMessage: state.errMessage);
        } else {
          return SizedBox(
            height: screenH * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.blue,
                child: const LoadingBookCover(heightRatio: 0.3),
              ),
            ),
          );
        }
      },
    );
  }
}
