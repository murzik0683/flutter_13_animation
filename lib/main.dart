import 'package:flutter/material.dart';
import 'package:flutter_13_animation/dropdown_list.dart';
import 'package:flutter_13_animation/dropdown_list_2.dart';
import 'package:flutter_13_animation/repeat_land.dart';
import 'package:flutter_13_animation/slide_winnie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBCDBF4),
      appBar: AppBar(
        title: const Text('Flutter Animations'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              RepeatLand(),
              SizedBox(height: 20),
              DropDownList(),
              //DropDownList_2(),
              SizedBox(height: 20),
              SlideWinnie(),
            ],
          ),
        ),
      ),
    );
  }
}
