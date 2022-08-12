import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final Color lightColor;
  final Color darkColor;
  final String text;
  final int count;
  final dynamic action;
  const Button({
    Key? key,
    required this.lightColor,
    required this.darkColor,
    required this.text,
    required this.count,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double btnwidth = ((width - (46 * 2)) / count);
    return Container(
      width: count > 1 ? btnwidth - (46 / 2) : btnwidth,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: lightColor,
        border: Border.all(color: darkColor),
      ),
      child: InkWell(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: darkColor,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        onTap: () => action(),
      ),
    );
  }
}

// Used this methood

// Container(
//       width: width * 1,
//       height: 135,
//       padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 33),
//       decoration: const BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             spreadRadius: 3,
//             blurRadius: 7,
//             offset: Offset(0, -7),
//           ),
//         ],
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(10.0),
//           topRight: Radius.circular(10.0),
//         ),
//         color: Colors.white,
//       ),
//       child: Material(
//         color: Colors.white,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Button(
//               text: "Done",
//               lightColor: Theme.of(context).primaryColorLight,
//               darkColor: Theme.of(context).primaryColor,
//               count: 1,
//               action: () => onTap(),
//             ),
//           ],
//         ),
//       ),
//     );