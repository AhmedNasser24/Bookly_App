import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ShowErrorMessage extends StatelessWidget {
  const ShowErrorMessage({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: AppStyles.bold22,
        textAlign: TextAlign.center,
      ),
    );
  }
}
