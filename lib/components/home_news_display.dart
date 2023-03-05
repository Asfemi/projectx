import 'package:flutter/material.dart';

import '../model/blogmodel.dart';
import '../screens/blog_screen.dart';

class HomeNewsDisplay extends StatelessWidget {
  const HomeNewsDisplay({
    super.key,
    required this.size,
    required this.blogcontents,
  });

  final Size size;
  final List<BlogContent> blogcontents;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.amber,
      height: size.height,
      child: ListView.builder(
          //rather than using a listview just use a column plus a custom widget
          //later choose to go with the existing structure
          itemCount: blogcontents.length,
          itemBuilder: (context, index) {
            //instead of using the if statement here
            //you a for statement to creat a list with four Elements
            //and just use it normally,
            // if (index != 3) {
            return //blog reads
                InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BlogScreen()),
                );
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                height: size.height * 0.33,
                margin: const EdgeInsets.only(left: 40, right: 40),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image(
                        image: AssetImage(
                          blogcontents[index].imagePath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(40, 5, 10, 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              blogcontents[index].title,
                              style: const TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 30),
                            Text(
                              blogcontents[index].subTitle,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
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
    );
  }
}
