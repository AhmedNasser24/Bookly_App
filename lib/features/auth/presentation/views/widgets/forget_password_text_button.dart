import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "forget password?",
            style: AppStyles.semibold13.copyWith(color: kLightGreenColor),
          ),
        )
      ],
    );
  }
}
