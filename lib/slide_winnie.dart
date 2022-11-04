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
            child: SizedBox(
              width: 150,
              height: 150,
              child: ClipOval(
                child: Image.asset(
                  'assets/images/puh.jpg',
                  width: 150,
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
