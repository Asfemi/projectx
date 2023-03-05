// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectx/components/end_drawer_smaller_text.dart';
import 'package:projectx/components/end_drawer_text.dart';
import 'package:projectx/model/directors_card_model.dart';
import 'package:projectx/util/constants.dart';

class HomeEndDrawerWidget extends StatelessWidget {
  const HomeEndDrawerWidget({
    super.key,
    required this.size,
    required this.directorscontents,
  });

  final Size size;
  final List<DirectorsCardContent> directorscontents;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.7,
      child: Drawer(
        shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
            ),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('AULC LAW COPORATION', style: GoogleFonts.cormorantGaramond(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: CustomColor.teal,
        ),),
              EndDrawerText(text: 'OUR PEOPLE', onTap: () {}),
              EndDrawerText(text: 'OUR EXPERTISE', onTap: () {}),
              EndDrawerText(text: 'FOREFRONT', onTap: () {}),
              EndDrawerText(text: 'NEWS', onTap: () {}),
              EndDrawerText(text: 'COMUNITY', onTap: () {}),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              EndDrawerSmallerText(text: 'ABOUT US', onTap: () {}),
              EndDrawerSmallerText(text: 'CAREERS', onTap: () {}),
              EndDrawerSmallerText(text: 'CONTACT US', onTap: () {}),
              EndDrawerSmallerText(text: 'CONTRIBUTION', onTap: () {}),
              ],),
              
            ],
          ),
        ),
      ),
    );
  }
}



