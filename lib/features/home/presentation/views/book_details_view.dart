import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_similar_book.dart/fetch_similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_detail_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookItem});
  final BookModel bookItem;

  static const String routeName = "BookDetailsView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchSimilarBookCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BookDetailsBody(
            bookItem: bookItem,
          ),
        ),
      ),
    );
  }
}
