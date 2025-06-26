import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helper_function/snack_bar.dart';
import '../../manager/register_cubit/register_cubit.dart';
import 'custom_model_progress_hud.dart';
import 'register_view_body.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          showSnackBar(context, "email is created successfully");
          Navigator.pop(context) ;
        } else if (state is RegisterFailure) {
          showSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is RegisterLoading,
          child: const RegisterViewBody(),
        );
      },
    );
  }

  
}
