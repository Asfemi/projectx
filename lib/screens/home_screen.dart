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
    return Scaffold(
      //appBar: PreferredSizeWidget?(),
      drawer: const Drawer(),
      body: Column(
        children: [
          Row(children: [
            Icon(Icons.more),
            Text(
              'AULC',
              //AULC is short for adeleke university law clinic
              style: GoogleFonts.cormorantGaramond(
                color: kPrimaryColor
              ),
              //GoogleFonts.style(),
            ),
          
          ]),
          Container(),
        ],
      ),
    );
  }
}
