import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'widgets/book_detail_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookItem});
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        bookItem: bookItem,
      ),
    );
  }
}
