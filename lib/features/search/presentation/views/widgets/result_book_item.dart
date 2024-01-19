import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/book_cover_item.dart';
import '../../../../../core/widgets/book_cover_details.dart';

class ResultBookItem extends StatelessWidget {
  const ResultBookItem({
    super.key,
    required this.bookItem,
  });
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double heightRatio = 0.2;
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsView(bookItem: bookItem),
          )),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: screenH * heightRatio,
        child: Row(
          children: [
            BookCover(
              heightRatio: heightRatio,
              bookItem: bookItem,
            ),
            BookCoverDetails(
              author: bookItem.volumeInfo.authors?[0] ?? 'i am author',
              title: bookItem.volumeInfo.title ?? 'ahmed Nasser',
            )
          ],
        ),
      ),
    );
  }
}
