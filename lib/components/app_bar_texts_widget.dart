import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class AppBarTextsWidget extends StatelessWidget {
  const AppBarTextsWidget({
    super.key,
    required this.size,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  final Size size;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text1,
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          Text(
            text2,
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          Text(
            text3,
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          Text(
            text4,
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
