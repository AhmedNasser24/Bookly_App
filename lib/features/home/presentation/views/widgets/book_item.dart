import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/book_cover_item.dart';
import '../../../../../core/widgets/book_cover_details.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({
    super.key,
    required this.bookItem,
  });
  final BookModel bookItem;
  @override
  Widget build(BuildContext context) {
    double heightRatio = 0.2;
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BookDetailsView(bookItem: bookItem))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            BookCover(
              heightRatio: heightRatio,
              bookItem: bookItem,
            ),
            BookCoverDetails(
                title: bookItem.volumeInfo.title ?? 'i am author',
                author: bookItem.volumeInfo.authors?[0] ?? 'ahmed nasser')
          ],
        ),
      ),
    );
  }
}

// used in shimmer

