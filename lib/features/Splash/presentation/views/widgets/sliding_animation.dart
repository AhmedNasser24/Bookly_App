import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class SlidingAnimation extends StatefulWidget {
  const SlidingAnimation({
    super.key,
  });

  @override
  State<SlidingAnimation> createState() => _SlidingAnimationState();
}

class _SlidingAnimationState extends State<SlidingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController slidingController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    slidingAnimationMethod();
  }

  @override
  void dispose() {
    slidingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slidingAnimation,
      child: Image.asset(Assets.logo),
    );
  }

  void slidingAnimationMethod() {
    slidingController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, -2), end: const Offset(0, 0))
            .animate(slidingController);
    slidingController.forward();
  }
}
