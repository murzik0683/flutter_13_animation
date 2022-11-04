// SizeTransition
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_icons/animate_icons.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList>
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
              title: Text('Winnie the Pooh',
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
                    Text('Type: Honey bear',
                        style: GoogleFonts.aladin(
                            textStyle: const TextStyle(fontSize: 22))),
                    Text('Color: Brown or Yellow',
                        style: GoogleFonts.aladin(
                            textStyle: const TextStyle(fontSize: 22))),
                    Text('Song: V golove moiyei opilki...',
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

// // AnimatedContainer
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:animate_icons/animate_icons.dart';

// class DropDownList extends StatefulWidget {
//   const DropDownList({Key? key}) : super(key: key);

//   @override
//   State<DropDownList> createState() => _DropDownListState();
// }

// class _DropDownListState extends State<DropDownList>
//     with TickerProviderStateMixin {
//   late AnimateIconController iconController;
//   late AnimationController dropController;

//   bool show = false;

//   @override
//   void initState() {
//     iconController = AnimateIconController();
//     dropController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));

//     super.initState();
//   }

//   @override
//   void dispose() {
//     dropController.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Card(
//           child: ListTile(
//               title: Text('Winnie the Pooh',
//                   style: GoogleFonts.aladin(
//                       textStyle: const TextStyle(fontSize: 26))),
//               trailing: AnimateIcons(
//                 duration: const Duration(milliseconds: 500),
//                 controller: iconController,
//                 endIcon: Icons.arrow_upward,
//                 startIcon: Icons.arrow_downward,
//                 onStartIconPress: () {
//                   show == true;
//                   dropController.forward();
//                   setState(() {
//                     show = !show;
//                   });
//                   return true;
//                 },
//                 onEndIconPress: () {
//                   show == false;
//                   dropController.reverse();
//                   setState(() {
//                     show = !show;
//                   });
//                   return true;
//                 },
//               )),
//         ),
//         AnimatedContainer(
//           height: show ? 100 : 0,
//           curve: Curves.easeIn,
//           duration: const Duration(seconds: 1),
//           child: Card(
//             child: ListTile(
//               title: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Type: Honey bear',
//                         style: GoogleFonts.aladin(
//                             textStyle: const TextStyle(fontSize: 22))),
//                     Text('Color: Brown or Yellow',
//                         style: GoogleFonts.aladin(
//                             textStyle: const TextStyle(fontSize: 22))),
//                     Text('Song: V golove moiyei opilki...',
//                         style: GoogleFonts.aladin(
//                             textStyle: const TextStyle(fontSize: 22)))
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


// // Visibility
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:animate_icons/animate_icons.dart';

// class DropDownList extends StatefulWidget {
//   const DropDownList({Key? key}) : super(key: key);

//   @override
//   State<DropDownList> createState() => _DropDownListState();
// }

// class _DropDownListState extends State<DropDownList>
//     with TickerProviderStateMixin {
//   late AnimateIconController iconController;
//   late AnimationController dropController;

//   bool show = false;
//   bool isVisible = false;

//   @override
//   void initState() {
//     iconController = AnimateIconController();
//     dropController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));

//     super.initState();
//   }

//   @override
//   void dispose() {
//     dropController.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Card(
//           child: ListTile(
//               title: Text('Winnie the Pooh',
//                   style: GoogleFonts.aladin(
//                       textStyle: const TextStyle(fontSize: 26))),
//               trailing: AnimateIcons(
//                 duration: const Duration(milliseconds: 500),
//                 controller: iconController,
//                 endIcon: Icons.arrow_upward,
//                 startIcon: Icons.arrow_downward,
//                 onStartIconPress: () {
//                   show == true;
//                   dropController.forward();
//                   setState(() {
//                     isVisible = !isVisible;
//                   });
//                   return true;
//                 },
//                 onEndIconPress: () {
//                   show == false;
//                   dropController.reverse();
//                   setState(() {
//                     isVisible = !isVisible;
//                   });
//                   return true;
//                 },
//               )),
//         ),
//         Visibility(
//           visible: isVisible,
//           child: Card(
//             child: ListTile(
//               title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Type: Honey bear',
//                         style: GoogleFonts.aladin(
//                             textStyle: const TextStyle(fontSize: 22))),
//                     Text('Color: Brown or Yellow',
//                         style: GoogleFonts.aladin(
//                             textStyle: const TextStyle(fontSize: 22))),
//                     Text('Song: V golove moiyei opilki...',
//                         style: GoogleFonts.aladin(
//                             textStyle: const TextStyle(fontSize: 22)))
//                   ]),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
