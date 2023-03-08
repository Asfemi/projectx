
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:projectx/model/directors_card_model.dart';
import 'package:projectx/util/constants.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget(
      {Key? key, required this.size, required this.directorscontents})
      : super(key: key);

  final Size size;
  final List<DirectorsCardContent> directorscontents;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.7,
      height: size.height,
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
        ),
        child: Container(
          
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        
                      },
                      icon: Icon(
                      Icons.arrow_back_ios,
                        color: CustomColor.teal,
                        size: 25,
                      ),),
                      Expanded(child: Container()),
                  Column(
                    children: [
                      Text(
                        'AULC LAW COOPERATION',
                        style: GoogleFonts.cormorantGaramond(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: CustomColor.teal,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'OUR MEMBERS',
                        style: GoogleFonts.montserrat(
                          letterSpacing: 4,
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.teal,
                        ),
                      ),
                    ],
                  ),
                    Expanded(child: Container()),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: size.height * 0.75,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: directorscontents.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          mainAxisExtent: size.height * 0.72,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              //TODO: Navigate the user to the clicked member profile
                              // setState(() {
                              //   _selectedTasteIndex = index;
                              // });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.5,
                                    child: Image.asset(
                                      directorscontents[index].imagePath,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    directorscontents[index].title,
                                    style: GoogleFonts.cormorantGaramond(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400,
                                      color: CustomColor.teal,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Text(
                                    directorscontents[index].subTitle,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: CustomColor.teal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                          //return Image.network(images[index]);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
