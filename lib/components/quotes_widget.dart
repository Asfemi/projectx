import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/constants.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 300.0, vertical: 150.0),
          child: Text(
            'We are a corporate boutique with a nimble, flexible take on legal work. Our lawyers’ cross-domain specialisations allow for seamless customised solutions for specific, unique client needs, solving complex briefs with precise strategy.',
            style: GoogleFonts.cormorantGaramond(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: CustomColor.teal),
          ),
        ),
      ),
    );
  }
}
