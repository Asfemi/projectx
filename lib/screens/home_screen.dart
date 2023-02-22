import 'package:flutter/material.dart';
import 'package:projectx/util/constants.dart';

import '../components/custom_app_bar_widget.dart';
import '../components/home_body_widget.dart';
import '../components/quotes_widget.dart';
import '../components/sections_display.dart';
import '../components/subsribed_card.dart';
import '../components/summary_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'home screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//todo: collect social media widgets from the portfollio site
//todo: change the images to network images

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double prescribedHeight = size.height * 0.8;
    List blogcontent = [
      'lib/assets/images/a.jpg',
      'lib/assets/images/e.jpg',
      'lib/assets/images/h.jpg',
      'lib/assets/images/j.jpg',
      'lib/assets/images/n.jpg',
      'lib/assets/images/kiss.jpg',
      'lib/assets/images/lip.jpg',
      'lib/assets/images/gad.jpg',
    ];

    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //appBar
            CustomAppBarWidget(size: size),
            //home image
            HomebodyWidget(prescribedHeight: prescribedHeight, size: size),
            //qoute text
            QuoteWidget(size: size),
            //section display
            SectionsDisplay(prescribedHeight: prescribedHeight, size: size),
            //blog reads
            SizedBox(
              height: prescribedHeight,
              child: ListView.builder(
                itemCount: blogcontent.length,
                itemBuilder: (context, index) => ListTile(
               leading: Image(image: AssetImage(blogcontent[index])),
              )),
            ),
            //subscribe card
            SubscribeCard(size: size),
            SizedBox(height: size.height * 0.2),
            //summary page
            SummaryPage(size: size),
          ],
        ),
      ),
    );
  }
}


