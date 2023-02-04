import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:projectx/util/constants.dart';
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

    
    return Scaffold(
      //appBar: PreferredSizeWidget?(),
      drawer: const Drawer(),
      body: SliverPersistentHeader(
        pinned: true,
        floating: true,
        delegate: _SliverDelegate(
          child: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, int index) {
               return Container(color: Colors.blue, height: 150.0,);
              },
            childCount: 10,),
          ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       //custom appbar
      //       Row(children: [
      //         const Icon(Icons.more),
      //         Text(
      //           'AULC',
      //           //AULC is short for adeleke university law clinic
      //           style: GoogleFonts.cormorantGaramond(
      //             color: kPrimaryColor
      //           ),
      //           //GoogleFonts.style(),
      //         ),

      //       ]),
      //       //landing/homepage background image
      //       Container(
      //        height: size.height * 0.9,
      //        width: size.width,
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(image: AssetImage(''))
      //       ),
      //       ),
      //     ],
      //   ),
      // ),
        ),
      ), 
    );
  }
}


class _SliverDelegate implements SliverPersistentHeaderDelegate {
  _SliverDelegate({
    this.minHeight = 40.0,
    this.maxHeight = 56.0,
    required this.child,
  });
final double minHeight;
  final double maxHeight;
  final Widget child;
@override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }
@override
  double get maxExtent => math.max(maxHeight, minHeight);
@override
  double get minExtent => minHeight;
@override
  bool shouldRebuild(_SliverDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
@override
  Null get snapConfiguration => null;
@override
  Null get stretchConfiguration => null;

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration => throw UnimplementedError();

  @override
  // TODO: implement vsync
  TickerProvider? get vsync => throw UnimplementedError();
  
}