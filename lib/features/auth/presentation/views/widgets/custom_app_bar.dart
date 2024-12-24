
  import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import 'custom_back_arrow.dart';

AppBar customAppBar(String title) {
    return AppBar(
      centerTitle: true ,
      title: Text(title , style: AppStyles.bold19,),
      backgroundColor: kWhiteColor,
      elevation: 0.0,
      scrolledUnderElevation: 0,
      leading: const CustomBackArrow(),
    );
  }