// SizeTransition
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_icons/animate_icons.dart';

class DropDownList_2 extends StatefulWidget {
  const DropDownList_2({Key? key}) : super(key: key);

  @override
  State<DropDownList_2> createState() => _DropDownList_2State();
}

class _DropDownList_2State extends State<DropDownList_2>
    with TickerProviderStateMixin {
  late AnimateIconController iconController;
  late AnimationController dropController;
  late Animation<double> cardController;

  bool show = false;

  @override
  void initState() {
    iconController = AnimateIconController();
    dropController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    cardController = Tween(begin: 0.0, end: 1.0).animate(dropController);
    super.initState();
  }

  @override
  void dispose() {
    dropController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
              title: Text('Winnie the Pooh_2',
                  style: GoogleFonts.aladin(
                      textStyle: const TextStyle(fontSize: 26))),
              trailing: AnimateIcons(
                duration: const Duration(milliseconds: 500),
                controller: iconController,
                endIcon: Icons.arrow_upward,
                startIcon: Icons.arrow_downward,
                onStartIconPress: () {
                  show == true;
                  dropController.forward();
                  return true;
                },
                onEndIconPress: () {
                  show == false;
                  dropController.reverse();
                  return true;
                },
              )),
        ),
        SizeTransition(
          sizeFactor: cardController,
          axis: Axis.vertical,
          axisAlignment: 1.0,
          child: Card(
            child: ListTile(
              title: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Type: Honey bear_2',
                        style: GoogleFonts.aladin(
                            textStyle: const TextStyle(fontSize: 22))),
                    Text('Color: Brown or Yellow_2',
                        style: GoogleFonts.aladin(
                            textStyle: const TextStyle(fontSize: 22))),
                    Text('Song: V golove moiyei opilki..._2',
                        style: GoogleFonts.aladin(
                            textStyle: const TextStyle(fontSize: 22)))
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
