import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  const FiltersScreen({ Key? key }) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget buildSwitchTile(String title, String subtitle, bool currentValue,  Function(bool newValue) updateValue){
    return SwitchListTile(title:  Text(title),
              value: currentValue,
              subtitle:  Text(subtitle),
              onChanged: updateValue,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text('Adjust your meal selection',
            style: Theme.of(context).textTheme.headline6,),
          ),
          Expanded(child: ListView(
            children: [
              buildSwitchTile('Gluten-free', 'Only include gluten-free meals.',_glutenFree,(newValue){
                setState(() {
                _glutenFree =newValue;
                });
              }),
              buildSwitchTile('Vegeterian-free', 'Only include vegetarian meals', _vegetarian, (newValue){
                setState(() {
                _vegetarian =newValue;
                });
              }),
              buildSwitchTile('Vegan', 'Only include vegan meals', _vegan, (newValue){
                setState(() {
                _vegan =newValue;
                });
              }),
              buildSwitchTile('Lactose-free', 'Only include lactose-free meals', _lactoseFree, (newValue){
                setState(() {
                _lactoseFree =newValue;
                });
              })
            ],
          ))
        ],
      ),
    );
  }
}