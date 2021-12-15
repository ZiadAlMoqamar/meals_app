import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category>? dummyCategories;
  const CategoriesScreen({Key? key, @required this.dummyCategories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20),
          itemBuilder: (BuildContext ctx, int index) {
            return CategoryItem(
                title: dummyCategories![index].title,
                color: dummyCategories![index].color);
          },
          itemCount: dummyCategories!.length,),
    );
  }
}
