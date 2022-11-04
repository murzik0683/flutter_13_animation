import 'package:flutter/material.dart';

class AnimatedHeard extends StatefulWidget {
  const AnimatedHeard({Key? key}) : super(key: key);

  @override
  State<AnimatedHeard> createState() => _AnimatedHeardState();
}

class _AnimatedHeardState extends State<AnimatedHeard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late final outerFade = Tween(begin: 1.0, end: 0.0).animate(controller);
  late final outerScale = Tween(begin: 1.0, end: 4.0).animate(controller);

  late final innerUpscale = CurvedAnimation(
    parent: controller,
    curve: const Interval(0.0, 0.3, curve: Curves.easeIn),
  ).drive(Tween(begin: 1.0, end: 1.5));

  late final innerDowncale = CurvedAnimation(
    parent: controller,
    curve: const Interval(0.7, 1.0, curve: Curves.easeIn),
  ).drive(Tween(begin: 1.0, end: 1.0 / 1.5));

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeTransition(
          opacity: outerFade,
          child: ScaleTransition(
            scale: outerScale,
            child: const Icon(
              Icons.favorite,
              size: 60,
              color: Colors.redAccent,
            ),
          ),
        ),
        ScaleTransition(
          scale: innerUpscale,
          child: ScaleTransition(
            scale: innerDowncale,
            child: const Icon(
              Icons.favorite,
              size: 60,
              color: Colors.redAccent,
            ),
          ),
        )
      ],
    );
  }
}
