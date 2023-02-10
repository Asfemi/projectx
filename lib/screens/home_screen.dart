import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:projectx/util/constants.dart';
//import '';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//todo: collect widgets from the portfollio site

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          //appBar
          Container(
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
                AppBarTextsWidget(size: size,
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
          ),
          Container(
            height: size.height * 0.8,
            width: size.width,
            child: const Image(image:  AssetImage('lib/assets/images/gad.jpg'), fit: BoxFit.fill,),
          ),
        ],
      ),
    );
  }
}

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
          Text(
            text1,
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
          Text(
            text2,
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
          Text(
            text3,
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
         Text(
            text4,
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
