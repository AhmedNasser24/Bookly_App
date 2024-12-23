import 'package:bookly_app/core/services/api_ahmed_yasser/api_service_ahmed_yasser.dart';

import '../../../features/auth/data/models/login_model.dart';
import '../../../features/auth/data/models/user_info_model.dart';

class AuthService {
  final ApiServiceAhmedYasser apiService;
  const AuthService({required this.apiService});

  Future<void> login({required LoginModel loginModel}) async {
    await apiService.post(
      endpoint: "/api/Account/Login",
      data: loginModel.toJson(),
    );
  }

  Future<void> register({required UserInfoModel userInfoModel}) async {
    await apiService.post(
      endpoint: "/api/Account/Register",
      data: userInfoModel.toJson(),
    );
  }
}
