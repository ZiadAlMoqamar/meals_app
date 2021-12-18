import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapFunction ){
    return  ListTile(
            leading: Icon(icon, size: 26,),
            title: Text(
              title,
              style: const TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: tapFunction,
          );
  }
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.primary,
            child: const Text(
              'Cooking UP!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        buildListTile('Meals', Icons.restaurant_menu_outlined, (){ Navigator.of(context).pushNamed('/');}),
        buildListTile('Filters', Icons.settings, (){Navigator.of(context).pushNamed(FiltersScreen.routeName);})
        ],
      ),
    );
  }
}
