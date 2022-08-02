import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/model/model.dart';
import 'package:recipeapp/data/data.dart';

class FavScreen extends StatefulWidget {
  static const routeName = 'fav-screen';
  FavScreen({Key? key}) : super(key: key);

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  bool click = false;

  // final RecipeItem item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Favorites',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello',
              //item.title
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              icon: (click)
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
              onPressed: () {
                setState(() {
                  click = !click;
                });
              },
            )
          ],
        ));
  }
}
