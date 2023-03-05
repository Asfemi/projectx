import 'package:flutter/material.dart';
import 'package:projectx/model/directors_card_model.dart';

class HomeDrawerWidget extends StatelessWidget {
  const HomeDrawerWidget({
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
        ),
        child: Container(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: directorscontents.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              //TODO: make this an actual network images
              return Column(
                children: [
                  SizedBox(
                    height: size.height * 0.33,
                    child: Image.asset(directorscontents[index].imagePath),
                  ),
                  Text(directorscontents[index].title),
                  SizedBox(height: 20),
                  Text(directorscontents[index].subTitle),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
