import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';
import 'book_rate.dart';

class BookCoverDetails extends StatelessWidget {
  const BookCoverDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: (180.0 / myScreenW) * screenW,
            child: Text(
              'Harry Potter and the Goblet Of Fire',
              style: Style.textStyle18.copyWith(fontFamily: 'GT Sectra Fine'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Opacity(
            opacity: 0.6,
            child: Text(
              'J.K.Rowling',
              style: Style.textStyle14,
            ),
          ),
          const Row(
            children: [
              Text(
                '19.99\$',
                style: Style.textStyle18,
              ),
              Spacer(),
              BookRating(),
            ],
          ),
        ],
      ),
    );
  }
}
