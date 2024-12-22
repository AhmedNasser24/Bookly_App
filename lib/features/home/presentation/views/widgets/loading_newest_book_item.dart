import 'package:bookly_app/core/widgets/book_cover_details.dart';
import 'package:bookly_app/core/widgets/loading_book_cover.dart';
import 'package:flutter/material.dart';

class LoadingNewestBookItem extends StatelessWidget {
  const LoadingNewestBookItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double heightRatio = 0.2;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: screenH * heightRatio,
      child: Row(
        children: [
          LoadingBookCover(
            heightRatio: heightRatio,
          ),
          const BookCoverDetails(title: 'i am author', author: 'ahmed nasser')
        ],
      ),
    );
  }
}