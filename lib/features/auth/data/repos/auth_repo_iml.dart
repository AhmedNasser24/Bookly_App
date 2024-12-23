import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/services/api_ahmed_yasser/auth_service.dart';
import 'package:bookly_app/features/auth/data/models/login_model.dart';
import 'package:bookly_app/features/auth/data/models/user_info_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'auth_repo.dart';

class AuthRepoIml extends AuthRepo {
  final AuthService authService;

  AuthRepoIml({required this.authService});

  @override
  Future<Either<void, Failure>> login({required LoginModel loginModel}) async {
    try {
      await authService.login(loginModel: loginModel);
      return left(null);
    } on DioException catch (e) {
      return right(ServerFailure.fromDioException(e));
    } catch (e) {
      return right(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<void, Failure>> register(
      {required UserInfoModel userInfoModel}) async {
    try {
      await authService.register(userInfoModel: userInfoModel);
      return left(null);
    } on DioException catch (e) {
      return right(ServerFailure.fromDioException(e));
    } catch (e) {
      return right(ServerFailure(e.toString()));
    }
  }
}
