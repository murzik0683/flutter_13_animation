import 'package:flutter/material.dart';

class BigWinnie extends StatelessWidget {
  const BigWinnie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCDBF4),
      appBar: AppBar(title: const Text('Winnie')),
      body: Center(
        child: Hero(
          tag: 'winnie',
          child: Image.asset('assets/images/puh.jpg'),
        ),
      ),
    );
  }
}
