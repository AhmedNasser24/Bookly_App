import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/user_info_model.dart';
import 'custom_check_box.dart';

class CheckTerms extends StatelessWidget {
  const CheckTerms(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel ;
  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckBox(userInfoModel),
        const Gap(12),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: AppStyles.semibold13.copyWith(color: kGrayColor),
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: AppStyles.semibold13.copyWith(color: kLightGreenColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
