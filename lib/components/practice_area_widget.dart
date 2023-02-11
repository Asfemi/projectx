import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/constants.dart';

// ignore: camel_case_types
class practiceAreaWidget extends StatelessWidget {
  const practiceAreaWidget({
    super.key,
    required this.size,
    required this.image,
    required this.text,
  });

  final Size size;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: size.height * 0.25,
          width: size.width * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Text(
            text,
            maxLines: 2,
            style: GoogleFonts.cormorantGaramond(
                fontSize: 22,
                fontWeight: FontWeight.w300,
                color: CustomColor.teal),
          ),
        ),
      ],
    );
  }
}
