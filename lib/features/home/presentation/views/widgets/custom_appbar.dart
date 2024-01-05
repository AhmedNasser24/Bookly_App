import 'package:bookly_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        IconButton(onPressed: () {
          // GoRouter.of(context).push(AppRoutes.kSearchView) ;
          context.push(AppRoutes.kSearchView) ;
        }, icon: const Icon(Icons.search_sharp , color: Colors.white, size: 32,)),
      ],
    );
  }
}