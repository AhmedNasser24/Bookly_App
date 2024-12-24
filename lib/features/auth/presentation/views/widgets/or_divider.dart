
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'custom_divider.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDivider(),
        ),
        Text(
          "   او   ",
          style: AppStyles.semibold16,
        ),
        Expanded(
          child: CustomDivider(),
        ),
      ],
    );
  }
}

