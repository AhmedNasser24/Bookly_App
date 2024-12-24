import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../search/presentation/views/search_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesLogo,
          height: 32,
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              // GoRouter.of(context).push(AppRoutes.kSearchView) ;
              Navigator.pushNamed(context , SearchView.routeName);
            },
            icon: const Icon(
              Icons.search_sharp,
              color: Colors.white,
              size: 32,
            )),
      ],
    );
  }
}
