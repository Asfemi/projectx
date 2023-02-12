import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../util/constants.dart';


class SubscribeCard extends StatelessWidget {
  const SubscribeCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}
