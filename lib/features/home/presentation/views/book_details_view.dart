import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetch_similar_book.dart/fetch_similar_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/book_detail_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookItem});
  final BookModel bookItem;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchSimilarBookCubit>(context).getSimilarBooks(category: widget.bookItem.volumeInfo.categories![0] ?? '' );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        bookItem: widget.bookItem,
      ),
    );
  }
}
