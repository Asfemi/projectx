import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../util/constants.dart';
import 'app_bar_texts_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.1,
      color: CustomColor.teal,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Text(
            'AULC',
            style: GoogleFonts.cormorantGaramond(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
          const SizedBox(width: 30),
          AppBarTextsWidget(
            size: size,
            text1: 'Our Expertise',
            text2: 'ForeFront',
            text3: 'Comunity',
            text4: 'About us',
          ),
          const SizedBox(width: 30),
          IconButton(
            onPressed: () {},
            icon: Icon(
              LineIcons.search,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}


