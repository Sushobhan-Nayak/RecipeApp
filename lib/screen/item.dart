import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/model/model.dart';

class ItemScreen extends StatefulWidget {
  static const routeName = 'item-screen';
  ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as RecipeItem;
    return Scaffold(
        appBar: AppBar(
            title: Text(
              item.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: (toggle)
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite,
                          color: Colors.black,
                        ),
                  tooltip: 'To Favorite',
                  onPressed: () {
                    setState(() {
                      toggle = !toggle;
                    });
                  })
            ]),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 5,
                )),
                child: Image.network(
                  item.imageUrl,
                  fit: BoxFit.cover,
                  height: 230,
                )),
            SizedBox(
              width: double.infinity,
              child: Text(
                '      DURATION:  ' + item.duration.toString() + ' mins',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
                child: Container(
              width: double.infinity,
              color: Colors.lime[300],
              child: Text(
                'INGREDIENTS:',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 130,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.ingredients[index],
                      ),
                      Divider()
                    ],
                  );
                },
                itemCount: item.ingredients.length,
              ),
            ),
            SizedBox(
                child: Container(
              width: double.infinity,
              color: Colors.lime[300],
              child: Text(
                'STEPS:',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.steps[index],
                      ),
                      Divider()
                    ],
                  );
                },
                itemCount: item.steps.length,
              ),
            ),
          ],
        ));
  }
}
