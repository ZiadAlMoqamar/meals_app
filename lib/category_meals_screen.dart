import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  //final String? categoryId;
  //final String? categoryTitle;
  //const CategoryMealsScreen({Key? key,@required this.categoryId, @required this.categoryTitle }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String?, String?>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'] ;
    return Scaffold(
      appBar: AppBar(
        title:  Text(categoryTitle!),
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return ListTile();
      },
      itemCount: dummyMeals.length,),
    );
  }
}
