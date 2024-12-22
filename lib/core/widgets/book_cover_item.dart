import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/data/model/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    super.key,
    required this.heightRatio,
    this.onTap,
    required this.bookItem,
  });
  final double heightRatio;
  final BookModel? bookItem;
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kBorderRadius),
              child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: bookItem?.volumeInfo.imageLinks?.thumbnail ?? '',
                  placeholder: (context, url) => const CustomLoadingIndicator(),
                  errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        size: 40,
                      )),
            ),
          ),
        ),
      ),
    );
  }
}

