import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_feature_book_cubit/fetch_featured_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_newest_book/fetch_newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'custom_appbar.dart';
import 'list_of_books_cover.dart';
import 'newest_book_list.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  Future<void> _refreshData() async {
    BlocProvider.of<FetchFeaturedBookCubit>(context).getFeatureBooks();
    BlocProvider.of<FetchNewestBookCubit>(context).getNewestBooks();
    // Simulate fetching new data
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _refreshData,
      displacement: 150.0,
      strokeWidth: 3,
      backgroundColor: Colors.transparent,
      color: Colors.blue,
      child: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
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
                    style: AppStyles.bestSellerStyle,
                  ),
                  const Gap(15),
                ],
              ),
            ),
          ),
          const NewestBooksList(),
        ],
      ),
    );
  }
}
