import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  static const routeName = '/meal-details';
  const MealDetailsScreen({Key? key}) : super(key: key);

  Widget buildSectionTitle(BuildContext context, String title) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  Widget buildListViewBuilder(BuildContext context, List<String> list) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10)),
      height: 250,
      width: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index) => Card(
          margin: const EdgeInsets.all(8),
          color: ThemeData.light().secondaryHeaderColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(list[index]),
          ),
        ),
        itemCount: list.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = dummyMeals.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              selectedMeal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          buildSectionTitle(context, 'Ingredients'),
          buildListViewBuilder(context, selectedMeal.ingredients),
          buildSectionTitle(context, 'Steps'),
          buildListViewBuilder(context, selectedMeal.steps)
        ],
      ),
    );
  }
}