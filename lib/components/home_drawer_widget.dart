// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:projectx/model/directors_card_model.dart';

// class HomeDrawerWidget extends StatelessWidget {
//   const HomeDrawerWidget({
//     super.key,
//     required this.size,
//     required this.directorscontents,
//   });

//   final Size size;
//   final List<DirectorsCardContent> directorscontents;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: size.width * 0.7,
//       height: size.height,
//       child: Drawer(
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
//         ),
//         child: Container(
//           color: Colors.green,
//           height: size.height,
//           padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
//           child: Column(
//             children: [
//               DrawerHeader(
//                 child: Column(
//                   children: [
//                     Text(
//                       'AULC LAW COOPERATION',
//                       style: GoogleFonts.cormorantGaramond(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       'OUR MEMBERS',
//                       style: GoogleFonts.montserrat(
//                         letterSpacing: 4,
//                         fontSize: 30,
//                         fontWeight: FontWeight.w300,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               GridView.builder(
//                 //primary: true,
//                 //scrollDirection: Axis.vertical,
//                 physics: const ScrollPhysics(),
//                 shrinkWrap: false,
//                 itemCount: directorscontents.length,
                
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     childAspectRatio: MediaQuery.of(context).size.width /
//               (MediaQuery.of(context).size.height / 3),
//                     crossAxisSpacing: 4.0,
//                     mainAxisSpacing: 4.0,),
                    
//                 itemBuilder: (BuildContext context, int index) {
//                   //TODO: make this an actual network images
//                   return Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: SizedBox(
//                       height: size.height * 0.45,
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: size.height * 0.33,
//                             child: Image.asset(
//                               directorscontents[index].imagePath,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Text(
//                             directorscontents[index].title,
//                             style: GoogleFonts.cormorantGaramond(
//                               fontSize: 25,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           Text(
//                             directorscontents[index].subTitle,
//                             style: GoogleFonts.montserrat(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w300,
//                               color: Colors.black,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectx/model/directors_card_model.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({Key? key, required this.size, required this.directorscontents})
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
          color: Colors.green,
          height: size.height,
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Text(
                      'AULC LAW COOPERATION',
                      style: GoogleFonts.cormorantGaramond(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'OUR MEMBERS',
                      style: GoogleFonts.montserrat(
                        letterSpacing: 4,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: directorscontents.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  //TODO: make this an actual network images
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.40,
                            child: Image.asset(
                              directorscontents[index].imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            directorscontents[index].title,
                            style: GoogleFonts.cormorantGaramond(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            directorscontents[index].subTitle,
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    
                    
                    
                    // SizedBox(
                    //   height: size.height * 0.4,
                    //   child: Hero(
                    //     tag: directorscontents[index].title,
                    //     child: Image.asset(
                    //       directorscontents[index].imagePath,
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                  );
                },
              ),
            ],
          ),
        ),),);
  }
}
