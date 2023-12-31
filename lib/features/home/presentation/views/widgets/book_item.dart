import 'package:flutter/material.dart';

import '../../../../../core/widgets/book_cover_item.dart';
import '../../../../../core/widgets/book_cover_details.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
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
          BookCover(
            heightRatio: heightRatio,
            image: 'assets/images/images.jpg',
          ),
          const BookCoverDetails()
        ],
      ),
    );
  }
}
