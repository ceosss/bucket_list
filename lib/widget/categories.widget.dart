import 'package:bucket_list/widget/category_card.widget.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      shrinkWrap: true,
      children: [
        CategoryCard(),
        CategoryCard(),
        CategoryCard(),
        CategoryCard(),
        CategoryCard(),
        CategoryCard(),
      ],
    );
  }
}

List<String> categoriesData = [
  "all",
  "adventure",
  "career",
  "fitness",
  "hobbies",
  "travel",
];
