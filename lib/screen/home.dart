import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:recipeapp/screen/fav.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/data/data.dart';
import 'package:recipeapp/model/model.dart';
import 'package:recipeapp/widgets/grid.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<RecipeItem> items = dUMMYITEMS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            '        RECIPE APP',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavScreen()));
              },
              icon: Icon(Icons.favorite_border_outlined),
              tooltip: 'Open Favorites',
            )
          ],
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(12),
          child: GridView.builder(
              itemCount: items.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1.1,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 13),
              itemBuilder: (context, index) {
                return GridItem(item: items[index]);
              }),
        ));
  }
}
