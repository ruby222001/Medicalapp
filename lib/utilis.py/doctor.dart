import 'package:flutter/material.dart';
class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String categoryName;

  const CategoryCard({
    Key? key,
    required this.imagePath,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 30,
          ),
          Text(categoryName),
        ],
      ),
    );
  }
}
