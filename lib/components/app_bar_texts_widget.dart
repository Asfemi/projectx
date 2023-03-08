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
          AppBarTextbutton(text: text1, onPressed: () {  },),
          AppBarTextbutton(text: text2, onPressed: () {  },),
          AppBarTextbutton(text: text3, onPressed: () {  },),
          AppBarTextbutton(text: text4, onPressed: () {  },),
        ],
      ),
    );
  }
}

class AppBarTextbutton extends StatelessWidget {
  const AppBarTextbutton({
    super.key,
    required this.text, required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
      style: GoogleFonts.montserrat(
          fontSize: 18, fontWeight: FontWeight.w300, color: Colors.white,),
      ),
    );
  }
}
