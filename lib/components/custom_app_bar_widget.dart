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
    double iconSize = 30;
    //todo: handle the onpressed actions on this page

    return Container(
      width: size.width,
      height: size.height * 0.1,
      color: CustomColor.teal,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.dashboard,
                  size: iconSize,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 20),
              Text(
                'AULC',
                style: GoogleFonts.cormorantGaramond(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
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
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  LineIcons.search,
                  size: iconSize,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              const SizedBox(width: 20),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  size: iconSize,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  //crazy ass theme additions
                  //back to dracula
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
