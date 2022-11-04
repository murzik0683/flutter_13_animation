import 'package:flutter/material.dart';
import 'package:flutter_13_animation/animated_heart.dart';

class BigWinnie extends StatelessWidget {
  const BigWinnie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCDBF4),
      appBar: AppBar(title: const Text('Winnie')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AnimatedHeard(),
          const SizedBox(height: 70),
          Hero(
            tag: 'winnie',
            child: Image.asset('assets/images/puh1.png'),
          ),
        ],
      ),
    );
  }
}
