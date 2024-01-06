import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class WayToBuyBook extends StatelessWidget {
  const WayToBuyBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kHorizontalPadding + 12.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.08,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(kBorderRadius),
                  ),
                ),
                child: Center(
                  child: Text(
                    '19.99\$',
                    style: Style.textStyle14.copyWith(color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFEF8164),
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(kBorderRadius),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Free Preview',
                    style: Style.textStyle14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
