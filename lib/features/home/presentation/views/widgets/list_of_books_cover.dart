import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_cover_item.dart';

class ListOfBooksCover extends StatelessWidget {
  const ListOfBooksCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => BookCoverItem(
          heightRatio: 0.3,
          image: 'assets/images/images.jpg',
          onTap: () => context.pushReplacement(AppRoutes.kBookDetailsView)
        ),
      ),
    );
  }
}
