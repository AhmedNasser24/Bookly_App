import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  const SearchIconButton({
    super.key, this.onPressed,
  });
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ,
      icon: Icon(
        Icons.search_sharp,
        color: Colors.white.withOpacity(0.7),
        size: 26,
      ),
    );
  }
}
