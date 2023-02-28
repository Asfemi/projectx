import 'package:flutter/material.dart';
import 'package:projectx/model/directors_card_model.dart';

class HomeEndDrawerWidget extends StatelessWidget {
  const HomeEndDrawerWidget({
    super.key,
    required this.size,
    required this.directorscontents,
  });

  final Size size;
  final List<DirectorsCardContent> directorscontents;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.7,
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

          ],)
        ),
      ),
    );
  }
}
