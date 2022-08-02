import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/model/model.dart';

class GridItem extends StatelessWidget {
  final RecipeItem item;

  GridItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'item-screen', arguments: item);
      },
      child: GridTile(
        header: Container(
          color: Colors.lime[300],
          padding: EdgeInsets.all(1),
          child: Text(
            item.duration.toString() + ' mins',
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        child: Image.network(item.imageUrl, fit: BoxFit.cover),
        footer: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            color: Colors.lime,
          ),
          padding: EdgeInsets.all(3),
          child: Text(
            item.title,
            textAlign: TextAlign.right,
            softWrap: true,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
