import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import '../register_view.dart';

class DoNotHaveAccountTextButton extends StatelessWidget {
  const DoNotHaveAccountTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "don't have an account?",
          style: AppStyles.semibold14.copyWith(color: kGrayColor),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context , RegisterView.routeName);
          },
          child: Text(
            " register",
            style: AppStyles.semibold14.copyWith(color: kDarkGreenColor),
          ),
        ),
      ],
    );
  }
}
