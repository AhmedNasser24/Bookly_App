import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    double screenH = MediaQuery.of(context).size.height;
    double heightRatio = 0.2;
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRoutes.kBookDetailsView , extra: bookItem ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: screenH * heightRatio,
        child: Row(
          children: [
            BookCover(
              heightRatio: heightRatio,
              bookItem : bookItem,
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
