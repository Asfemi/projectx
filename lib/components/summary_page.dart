import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:projectx/components/reusable_text_button.dart';

import '../util/constants.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          LineIcons.facebookF,
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
    );
  }
}



