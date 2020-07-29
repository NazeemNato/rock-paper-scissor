import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonImage({String text, String path, VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RotationTransition(
            turns: new AlwaysStoppedAnimation(-15 / 360),
                      child: Image.asset(path,
            height: 100,
            ),
          ),
          SizedBox(height: 10,),
          Text(text.toUpperCase(),
          style: GoogleFonts.montserrat(
            color:Colors.white
          ),
          )
        ],
      ),
    ),
  );
}
