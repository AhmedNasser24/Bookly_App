import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../data/models/user_info_model.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox(this.userInfoModel, {super.key});
  final UserInfoModel userInfoModel;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() =>
          widget.userInfoModel.checkTerms = !widget.userInfoModel.checkTerms),
      child: Container(
        width: 24,
        height: 24,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color:
              widget.userInfoModel.checkTerms ? kDarkGreenColor : kWhiteColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.50,
                color: widget.userInfoModel.checkTerms
                    ? kDarkGreenColor
                    : const Color(0xFFDCDEDE)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: widget.userInfoModel.checkTerms
            ? SvgPicture.asset(Assets.imagesCheckIcon)
            : null,
      ),
    );
  }
}
