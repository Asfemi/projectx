import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectx/components/practice_area_widget.dart';

import '../util/constants.dart';

class SectionsDisplay extends StatelessWidget {
  const SectionsDisplay({
    super.key,
    required this.prescribedHeight,
    required this.size,
  });

  final double prescribedHeight;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: prescribedHeight,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'OUR PRACTICE AREAS',
              style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.teal),
            ),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              practiceAreaWidget(
                size: size,
                image: 'lib/assets/images/a.jpg',
                text: 'Banking and Finance',
              ),
              practiceAreaWidget(
                size: size,
                image: 'lib/assets/images/e.jpg',
                text: 'Environment and Land',
              ),
              practiceAreaWidget(
                size: size,
                image: 'lib/assets/images/h.jpg',
                text: 'Family and Gender',
              ),
              practiceAreaWidget(
                size: size,
                image: 'lib/assets/images/n.jpg',
                text: 'Criminal',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
