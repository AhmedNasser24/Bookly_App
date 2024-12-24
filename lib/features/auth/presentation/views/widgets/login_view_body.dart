import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../constants.dart';
import '../../../data/models/login_model.dart';
import 'do_not_have_account_text_button.dart';
import 'forget_password_text_button.dart';
import 'login_button.dart';
import 'login_email.dart';
import 'login_password.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final LoginModel loginModel = LoginModel();
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
              LoginEmail(loginModel),
              const Gap(20),
              LoginPassword(loginModel),
              const Gap(20),
              const ForgetPasswordTextButton(),
              const Gap(30),
              LoginButton(loginModel, formKey),
              const Gap(20),
              const DoNotHaveAccountTextButton(),
              const Gap(kBottomSpace),
            ],
          ),
        ),
      ),
    );
  }
}
