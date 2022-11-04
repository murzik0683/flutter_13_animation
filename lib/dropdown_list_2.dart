// SizeTransition
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownList_2 extends StatefulWidget {
  const DropDownList_2({Key? key}) : super(key: key);

  @override
  State<DropDownList_2> createState() => _DropDownList_2State();
}

class _DropDownList_2State extends State<DropDownList_2>
    with TickerProviderStateMixin {
  late AnimationController dropController;
  late Animation<double> cardController;
  late Animation<double> iconController;

  bool show = true;

  @override
  void initState() {
    dropController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    cardController = Tween(begin: 0.0, end: 1.0).animate(dropController);
    iconController = Tween(begin: 0.0, end: -0.5).animate(dropController);
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
            trailing: RotationTransition(
              turns: iconController,
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_downward,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    show ? dropController.forward() : dropController.reverse();
                    setState(() {
                      show = !show;
                    });
                  }),
            ),
          ),
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
