import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/show_error_message.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'result_book_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchInitial) {
          return const Expanded(
            child: Center(
              child: Text(
                'search for you favourite books',
                style: AppStyles.bold22,
              ),
            ),
          );
        } else if (state is SearchSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  ResultBookItem(bookItem: state.books[index]),
            ),
          );
        } else if (state is SearchFailure) {
          return Expanded(
              child: ShowErrorMessage(errMessage: state.errMessage));
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
