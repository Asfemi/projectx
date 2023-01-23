import 'package:flutter/material.dart';
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
          Row(children: const [
            Icon(Icons.more),
            Text(
              'AULC',
              // ignore: todo
              //TODO: set the primary color and add it here
              style: TextStyle(color: Colors.teal)
              //GoogleFonts.style(),
            ),
          ]),
          Container(),
        ],
      ),
    );
  }
}
