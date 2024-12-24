import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'fading_animation.dart';
import 'sliding_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context , LoginView.routeName);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SlidingAnimation(),
              FadingAnimation(),
            ],
          ),
        ),
      ),
    );
  }
}
