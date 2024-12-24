import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/login_model.dart';
import '../../manager/login_cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(this.loginModel, this.formKey, {super.key});
  final GlobalKey<FormState> formKey;
  final LoginModel loginModel;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: "Login",
      onTap: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          BlocProvider.of<LoginCubit>(context).login(loginModel);
        }
      },
    );
  }
}
