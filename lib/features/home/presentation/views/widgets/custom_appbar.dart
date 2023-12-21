import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.logo , height: 32, ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp , color: Colors.white, size: 32,)),
      ],
    );
  }
}