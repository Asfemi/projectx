import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:projectx/util/constants.dart';

import '../components/app_bar_texts_widget.dart';
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
    double prescribedHeight = size.height * 0.8;

    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SingleChildScrollView(
        child: Column(
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
            ),
            //home image
            Container(
              height: size.height * 0.8,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
                    'lib/assets/images/gad.jpg',
                  ),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
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
            ),
            //qoute text
            SizedBox(
              height: size.height * 0.8,
              width: size.width,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 300.0, vertical: 150.0),
                  child: Text(
                    'We are a corporate boutique with a nimble, flexible take on legal work. Our lawyers\’ cross-domain specialisations allow for seamless customised solutions for specific, unique client needs, solving complex briefs with precise strategy.',
                    style: GoogleFonts.cormorantGaramond(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: CustomColor.teal),
                  ),
                ),
              ),
            ),
            Container(
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
                      practiceAreaWidget(size: size, image: 'lib/assets/images/kiss.jpg', text: 'Banking and Finance',),
                       practiceAreaWidget(size: size, image: 'lib/assets/images/kiss.jpg', text: 'Banking and Finance',),
                        practiceAreaWidget(size: size, image: 'lib/assets/images/kiss.jpg', text: 'Banking and Finance',),
                         practiceAreaWidget(size: size, image: 'lib/assets/images/kiss.jpg', text: 'Banking and Finance',),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill
            ),
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
