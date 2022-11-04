import 'package:flutter/material.dart';

class MoreWinnie extends StatelessWidget {
  const MoreWinnie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCDBF4),
      appBar: AppBar(
        title: const Text('Winnie'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Hero(
              tag: 'winnie',
              child: Card(
                child: SizedBox(
                  height: 200,
                  child: Image.asset('assets/images/puh1.png'),
                ),
              ),
            ),
            Card(
              child: SizedBox(
                height: 200,
                child: Image.asset('assets/images/puh2.png'),
              ),
            ),
            Card(
              child: SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Center(child: Image.asset('assets/images/puh3.png')),
                    TweenAnimationBuilder(
                        tween: ColorTween(
                            begin: Colors.white, end: Colors.lightGreenAccent),
                        duration: const Duration(seconds: 3),
                        child: Align(
                          alignment: const Alignment(0.02, -0.8),
                          child: Image.asset(
                            'assets/images/sharik.png',
                            width: 75,
                          ),
                        ),
                        builder: (_, Color? color, child) {
                          return ColorFiltered(
                            colorFilter:
                                ColorFilter.mode(color!, BlendMode.modulate),
                            child: child,
                          );
                        }),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
