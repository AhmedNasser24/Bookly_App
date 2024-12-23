import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../models/login_model.dart';
import '../models/user_info_model.dart';

abstract class AuthRepo {
  Future<Either<void, Failure>> login({required LoginModel loginModel});
  Future<Either<void, Failure>> register( {required UserInfoModel userInfoModel});
  // Future<Either<void, Failure>> signOut();

  // Future<Either<void,Failure>> changePassword() ;
  
  // Future <void >saveUserDataLocally(UserInfoModel userInfoModel);
  
}
