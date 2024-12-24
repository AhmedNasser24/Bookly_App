import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import 'custom_back_arrow.dart';

AppBar customAuthAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text(title, style: AppStyles.bold20),
    backgroundColor: kPrimaryColor,
    elevation: 0.0,
    scrolledUnderElevation: 0,
    leading: const CustomBackArrow(),
  );
}
