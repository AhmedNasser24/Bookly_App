import 'package:bookly_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:bookly_app/features/auth/presentation/views/widgets/login_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/get_it_setup.dart';
import '../../data/repos/auth_repo.dart';
import 'widgets/custom_auth_app_bar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = "Login View";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(authrepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        body: const SafeArea(
          child: LoginViewBodyBlocConsumer(),
        ),
        appBar: customAuthAppBar("Login"),
      ),
    );
  }
}
