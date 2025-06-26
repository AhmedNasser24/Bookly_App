import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../data/models/user_info_model.dart';

class CheckBox extends StatefulWidget {
  const CheckBox(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() =>
          widget.userInfoModel.checkTerms = !widget.userInfoModel.checkTerms),
      child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: widget.userInfoModel.checkTerms
              ? const ActiveCheckBox()
              : const InActiveCheckBox()),
    );
  }
}

class ActiveCheckBox extends StatelessWidget {
  const ActiveCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 24,
        height: 24,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: kDarkGreenColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1.50,
              color: kDarkGreenColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: SvgPicture.asset(Assets.imagesCheckIcon));
  }
}

class InActiveCheckBox extends StatelessWidget {
  const InActiveCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kWhiteColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.50, color: Color(0xFFDCDEDE)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
