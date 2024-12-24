import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper_function/snack_bar.dart';
import '../../manager/login_cubit/login_cubit.dart';
import 'custom_model_progress_hud.dart';
import 'login_view_body.dart';

class LoginViewBodyBlocConsumer extends StatelessWidget {
  const LoginViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushNamed(context, HomeView.routeName);
        } else if (state is LoginFailure) {
          showSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) {
        return CustomModalProgressHud(
          isLoading: state is LoginLoading,
          child: const LoginViewBody(),
        );
      },
    );
  }
}
