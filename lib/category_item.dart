import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? title;
  final Color? color;
  const CategoryItem({Key? key, @required this.title, @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color!.withOpacity(0.3),color!.withOpacity(0.7), color!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        color: color,
        borderRadius:  const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Text(title!, style: Theme.of(context).textTheme.headline6,),
      padding: const EdgeInsets.all(15),
    ));
  }
}
