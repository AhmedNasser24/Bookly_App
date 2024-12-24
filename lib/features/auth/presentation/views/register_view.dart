import 'package:bookly_app/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:bookly_app/features/auth/presentation/views/widgets/register_view_body_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/get_it_setup.dart';
import '../../data/repos/auth_repo.dart';
import 'widgets/custom_auth_app_bar.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const String routeName = "RegisterView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(authrepo: getIt.get<AuthRepo>()),
      child: Scaffold(
        body: const SafeArea(
          child: RegisterViewBodyBlocConsumer(),
        ),
        appBar: customAuthAppBar("Register"),
      ),
    );
  }
}
