import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../data/models/user_info_model.dart';
import 'already_have_account_text_button.dart';
import 'check_terms.dart';
import 'register_address.dart';
import 'register_button.dart';
import 'register_email.dart';
import 'register_full_name.dart';
import 'register_password_and_confirm_password.dart';
import 'register_phone_num.dart';
import 'register_user_name.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  final UserInfoModel userInfoModel = UserInfoModel();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(kTopSpace),
              RegisterFullName(userInfoModel),
              const Gap(20),
              RegisterUserName(userInfoModel),
              const Gap(20),
              RegisterEmail(userInfoModel),
              const Gap(20),
              RegisterPasswordAndConfirmPassword(userInfoModel),
              const Gap(30),
              RegisterPhoneNum(userInfoModel),
              const Gap(20),
              RegisterAddress(userInfoModel),
              const Gap(30),
              CheckTerms(userInfoModel),
              const Gap(30),
              RegisterButton(userInfoModel, formKey),
              const Gap(20),
              const AlreadyHaveAccountTextButton(),
              const Gap(kBottomSpace),
            ],
          ),
        ),
      ),
    );
  }
}
