import 'package:flutter/material.dart';
import 'package:recipeapp/screen/home.dart';
import 'package:recipeapp/screen/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(primarySwatch: Colors.cyan),
      routes: {
        '/': (context) => Home(),
        'item-screen': (context) => ItemScreen()
      },
    );
  }
}
