import 'package:flutter/material.dart';
import 'dart:math' as math;

class RepeatLand extends StatefulWidget {
  const RepeatLand({Key? key}) : super(key: key);

  @override
  State<RepeatLand> createState() => _RepeatLandState();
}

class _RepeatLandState extends State<RepeatLand> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 10))
          ..repeat();
    // animation = Tween(begin: 0.0, end: 2 * math.pi).animate(controller)
    //   ..addListener(() {
    //     setState(() {});
    //   });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // Transform.rotate(
        //   angle: animation.value,
        //   child: Image.asset(
        //     'assets/images/land.png',
        //     width: 200,
        //   ),
        // );
        RotationTransition(
      turns: controller,
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/land.png',
        width: 200,
      ),
    );
  }
}
