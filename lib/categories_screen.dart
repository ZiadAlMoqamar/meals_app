import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category>? dummyCategories;
  const CategoriesScreen({Key? key, @required this.dummyCategories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("DeliMeal"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        itemBuilder: (BuildContext ctx, int index) {
          return CategoryItem(
              title: dummyCategories![index].title,
              color: dummyCategories![index].color,
              id: dummyCategories![index].id,);
        },
        itemCount: dummyCategories!.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined), label: 'favourites')
        ],
      ),
    );
  }
}
