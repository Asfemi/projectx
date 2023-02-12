import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomebodyWidget extends StatelessWidget {
  const HomebodyWidget({
    super.key,
    required this.prescribedHeight,
    required this.size,
  });

  final double prescribedHeight;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: prescribedHeight * 1.1,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            'lib/assets/images/gad.jpg',
          ),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            'OUR EXPERTISE',
            style: GoogleFonts.cormorantGaramond(
                fontSize: 50,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
