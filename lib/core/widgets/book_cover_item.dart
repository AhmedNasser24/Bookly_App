import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.heightRatio,
    required this.image,
    this.onTap,
  });
  final double heightRatio;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kHorizontalPadding),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * heightRatio,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
