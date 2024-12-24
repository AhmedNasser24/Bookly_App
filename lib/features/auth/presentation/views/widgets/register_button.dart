import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper_function/snack_bar.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../data/models/user_info_model.dart';
import '../../manager/register_cubit/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(this.userInfoModel, this.formKey, {super.key});
  final UserInfoModel userInfoModel;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      title: "انشاء حساب",
      onTap: () {
        if (userInfoModel.checkTerms == false){
          showSnackBar(context , "يجب الموافقة على الشروط والأحكام");
        }
        else if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          BlocProvider.of<RegisterCubit>(context).register(userInfoModel);
        }
      },
    );
  }
}
