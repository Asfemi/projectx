import 'package:flutter/foundation.dart';
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
//todo: change the images to network images

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
                    'We are a corporate boutique with a nimble, flexible take on legal work. Our lawyers’ cross-domain specialisations allow for seamless customised solutions for specific, unique client needs, solving complex briefs with precise strategy.',
                    style: GoogleFonts.cormorantGaramond(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: CustomColor.teal),
                  ),
                ),
              ),
            ),
            SizedBox(
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
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height * 0.3,
                width: size.width * 0.7,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  //image: DecorationImage(image: AssetImage(''),),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 350,
                        child: Text(
                          'STAY AHEAD WITH FOREFRONT: BY AULC',
                          maxLines: 2,
                          style: GoogleFonts.cormorantGaramond(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: TextField(
                              // style: const TextStyle(
                              //   decoration: TextDecoration.underline,
                              // ),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CustomColor.white),
                                ),

                                //border: InputBorder.none,
                                hintText: 'TYPE YOUR EMAIL HERE',
                                hintStyle: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              onChanged: (value) {},
                            ),
                          ),
                          const SizedBox(height: 30),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(color: CustomColor.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      0), //size.width * 0.005),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Text(
                                'SUBSCRIBE NOW',
                                style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (kDebugMode) {
                                print('Pressed');
                              }
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.2),
            Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('lib/assets/images/kiss.jpg'),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReuseableTextButton(
                      text: 'ABOUT US',
                      onpressed: () {},
                    ),
                    ReuseableTextButton(
                      text: 'OUR TEAM',
                      onpressed: () {},
                    ),
                    ReuseableTextButton(
                      text: 'OUR EXPERTISE',
                      onpressed: () {},
                    ),
                    ReuseableTextButton(
                      text: 'NEWS',
                      onpressed: () {},
                    ),
                    ReuseableTextButton(
                      text: 'CAREERS',
                      onpressed: () {},
                    ),
                    ReuseableTextButton(
                      text: 'CONTACT US',
                      onpressed: () {},
                    ),
                    Row(
                      children: [
                        Material(
                          type: MaterialType.transparency,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              //color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100.0),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  LineIcons.facebook,
                                  size: 20.0,
                                  color: CustomColor.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Material(
                          type: MaterialType.transparency,
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              //color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100.0),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(
                                  LineIcons.linkedinIn,
                                  size: 20.0,
                                  color: CustomColor.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //const SizedBox(height: 50),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.16,
                     // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('(65) 6534 4877', style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),),
                              Text('6 Battery Road, Level 5, Singapore 049909', style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '© 2023 AULC Law Corporation',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                //padding: const EdgeInsets.all(10),
                                height: 18,
                                width: 2,
                                color: Colors.white
                              ),
                              const SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {},
                                child: Text('Terms Of Use', style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('AULC', style: GoogleFonts.montserrat(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),),
                              Container(
                                height: 2,
                                width: 90,
                                color: Colors.white
                              ),
                              Text('LAW COOPERATION', style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableTextButton extends StatelessWidget {
  const ReuseableTextButton({
    super.key,
    required this.onpressed,
    required this.text,
  });

  final String text;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: GoogleFonts.cormorantGaramond(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ));
  }
}

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
