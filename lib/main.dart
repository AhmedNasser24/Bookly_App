import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/on_generate_route.dart';
import 'package:bookly_app/core/utils/get_it_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'core/utils/simple_bloc_observer.dart';
import 'features/Splash/presentation/views/splash_view.dart';

void main() {
  getItSetup();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme:
            GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      onGenerateRoute: onGenerateRoutes,
      initialRoute: SplashView.routeName,
    );
  }
}
