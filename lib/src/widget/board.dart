import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget scoreBoard({int text, String url}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Row(
        children: [
          Image.network(url,
            height: 50,
            ),
          SizedBox(width: 10,),
          Text('$text',
          style: GoogleFonts.montserrat(
            color:Colors.white,
            fontSize: 50
          ),
          )
        ],
      ),
    ),
  );
}
