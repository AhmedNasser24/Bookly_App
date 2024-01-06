import 'package:flutter/material.dart';

import 'result_book_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => const ResultBookItem(),
      ),
    );
  }
}
