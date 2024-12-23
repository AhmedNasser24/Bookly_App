import 'package:bookly_app/core/services/api_ahmed_yasser/api_service_ahmed_yasser.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/auth/data/repos/auth_repo_iml.dart';
import '../services/api_ahmed_yasser/auth_service.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerSingleton<ApiServiceAhmedYasser>(ApiServiceAhmedYasser());
  getIt.registerSingleton<AuthService>(
    AuthService(
      apiService: getIt.get<ApiServiceAhmedYasser>(),
    ),
  );
  getIt.registerSingleton<AuthRepo>(
    AuthRepoIml(
      authService: getIt.get<AuthService>(),
    ),
  );
}
