import 'package:projectx/model/blogmodel.dart';
import 'package:projectx/model/directors_card_model.dart';

class Utilities {
  static List<BlogContent>  blogContentList() {
    return [
      BlogContent(
        imagePath: 'lib/assets/images/a.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      BlogContent(
        imagePath: 'lib/assets/images/e.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      BlogContent(
        imagePath: 'lib/assets/images/h.jpg',
        title: 'Title',
        subTitle:  "subTitle",
      ),
      // BlogContent(
      //     imagePath: 'lib/assets/images/j.jpg',
      //   title: 'Title',
      //   subTitle: "subTitle",
      // ),
      // BlogContent(
      //     imagePath: 'lib/assets/images/n.jpg',
      //   title: 'Title',
      //   subTitle: "subTitle",
      // ),
      // BlogContent(
      //     imagePath: 'lib/assets/images/kiss.jpg',
      //   title: 'Title',
      //   subTitle: "subTitle",
      // ),
      // BlogContent(
      //    imagePath: 'lib/assets/images/lip.jpg',
      //   title: 'Title',
      //   subTitle: "subTitle",
      // ),
      // BlogContent(
      //    imagePath: 'lib/assets/images/gad.jpg',
      //   title: 'Title',
      //   subTitle: "subTitle",
      // ),
    ];
  }

  static List<DirectorsCardContent> directorsCardList() {
    return [
      DirectorsCardContent(
          imagePath: 'lib/assets/images/j.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      DirectorsCardContent(
          imagePath: 'lib/assets/images/n.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      DirectorsCardContent(
          imagePath: 'lib/assets/images/kiss.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      DirectorsCardContent(
        imagePath: 'lib/assets/images/a.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      DirectorsCardContent(
        imagePath: 'lib/assets/images/e.jpg',
        title: 'Title',
        subTitle: "subTitle",
      ),
      DirectorsCardContent(
        imagePath: 'lib/assets/images/h.jpg',
        title: 'Title',
        subTitle:  "subTitle",
      ),
      
    ];
  }
}
