import 'package:bookly_app/core/utils/styles.dart';
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
        style: Style.textStyle22,
        textAlign: TextAlign.center,
      ),
    );
  }
}
