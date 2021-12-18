import 'package:flutter/material.dart';

import './favourite_screen.dart';
import './categories_screen.dart';

import '../widgets/main_drawer.dart';
import '../dummy_data.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': const CategoriesScreen(dummyCategories: dummyCategories),
      'title': 'Categories'
    },
    {'page': const FavouritesScreen(), 'title': 'Your Favourite'}
  ];
  int _selectedIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_pages[_selectedIndex]['title'] as String),
      ),
      body: _pages[_selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedIndex,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedIconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.secondary),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.star_border_outlined), label: 'Favourites')
        ],
      ),
    );
  }
}
