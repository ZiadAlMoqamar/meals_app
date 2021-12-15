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
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
          
          child: Text(title!),
      padding: const EdgeInsets.all(15),
    ));
  }
}
