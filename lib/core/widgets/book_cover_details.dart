import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';
import 'book_rate.dart';

class BookCoverDetails extends StatelessWidget {
  const BookCoverDetails({
    super.key, required this.title, required this.author,
  });
  final String title ;
  final String author ;

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
              title,
              style: Style.textStyle18.copyWith(fontFamily: 'GT Sectra Fine'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Text(
              author,
              style: Style.textStyle14,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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
