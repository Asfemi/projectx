import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReuseableTextButton extends StatelessWidget {
  const ReuseableTextButton({
    super.key,
    required this.onpressed,
    required this.text,
  });

  final String text;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: GoogleFonts.cormorantGaramond(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ));
  }
}