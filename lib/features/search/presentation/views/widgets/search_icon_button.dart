import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search_sharp,
        color: Colors.white.withOpacity(0.7),
        size: 26,
      ),
    );
  }
}
