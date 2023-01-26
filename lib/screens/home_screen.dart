import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectx/util/constants.dart';
//import '';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: PreferredSizeWidget?(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //custom appbar
            Row(children: [
              const Icon(Icons.more),
              Text(
                'AULC',
                //AULC is short for adeleke university law clinic
                style: GoogleFonts.cormorantGaramond(
                  color: kPrimaryColor
                ),
                //GoogleFonts.style(),
              ),
            
            ]),
            //landing/homepage background image            
            Container(
             height: size.height * 0.9,
             width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(''))
            ),
            ),
          ],
        ),
      ),
    );
  }
}
