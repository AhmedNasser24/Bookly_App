import 'package:bookly_app/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authrepo}) : super(LoginInitial());
  final AuthRepo authrepo;
  Future<void> login(LoginModel loginModel) async {
    emit(LoginLoading());
    Either<void, Failure> response =
        await authrepo.login(loginModel: loginModel);

    response.fold(
      (ok) => emit(LoginSuccess()),
      (fail) => emit(LoginFailure(fail.errMessage)),
    );
  }
}
