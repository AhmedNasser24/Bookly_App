
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const Gap(6),
        const Text(
          '4.8',
          style: Style.textStyle14,
        ),
        const Gap(3),
        Text(
          '(2942)',
          style: Style.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
