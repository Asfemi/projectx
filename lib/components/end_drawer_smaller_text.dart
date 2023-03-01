import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/constants.dart';


class EndDrawerSmallerText extends StatelessWidget {
  const EndDrawerSmallerText({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: GoogleFonts.cormorantGaramond(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: CustomColor.teal,
        ),
      ),
    );
  }
}
