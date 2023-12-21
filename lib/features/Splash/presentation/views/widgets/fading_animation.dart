import 'package:flutter/material.dart';

class FadingAnimation extends StatefulWidget {
  const FadingAnimation({
    super.key,
  });

  @override
  State<FadingAnimation> createState() => _FadingAnimationState();
}

class _FadingAnimationState extends State<FadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController fadingAnimation;
  @override
  void initState() {
    super.initState();
    fadingAnimationMethod();
  }

  @override
  void dispose() {
    super.dispose();
    fadingAnimation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadingAnimation,
      child: const Text(
        'Read free books',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }

  void fadingAnimationMethod() {
    fadingAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    fadingAnimation.forward();
  }
}
