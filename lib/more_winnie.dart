import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

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
                  child: Image.asset('assets/images/puh.jpg'),
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
                child: Image.asset('assets/images/puh3.png'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
