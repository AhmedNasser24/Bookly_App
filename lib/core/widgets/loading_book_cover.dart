import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class LoadingBookCover extends StatelessWidget {
  const LoadingBookCover({
    super.key,
    required this.heightRatio,
  });
  final double heightRatio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kHorizontalPadding),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * heightRatio,
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kBorderRadius),
            child: Image.asset('assets/images/images.jpg' , fit: BoxFit.fill,),
          ),
        ),
      ),
    );
  }
}
