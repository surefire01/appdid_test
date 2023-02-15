import 'package:appdid_test/models/categories.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            category.strCategory,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Image.network(category.strCategoryThumb),
          const SizedBox(height: 10),
          Text(
            category.strCategoryDescription,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
          )
        ]),
      ),
    );
  }
}
