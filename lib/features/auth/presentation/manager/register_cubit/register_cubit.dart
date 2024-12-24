
import 'package:bookly_app/features/auth/data/models/user_info_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/repos/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.authrepo}) : super(RegisterInitial());
  final AuthRepo authrepo;
  Future<void> register(UserInfoModel userInfoModel) async {
    emit(RegisterLoading());
    Either<void, Failure> response =
        await authrepo.register(userInfoModel: userInfoModel);

    response.fold(
      (ok) => emit(RegisterSuccess()),
      (fail) => emit(RegisterFailure(fail.errMessage)),
    );
  }
}
