import 'package:bookly_app/features/Splash/presentation/views/splash_view.dart';
import 'package:bookly_app/features/auth/presentation/views/login_view.dart';
import 'package:bookly_app/features/auth/presentation/views/register_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../features/search/presentation/views/search_view.dart';


Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case RegisterView.routeName:
      return MaterialPageRoute(builder: (context) => const RegisterView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case SearchView.routeName :
      return MaterialPageRoute(builder: (context) => const SearchView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
