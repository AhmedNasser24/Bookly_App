import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarOfBookDetail extends StatelessWidget {
  const AppBarOfBookDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.close_rounded),
        ),
        const Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
          ),
        ),
      ],
    );
  }
}
