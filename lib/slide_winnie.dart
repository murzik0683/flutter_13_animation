import 'package:flutter/material.dart';
import 'package:flutter_13_animation/big_winnie.dart';
import 'package:flutter_13_animation/more_winnie.dart';
import 'package:page_transition/page_transition.dart';

class SlideWinnie extends StatefulWidget {
  const SlideWinnie({Key? key}) : super(key: key);

  @override
  State<SlideWinnie> createState() => _SlideWinnieState();
}

class _SlideWinnieState extends State<SlideWinnie> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Hero(
            tag: 'winnie',
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipOval(
                child: Container(
                  width: 150,
                  height: 130,
                  color: const Color(0xFFB9D4EA),
                  child: Image.asset(
                    'assets/images/puh1.png',
                    width: 150,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.fade,
                    child: const BigWinnie(),
                  ));
                },
                child: const Text('Show me BIGGER Winnie'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(PageTransition(
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(seconds: 1),
                    type: PageTransitionType.bottomToTop,
                    child: const MoreWinnie(),
                  ));
                },
                child: const Text('Show more Winnie'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
