import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/app_styles.dart';

void showSnackBar(BuildContext context, String message) {
  final messenger = ScaffoldMessenger.of(context);
  
  // Dismiss the currently visible SnackBar, if any
  messenger.hideCurrentSnackBar();

  // Show a new SnackBar
  messenger.showSnackBar(
    SnackBar(
      
      duration: const Duration(seconds: 3),
      content: Text(message, style: AppStyles.semibold12.copyWith(color: Colors.red)),
      backgroundColor: kWhiteColor,
    ),
  );
}