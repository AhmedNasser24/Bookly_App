import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';

class AlreadyHaveAccountTextButton extends StatelessWidget {
  const AlreadyHaveAccountTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "تمتلك حساب بالفعل؟",
          style: AppStyles.semibold14.copyWith(color: kGrayColor),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            " تسجيل دخول",
            style: AppStyles.semibold14.copyWith(color: kDarkGreenColor),
          ),
        ),
      ],
    );
  }
}
