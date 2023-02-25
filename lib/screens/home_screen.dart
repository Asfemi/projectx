import 'package:flutter/material.dart';
import 'package:projectx/model/blogmodel.dart';
import 'package:projectx/util/constants.dart';

import '../components/custom_app_bar_widget.dart';
import '../components/home_body_widget.dart';
import '../components/quotes_widget.dart';
import '../components/sections_display.dart';
import '../components/subsribed_card.dart';
import '../components/summary_page.dart';
import '../util/utilities.dart';

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
    List<BlogContent> blogcontents = Utilities.blogContentList();

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
            Container(
              color: Colors.amber,
              height: size.height,
              child: ListView.builder(
                
                  itemCount: blogcontents.length,
                  itemBuilder: (context, index) {
                    //instead of using the if statement here
                    //you a for statement to creat a list with four Elements
                    //and just use it normally,
                   // if (index != 3) {
                      return //blog reads
                          InkWell(
                        onTap: () {},
                        child: Container(
                          height: size.height * 0.2,
                          margin: const EdgeInsets.only(left:40, right: 40),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Image(
                                    image: AssetImage(
                                      blogcontents[index].imagePath,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        blogcontents[index].title,
                                      ),
                                      Text(
                                        blogcontents[index].subTitle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    // } else {
                    //   //tbkhs
                    // }
                  }),
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
