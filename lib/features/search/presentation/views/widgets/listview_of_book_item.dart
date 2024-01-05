import 'package:flutter/material.dart';

import 'book_item.dart';

class ListViewOfBookItem extends StatelessWidget {
  const ListViewOfBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => const BookItem(),
      ),
    );
  }
}
